use actix::*;
use actix_web::*;
use actix_ws::*;
use futures_util::StreamExt as _;
use std::{sync::Mutex, time::Duration};

struct HostDevice {
    host_id: String,
    client_addrs: Vec<Addr<ClientDevice>>,
}

struct ClientDevice {
    client_id: String,
    host_addr: Option<Addr<HostDevice>>,
}

impl Actor for HostDevice {
    type Context = Context<Self>;
}

impl Actor for ClientDevice {
    type Context = Context<Self>;
}

struct AppState {
    hosts: Mutex<Vec<Addr<HostDevice>>>,
    clients: Mutex<Vec<Addr<ClientDevice>>>,
}

async fn test() -> impl Responder {
    println!("test() called");
    "this is a triumph"
}

// register an actor (device) + save addr in AppState
async fn register(
    data: web::Data<AppState>,
    req: HttpRequest,
    stream: web::Payload,
) -> Result<HttpResponse, Error> {
    println!("register() called");
    let (res, mut session, stream) = actix_ws::handle(&req, stream)?;

    let mut stream = stream
        .aggregate_continuations()
        .max_continuation_size(2_usize.pow(20));

    rt::spawn(async move {
        while let Some(msg) = stream.next().await {
            match msg {
                Ok(AggregatedMessage::Text(text)) => {
                    let meow = text.parse::<String>().unwrap();
                    let meow: String = meow.chars().filter(|c| !c.is_whitespace()).collect();
                    println!("parsed text: {:?}", meow);
                    match meow.as_str() {
                        "host" => {
                            println!("registering host...");
                            let ctx = Context::<HostDevice>::new();
                            let actor = HostDevice {
                                host_id: "meow".to_string(),
                                client_addrs: vec![],
                            };
                            let addr = ctx.run(actor);
                            println!("registered host {addr:?}");

                            let mut host_list = data.hosts.lock().unwrap();
                            host_list.push(addr);

                            println!("new host list: {host_list:?}");
                        }
                        "client" => {
                            println!("registering client...");
                            let ctx = Context::<ClientDevice>::new();
                            let actor = ClientDevice {
                                client_id: "mrrp".to_string(),
                                host_addr: None,
                            };
                            let addr = ctx.run(actor);
                            println!("registered client {addr:?}");

                            let mut client_list = data.clients.lock().unwrap();
                            client_list.push(addr);

                            println!("new client list: {client_list:?}");
                        }
                        _ => {
                            println!("register(): parsed string does not match");
                        }
                    }
                }
                _ => {
                    println!("register(): received msg is not text");
                }
            }
        }
    });

    println!("register() -> {res:?}");
    Ok(res)
}

async fn connect(
    data: web::Data<AppState>,
    req: HttpRequest,
    stream: web::Payload,
) -> Result<HttpResponse, Error> {
    println!("connect() called");
    let (res, mut session, stream) = actix_ws::handle(&req, stream)?;

    let mut stream = stream
        .aggregate_continuations()
        .max_continuation_size(2_usize.pow(20));
    
    let session2 = session.clone();

    rt::spawn(async move {
        while let Some(msg) = stream.next().await {
            match msg {
                Ok(AggregatedMessage::Text(text)) => {
                    let meow = text.parse::<String>().unwrap();
                    println!("{meow}");
                    let mut host_list = data.hosts.lock().unwrap();

                    // for host in host_list.iter() {}
                }
                _ => {
                    println!("connect(): received msg is not text");
                }
            }
        }
    });

    Ok(res)
}


#[get("/host/{host_id}")]
async fn host(
    host_id: web::Path<String>,
    data: web::Data<AppState>,
    req: HttpRequest,
    stream: web::Payload,
) -> Result<HttpResponse, Error> {
    println!("host() called");
    println!("host_id: {:?}", host_id);
    let (res, mut session, mut stream) = actix_ws::handle(&req, stream)?;

    data.hosts.lock().unwrap().push(req.peer_addr());
    //let mut stream = stream
        // .aggregate_continuations()
        // .max_continuation_size(2_usize.pow(20));

    rt::spawn(async move {
            while let Some(Ok(msg)) = stream.next().await {
                match msg {
                    actix_ws::Message::Ping(bytes) => {
                        if session.pong(&bytes).await.is_err() {
                            return;
                        }
                    }
                    actix_ws::Message::Text(msg) => println!("Got text: {msg}"),
                    _ => break,
                }
            }
    
            let _ = session.close(None).await;
    
    });
    // let data = stream.next().await;
    // println!("data: {data:?}");
    // session.close(None).await.unwrap();
    Ok(res)
}

#[actix_web::main]
async fn main() -> std::io::Result<()> {
    let data = web::Data::new(AppState {
        hosts: Mutex::new(vec![]),
        clients: Mutex::new(vec![]),
    });

    HttpServer::new(move || {
        App::new().app_data(data.clone()).service(
            web::scope("/api")
                .route("/test", web::get().to(test))
                .route("/register", web::get().to(register))
                .route("/connect", web::get().to(connect)),
        ).service(
            host
        )
    })
    .bind(("127.0.0.1", 8080))?
    .run()
    .await
}
