use actix::prelude::*;
use actix_web::{web, App, Error, HttpRequest, HttpResponse, HttpServer};
use actix_ws::{Message, MessageStream, Session};
use core::panic;
use futures::future::LocalBoxFuture;
use futures_util::StreamExt;
use std::{collections::HashMap, time::Duration};
use std::sync::Mutex;
use tokio::sync::mpsc::{self, Receiver, Sender};
use tokio_bichannel::Channel;

struct AppState {
    /// The list of connected hosts.
    ///
    /// ## Parameters
    /// HostID -> (HostChannel, ClientChannel)
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

    // if data.connections.lock().unwrap().contains_key(&host_id) {
    //     return Ok(HttpResponse::Conflict().finish());
    // }

    let (response, mut session, mut msg_stream) = actix_ws::handle(&req, stream)?;

    let (channel_tx, channel_rx) = mpsc::channel(1);

    {
        let mut connections = data.connections.lock().unwrap();
        let vec = connections.entry(host_id).or_insert(vec![]);
        vec.push(channel_rx);
    }

    actix_web::rt::spawn(async move {
        let (host_to_device_tx, mut host_to_device_rx) = mpsc::channel(100);
        let (device_to_host_tx, mut device_to_host_rx) = mpsc::channel(100);

        let _ = channel_tx
            .send((device_to_host_tx, host_to_device_rx))
            .await;

        loop {
            tokio::select! {
                Some(Ok(msg)) = msg_stream.next() => {
                    match msg {
                        Message::Text(_) | Message::Binary(_) | Message::Continuation(_) => {
                            let _ = host_to_device_tx.send(msg).await;
                        }
                        Message::Close(_) => {
                            // todo!("teardown");
                            let _ = host_to_device_tx.send(msg).await;
                            println!("TODO: teardown");
                            break
                        }
                        Message::Ping(bytes) => {
                            if session.pong(&bytes).await.is_err() {

                                let _ =  host_to_device_tx.send(Message::Close(None)).await;
                                let _ = session.close(None).await;
                                println!("TODO: teardown");
                                break;
                                // return;
                            }
                        }
                        _ => {}
                    }
                }
                Some(msg) = device_to_host_rx.recv() => {
                    match msg {
                        Message::Text(text) => {
                            let _ = session.text(text).await;
                        }
                        Message::Binary(data) => {
                            let _ = session.binary(data).await;
                        }
                        Message::Continuation(item) => {
                            let _ = session.continuation(item).await;
                        }
                        Message::Close(reason) => {
                            // TODO: proper teardown
                            let _ = session.close(reason).await;
                            break;
                        }
                        _ => {
                            println!("Received non-text message");
                        }
                    }
                }
                else => break
            }
        }

        println!("Host disconnected");
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

    let (mut device_to_host_tx, mut host_to_device_rx) = {
        let mut connections = data.connections.lock().unwrap();

        // if !connections.contains_key(&host_id) {
        //     return Ok(HttpResponse::NotFound().finish());
        // }

        let connections = connections.get_mut(&host_id);
        if connections.is_none() {
            return Ok(HttpResponse::NotFound().finish());
        }
        // TODO: timeout maybe? Or smth like that?

        
        println!("{:?}", connections);
        if let Some(mut recv) = connections.unwrap().pop() {
            let (host_send, client_recv) =
                recv.recv().await.expect("BUG: channel-send-channel closed");
            (host_send, client_recv)
        } else {
            return Ok(HttpResponse::Conflict().finish());
        }
    };

    let (response, mut session, mut msg_stream) = actix_ws::handle(&req, stream)?;

    actix_web::rt::spawn(async move {
        loop {
            tokio::select! {
                Some(Ok(msg)) = msg_stream.next() => {
                    match msg {
                        Message::Text(_) | Message::Binary(_) | Message::Continuation(_) => {
                            let _ = device_to_host_tx.send(msg).await;
                        }
                        Message::Close(_) => {
                            let _ = device_to_host_tx.send(msg).await;
                            // todo!("teardown");
                            println!("Received close message");
                            println!("TODO: teardown");
                            break
                        }
                        Message::Ping(bytes) => {
                            if session.pong(&bytes).await.is_err() {
                                let _ =  device_to_host_tx.send(Message::Close(None)).await;
                                let _ = session.close(None).await;
                                println!("TODO: teardown");
                                break;
                            }
                        }
                        _ => {}
                    }
                }
                Some(msg) = host_to_device_rx.recv() => {
                    match msg {
                        Message::Text(text) => {
                            let _ = session.text(text).await;
                        }
                        Message::Binary(data) => {
                            let _ = session.binary(data).await;
                        }
                        Message::Continuation(item) => {
                            let _ = session.continuation(item).await;
                        }
                        Message::Close(reason) => {
                            println!("Received close message");
                            // TODO: proper teardown
                            let _ = session.close(reason).await;
                            return;
                        }
                        _ => {
                            println!("Received non-text message");
                        }
                    }
                }
                else => break
            }
        }

        println!("Client disconnected");
    });

    Ok(response)
}

#[actix_web::main]
async fn main() -> std::io::Result<()> {
    let app_state = web::Data::new(AppState {
        connections: Mutex::new(HashMap::new()),
    });

    HttpServer::new(move || {
        App::new()
            .app_data(app_state.clone())
            .route("/host/{host_id}", web::get().to(host_ws))
            .route("/join/{host_id}", web::get().to(join_ws))
    })
    .keep_alive(Duration::from_secs(10))
    .bind("0.0.0.0:8080")?
    .run()
    .await
}
