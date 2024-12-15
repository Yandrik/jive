use actix::prelude::*;
use actix_web::{web, App, Error, HttpRequest, HttpResponse, HttpServer};
use actix_ws::{Closed, Message, MessageStream, Session};
use core::panic;
use futures::future::LocalBoxFuture;
use futures_util::StreamExt;
use std::{collections::HashMap, time::Duration};
use std::sync::Mutex;
use tokio::sync::mpsc::{self, Receiver, Sender};
use tokio_bichannel::Channel;
use log::{info, warn, error, debug};

async fn handle_websocket_messages(
    mut session: Session,
    mut msg_stream: MessageStream,
    mut tx: Sender<Message>,
    mut rx: Receiver<Message>,
    heartbeat_interval: Duration,
) {
    debug!("Starting websocket message handler");
    loop {
        tokio::select! {
            Some(Ok(msg)) = msg_stream.next() => {
                match msg {
                    Message::Text(_) | Message::Binary(_) | Message::Continuation(_) => {
                        debug!("Forwarding message: {:?}", msg);
                        if let Err(e) = tx.send(msg).await {
                            error!("Failed to forward message: {}", e);
                        }
                    }
                    Message::Close(_) => {
                        info!("Received close message");
                        if let Err(e) = tx.send(msg).await {
                            error!("Failed to forward close message: {}", e);
                        }
                        return;
                    }
                    Message::Ping(bytes) => {
                        debug!("Received ping message");
                        if session.pong(&bytes).await.is_err() {
                            error!("Failed to send pong response");
                            if let Err(e) = tx.send(Message::Close(None)).await {
                                error!("Failed to send close message: {}", e);
                            }
                            return;
                        }
                    }
                    _ => {
                        debug!("Received unhandled message type");
                    }
                }
            }
            Some(msg) = rx.recv() => {
                match msg {
                    Message::Text(text) => {
                        debug!("Sending text message");
                        if let Err(Closed) = session.text(text).await {
                            error!("Failed to send text message as channel is closed");
                            return;
                        }
                    }
                    Message::Binary(data) => {
                        debug!("Sending binary message");
                        if let Err(Closed) = session.binary(data).await {
                            error!("Failed to send binary message");
                            return;
                        }
                    }
                    Message::Continuation(item) => {
                        debug!("Sending continuation message");
                        if let Err(Closed) = session.continuation(item).await {
                            error!("Failed to send continuation message");
                            return;
                        }                    }
                    Message::Close(_) => {
                        info!("Received close message from channel");
                        return;
                    }
                    _ => {
                        warn!("Received unexpected message type");
                    }
                }
            }
            _ = tokio::time::sleep(heartbeat_interval) => {
                debug!("Sending heartbeat ping");
                if session.ping(b"").await.is_err() {
                    error!("Failed to send heartbeat ping");
                    return;
                }
            }
            else => {
                info!("Websocket handler terminated");
                return;
            }
        }
    }
}

struct AppState {
    connections: Mutex<HashMap<String, Vec<Receiver<(Sender<Message>, Receiver<Message>)>>>>,
}

struct ProxyConnection {
    host_sess: Session,
    client_sess: Option<Session>,
    host_stream: MessageStream,
    client_stream: Option<MessageStream>,
}

async fn host_ws(
    req: HttpRequest,
    stream: web::Payload,
    host_id: web::Path<String>,
    data: web::Data<AppState>,
) -> Result<HttpResponse, Error> {
    let host_id = host_id.into_inner();
    info!("New host connection request for ID: {}", host_id);

    let id = rand::random::<u64>();
    debug!("Generated session ID: {}", id);

    let (response, mut session, mut msg_stream) = actix_ws::handle(&req, stream)?;
    info!("Websocket connection established for host");

    let (channel_tx, channel_rx) = mpsc::channel(1);

    {
        let mut connections = data.connections.lock().unwrap();
        let vec = connections.entry(host_id.clone()).or_insert(vec![]);
        vec.push(channel_rx);
        debug!("Added host connection to connection pool");
    }

    actix_web::rt::spawn(async move {
        let (host_to_device_tx, mut host_to_device_rx) = mpsc::channel(100);
        let (device_to_host_tx, mut device_to_host_rx) = mpsc::channel(100);

        if let Err(e) = channel_tx.send((device_to_host_tx, host_to_device_rx)).await {
            error!("Failed to send channel pair: {}", e);
        }

        handle_websocket_messages(session.clone(), msg_stream, host_to_device_tx.clone(), device_to_host_rx, Duration::from_secs(3)).await;

        debug!("Sending close message to device");
        if let Err(e) = host_to_device_tx.send(Message::Close(None)).await {
            error!("Failed to send close message: {}", e);
        }

        if let Err(e) = session.close(None).await {
            error!("Error closing host session: {}", e);
        }
        info!("Host connection closed for ID: {}", host_id);
    });

    Ok(response)
}

async fn join_ws(
    req: HttpRequest,
    stream: web::Payload,
    host_id: web::Path<String>,
    data: web::Data<AppState>,
) -> Result<HttpResponse, Error> {
    let host_id = host_id.into_inner();
    info!("New client join request for host ID: {}", host_id);

    let (mut device_to_host_tx, mut host_to_device_rx) = {
        let mut connections = data.connections.lock().unwrap();

        let connections = connections.get_mut(&host_id);
        if connections.is_none() {
            warn!("No host found for ID: {}", host_id);
            return Ok(HttpResponse::NotFound().finish());
        }

        debug!("Found connections for host: {:?}", connections);
        if let Some(mut recv) = connections.unwrap().pop() {
            match recv.recv().await {
                Some((host_send, client_recv)) => {
                    debug!("Successfully obtained channel pair");
                    (host_send, client_recv)
                }
                None => {
                    error!("Failed to receive channel pair!");
                    return Ok(HttpResponse::InternalServerError().finish());
                }
            }
        } else {
            warn!("No available connections for host ID: {}", host_id);
            return Ok(HttpResponse::Conflict().finish());
        }
    };

    let (response, mut session, mut msg_stream) = actix_ws::handle(&req, stream)?;
    info!("Websocket connection established for client");

    actix_web::rt::spawn(async move {
        handle_websocket_messages(session.clone(), msg_stream, device_to_host_tx.clone(), host_to_device_rx, Duration::from_secs(3)).await;

        info!("Client disconnected");
        if let Err(e) = device_to_host_tx.send(Message::Close(None)).await {
            error!("Failed to send close message to host: {}", e);
        }
        if let Err(e) = session.close(None).await {
            error!("Error closing client session: {}", e);
        }
    });

    Ok(response)
}

#[actix_web::main]
async fn main() -> std::io::Result<()> {
    env_logger::init();
    info!("Starting relay server");

    let app_state = web::Data::new(AppState {
        connections: Mutex::new(HashMap::new()),
    });
    debug!("Initialized application state");

    info!("Starting HTTP server on 0.0.0.0:8080");
    HttpServer::new(move || {
        App::new()
            .app_data(app_state.clone())
            .route("/host/{host_id}", web::get().to(host_ws))
            .route("/join/{host_id}", web::get().to(join_ws))
    })
    .bind("0.0.0.0:8080")?
    .run()
    .await
}