import 'dart:convert';
import 'package:anyhow/anyhow.dart';
import 'package:jive_app/comm/device_comm.dart';
import 'package:jive_app/comm/transport.dart';
import 'package:jive_app/logger.dart';
import 'package:logger/logger.dart';

/// Controls the host side of the communication, managing multiple client connections
/// and message broadcasting capabilities.
class HostController {
  /// List of active client connections with their associated transport layers
  List<(Transport, Client)> clients = [];

  /// The server address to connect to
  final Uri _serverAddr;

  /// Host information for this controller
  final Host _host;

  /// Callback function to handle incoming client messages
  final void Function(Client, DeviceCommand) _handleMessage;

  /// Creates a new HostController with the specified server address, host information,
  /// and message handler.
  HostController(this._serverAddr, this._host, this._handleMessage);

  Future<Result<void>> connectClientWsRelay() async {
    var transport = WebSocketTransport(_serverAddr.toString());
    return await connectClient(transport);
  }

  /// Establishes a new client connection and sets up message handling.
  ///
  /// Returns a Result indicating success or failure of the connection attempt.
  Future<Result<void>> connectClient(Transport transport) async {
    var res = await transport.connect();
    if (res.isErr()) return res.context("Failed to connect to transport");

    onReceive(dynamic message) async {
      final data = DeviceCommand.fromJson(jsonDecode(message));
      print(data);
      switch (data) {
        case Connect(client: var client):
          clients.add((transport, client));
          transport
              .onReceive((rawMessage) => handleMessage(client, rawMessage));
          if (await transport
              .send(jsonEncode(HostResponse.connect(_host)))
              .isErr()) {
            // TODO: handle
          }

          break;
        default:
          var res = await transport.send(jsonEncode(
              HostResponse.error("Not connected yet. Connect first.")));
          break;
      }
    }

    transport.onReceive(onReceive);

    try {
      await transport.connect();
    } catch (e, stackTrace) {
      return bail(
          "Couldn't connect to relay server ($_serverAddr): $e", stackTrace);
    }
    return Ok(null);
  }

  /// Handles incoming messages from clients.
  ///
  /// Deserializes the raw message and forwards it to the message handler callback.
  /// Logs any errors that occur during message processing.
  void handleMessage(Client client, dynamic rawMessage) {
    try {
      logger.d("Received message from client ${client.id}: $rawMessage");
      var message = DeviceCommand.fromJson(jsonDecode(rawMessage));
      _handleMessage(client, message);
    } catch (e) {
      logger.e("Error handling message from client ${client.id}: $e");
    }
  }

  /// Broadcasts a message to all connected clients.
  ///
  /// Sends the specified HostResponse to every client in the connection list.
  Future<Result<void>> broadcast(HostResponse message) async {
    for (var (transport, _) in clients) {
      await transport.send(jsonEncode(message));
    }
    return Ok(null);
  }

  /// Disconnects a specific client and removes it from the active clients list.
  Future<Result<void>> disconnectClient(Client client) async {
    final index = clients.indexWhere((tuple) => tuple.$2.id == client.id);
    if (index != -1) {
      final transport = clients[index].$1;
      await transport.disconnect();
      clients.removeAt(index);
    }
    return Ok(null);
  }

  /// Checks if a specific client is currently connected.
  bool isClientConnected(Client client) {
    return clients.any((tuple) => tuple.$2.id == client.id);
  }

  /// Removes any clients whose transport layer is no longer connected.
  void cleanupDisconnectedClients() {
    clients.removeWhere((tuple) => !tuple.$1.isConnected);
  }
}

/// Controls the client side of the communication, managing a single connection
/// to a host at a time.
class ClientController {
  final Uri _serverAddr;
  final Client _client;
  Transport? _transport;
  Host? _connectedHost;
  final void Function(HostResponse) _handleResponse;

  /// Creates a new ClientController with the specified server address, client information,
  /// and response handler.
  ClientController(this._serverAddr, this._client, this._handleResponse);

  /// Indicates whether the client is currently connected to a host
  bool get isConnected => _transport?.isConnected ?? false;

  /// Returns the currently connected host, if any
  Host? get currentHost => _connectedHost;

  Future<Result<void>> connectToHostWsRelay(String hostId) async {
    var transport =
        WebSocketTransport(_serverAddr.toString()); // TODO: proper connect
    return await connectToHost(transport);
  }

  /// Connects to a specific host using the host's ID.
  ///
  /// Automatically disconnects from any existing host connection before
  /// establishing the new connection.
  Future<Result<void>> connectToHost(Transport transport) async {
    if (_transport != null) {
      await disconnect();
    }

    _transport = transport;

    _transport!.onReceive((rawMessage) {
      final response = HostResponse.fromJson(jsonDecode(rawMessage));
      if (response case ConnectResponse(host: var host)) {
        _connectedHost = host;
      }
      _handleResponse(response);
    });

    var connectResult = await _transport!.connect();
    if (connectResult.isErr()) {
      return connectResult;
    }

    return _transport!.send(jsonEncode(DeviceCommand.connect(_client)));
  }

  /// Disconnects from the current host and cleans up the connection state.
  Future<Result<void>> disconnect() async {
    if (_transport != null) {
      var result = await _transport!.disconnect();
      _transport = null;
      _connectedHost = null;
      return result;
    }
    return Ok(null);
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
