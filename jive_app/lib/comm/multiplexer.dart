import 'dart:async';
import 'dart:convert';
import 'package:anyhow/anyhow.dart';
import 'package:async/async.dart' as async;
import 'package:collection/collection.dart';
import 'package:jive_app/comm/device_comm.dart';
import 'package:jive_app/comm/transport.dart';
import 'package:jive_app/logger.dart';
import 'package:jive_app/utils/consts.dart';

class ClientConnection {
  final Transport transport;
  final Client client;
  DateTime lastActive;

  ClientConnection(this.transport, this.client) : lastActive = DateTime.now();
}

/// Controls the host side of the communication, managing multiple client connections
/// and message broadcasting capabilities.
class HostController {
  static const clientTimeout = Duration(seconds: 45);
  Timer? _cleanupTimer;
  async.CancelableOperation? _acceptLoop;
  Completer<void>? _waitForFirstMessageCompleter;

  /// List of active client connections with their associated transport layers
  List<ClientConnection> clients = [];

  bool _disposed = false;

  /// The server address to connect to
  final Uri serverAddr;

  /// Host information for this controller
  final Host host;

  /// Callback function to handle incoming client messages
  final void Function(Client, DeviceCommand) _handleMessage;

  /// Creates a new HostController with the specified server address, host information,
  /// and message handler.
  HostController(this.serverAddr, this.host, this._handleMessage) {
    _startCleanupTimer();
  }

  void _startCleanupTimer() {
    _cleanupTimer?.cancel();
    _cleanupTimer = Timer.periodic(Duration(seconds: 15), (timer) {
      _cleanupTimedOutClients();
    });
  }

  void _cleanupTimedOutClients() {
    final now = DateTime.now();
    for (var conn in clients) {
      if (conn.transport.isConnected) {
        conn.lastActive = now;
      }
    }
    clients.removeWhere((conn) {
      final isTimedOut = now.difference(conn.lastActive) > clientTimeout;
      if (isTimedOut) {
        logger.i(
            "Client ${conn.client.id} timed out after ${clientTimeout.inSeconds}s");
        conn.transport.dispose();
      }
      return isTimedOut;
    });
  }

  /// Handles incoming messages from clients.
  ///
  /// Deserializes the raw message and forwards it to the message handler callback.
  /// Logs any errors that occur during message processing.
  void handleMessage(Client client, dynamic rawMessage) {
    try {
      logger.d("Received message from client ${client.id}: $rawMessage");
      var message = DeviceCommand.fromJson(jsonDecode(rawMessage));

      // Update last active timestamp
      final clientConn =
          clients.firstWhere((conn) => conn.client.id == client.id);
      clientConn.lastActive = DateTime.now();

      _handleMessage(client, message);
    } catch (e) {
      logger.e("Error handling message from client ${client.id}: $e");
    }
  }

  Future<Result<void>> dispose() async {
    logger.i("Disposing host controller...");
    _disposed = true;
    _cleanupTimer?.cancel();
    _waitForFirstMessageCompleter?.completeError("HostController disposed");
    return await disposeAllClients();
  }

  Future<void> startConnectionLoop() async {
    logger.d("Starting connection loop with host id '${host.id}'...");
    _acceptLoop = async.CancelableOperation.fromFuture(Future(() async {
      while (true) {
        var result = await connectClientWsRelay();
        if (result.isErr()) {
          logger.w("Connection attempt failed, retrying in 2s...");
          await Future.delayed(Duration(seconds: 2));
        }
        if (_disposed) return;
      }
    }));
  }

  void stopConnectionLoop() {
    _acceptLoop?.cancel();
    _acceptLoop = null;
  }

  Future<Result<void>> connectClientWsRelay() async {
    final uri = "$SERVER_URI/host/${host.id}";
    logger.d("host connection on URL  '${uri}'...");
    var transport = WebSocketTransport(uri);
    return await connectClient(transport)
        .context("Failed to connect client at relay at $uri");
  }

  /// Establishes a new client connection and sets up message handling.
  ///
  /// Returns a Result indicating success or failure of the connection attempt.
  Future<Result<void>> connectClient(Transport transport) async {
    if (_disposed) return;

    if (_waitForFirstMessageCompleter != null &&
        !_waitForFirstMessageCompleter!.isCompleted) {
      _waitForFirstMessageCompleter!.completeError("Reconnect too early");
    }

    _waitForFirstMessageCompleter = Completer<void>();
    final completer = Completer<Result<void>>();
    final timeout = Duration(seconds: 10);

    onReceive(dynamic message) async {
      _waitForFirstMessageCompleter?.complete(null);
      DeviceCommand data;
      try {
        data = DeviceCommand.fromJson(jsonDecode(message));
      } catch (e) {
        logger.w("Failed to decode message: $e");
        return;
      }

      switch (data) {
        case Connect(client: var client):
          _handleMessage(client, data);

          // Check if the client ID already exists
          ClientConnection? existingConn = clients.firstWhereOrNull(
            (conn) => conn.client.id == client.id,
          );

          if (existingConn != null) {
            // Replace the old connection with the new one
            logger.i(
                "Client ${client.id} reconnected. Replacing old connection.");
            clients.remove(existingConn);
            await existingConn.transport.dispose();
            clients.add(ClientConnection(transport, client));
          } else {
            clients.add(ClientConnection(transport, client));
          }

          transport
              .onReceive((rawMessage) => handleMessage(client, rawMessage));
          var res =
              await transport.send(jsonEncode(HostResponse.connect(host)));
          if (res.isErr()) {
            transport.disconnect();
            completer.complete(res.context("Failed to send connect response"));
            return;
          }
          completer.complete(Ok(null));
          return;
        default:
          await transport.send(jsonEncode(
              HostResponse.error("Not connected yet. Connect first.")));
          break;
      }
    }

    transport.onReceive(onReceive);

    var res = await transport.connect();
    if (res.isErr()) return res.context("Failed to connect to transport");

    // Wait for any first message to arrive
    try {
      await _waitForFirstMessageCompleter!.future;
    } catch (e) {
      logger.w("Failed to receive first message from client: $e");
      await transport.dispose();
      return bail(
          "Failed to receive first message from client", StackTrace.current);
    }

    // Start the timeout
    return await completer.future.timeout(
      timeout,
      onTimeout: () async {
        await transport.dispose();
        return bail('Client connection timed out after ${timeout.inSeconds}s',
            StackTrace.current);
      },
    );
  }

  /// Sends a message to a specific client.
  ///
  /// Takes a Client and HostResponse, encodes the message as JSON,
  /// and sends it through the client's transport connection.
  /// Returns a Result indicating success or failure.
  Future<Result<void>> sendToClient(Client client, HostResponse message) async {
    Transport clientConnection;
    try {
      clientConnection = clients
          .firstWhere(
            (conn) => conn.client.id == client.id,
            orElse: () => throw Exception('Client not found: ${client.id}'),
          )
          .transport;
    } catch (e, st) {
      return bail(
          "Failed to find client ${client.name} (${client.id})'s connection: $e",
          st);
    }

    return await clientConnection.send(jsonEncode(message));
  }

  /// Broadcasts a message to all connected clients.
  ///
  /// Sends the specified HostResponse to every client in the connection list.
  Future<Result<void>> broadcast(HostResponse message) async {
    for (var conn in clients) {
      if (conn.transport.isConnected) {
        await conn.transport.send(jsonEncode(message));
      }
    }
    return Ok(null);
  }

  /// Disconnects a specific client and removes it from the active clients list.
  Future<Result<void>> disconnectClient(Client client) async {
    final index = clients.indexWhere((conn) => conn.client.id == client.id);
    if (index != -1) {
      final transport = clients[index].transport;
      await transport.dispose();
      clients.removeAt(index);
    }
    return Ok(null);
  }

  /// Disconnects all currently connected clients and clears the clients list.
  Future<Result<void>> disposeAllClients() async {
    for (var conn in clients) {
      await conn.transport.dispose();
    }
    clients.clear();
    return Ok(null);
  }

  /// Checks if a specific client is currently connected.
  bool isClientConnected(Client client) {
    return clients.any((conn) => conn.client.id == client.id);
  }

  /// Removes any clients whose transport layer is no longer connected.
  void cleanupDisconnectedClients() {
    clients.removeWhere((conn) => !conn.transport.isConnected);
  }
}

/// Controls the client side of the communication, managing a single connection
/// to a host at a time.
class ClientController {
  static const reconnectDelay = Duration(seconds: 2);
  static const maxReconnectAttempts = 5;

  final Uri serverAddr;
  final Client client;
  Transport? _transport;
  Host? _connectedHost;
  final void Function(HostResponse) _handleResponse;

  Timer? _reconnectTimer;
  int _reconnectAttempts = 0;
  bool _shouldReconnect = false;

  /// Creates a new ClientController with the specified server address, client information,
  /// and response handler.
  ClientController(this.serverAddr, this.client, this._handleResponse);

  /// Indicates whether the client is currently connected to a host
  bool get isConnected => _transport?.isConnected ?? false;

  /// Returns the currently connected host, if any
  Host? get currentHost => _connectedHost;

  void _startReconnection() {
    if (!_shouldReconnect || _reconnectAttempts >= maxReconnectAttempts)
      return; // TODO: some kinda notification

    _reconnectTimer?.cancel();
    _reconnectTimer = Timer(reconnectDelay, () async {
      _reconnectAttempts++;
      logger.i('Attempting to reconnect (attempt $_reconnectAttempts)...');

      if (_connectedHost != null) {
        var result = await connectToHostWsRelay(_connectedHost!.id);
        if (result.isOk()) {
          _reconnectAttempts = 0;
          _shouldReconnect = false;
        } else {
          _startReconnection();
        }
      }
    });
  }

  Future<Result<void>> connectToHostWsRelay(String hostId) async {
    final uri = "$SERVER_URI/join/$hostId";
    var transport = WebSocketTransport(uri);
    return await connectToHost(transport)
        .context("Failed to connect to relay at $uri");
  }

  /// Connects to a specific host using the provided transport.
  ///
  /// Automatically disconnects from any existing host connection before
  /// establishing the new connection.
  Future<Result<void>> connectToHost(Transport transport) async {
    if (_transport != null) {
      await disconnect();
    }

    _shouldReconnect = true;
    final connectionCompleter = Completer<Result<void>>();
    final timeout = Duration(seconds: 10);

    _transport = transport;

    _transport!.onReceive((rawMessage) {
      HostResponse response;
      try {
        response = HostResponse.fromJson(jsonDecode(rawMessage));
      } catch (e) {
        logger.w('Failed to decode host response: $e');
        return;
      }

      if (response case ConnectResponse(host: var host)) {
        _handleResponse(response);
        _connectedHost = host;
        if (!connectionCompleter.isCompleted) {
          connectionCompleter.complete(Ok(null));
        }
      }
      _handleResponse(response);
    });

    var connectResult = await _transport!.connect();
    if (connectResult.isErr()) {
      return connectResult;
    }

    await _transport!.send(jsonEncode(DeviceCommand.connect(client)));

    final res = await connectionCompleter.future.timeout(
      timeout,
      onTimeout: () async {
        await disconnect();
        return bail('Connection timed out after ${timeout.inSeconds}s',
            StackTrace.current);
      },
    );

    if (res.isOk()) {
      _transport!.onDisconnect(() {
        _startReconnection();
      });
    }

    return res;
  }

  /// Disconnects from the current host and cleans up the connection state.
  Future<Result<void>> disconnect() async {
    _shouldReconnect = false;
    _reconnectTimer?.cancel();
    if (_transport != null) {
      var result = await _transport!.disconnect();
      await _transport!.dispose();
      _transport = null;
      _connectedHost = null;
      return result;
    }
    return Ok(null);
  }

  /// Disposes of the multiplexer and cleans up any resources.
  Future<void> dispose() async {
    await disconnect();
  }

  /// Sends a command to the connected host.
  ///
  /// Returns an error if not connected to any host.
  Future<Result<void>> sendCommand(DeviceCommand command) async {
    if (_transport == null || !isConnected) {
      return bail('Not connected to any host', StackTrace.current);
    }
    return _transport!.send(jsonEncode(command));
  }
}
