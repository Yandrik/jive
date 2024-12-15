import 'package:anyhow/anyhow.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jive_app/comm/device_comm.dart';
import 'package:jive_app/comm/multiplexer.dart';
import 'package:jive_app/logger.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:uuid/uuid.dart';

part 'client.g.dart';

@Riverpod(keepAlive: true)
class HostId extends _$HostId {
  @override
  String? build() {
    return null;
  }

  void update(String id) {
    state = id;
  }
}

@Riverpod(keepAlive: true)
class HostMessage extends _$HostMessage {
  @override
  HostResponse? build() {
    return null;
  }

  void update(HostResponse message) {
    state = message;
  }
}

class ClientControllerSingleton {
  static final ClientControllerSingleton _instance =
      ClientControllerSingleton._internal();
  ClientController? _controller;

  factory ClientControllerSingleton() {
    return _instance;
  }

  ClientControllerSingleton._internal();

  static ClientControllerSingleton get I => _instance;
  ClientController? get controller => _controller;

  Future<ClientController> create(String name, {String? id}) async {
    logger.d("Creating Client Controller...");
    _controller = ClientController(Uri.parse("wss://relay.hack2.yandrik.dev"),
        Client(id: id ?? Uuid().toString(), name: name), (resp) {
      logger.d("HostResponse received: $resp");
    });
    return _controller!;
  }

  Future<Result<void>> connect(String hostId) async {
    if (_controller != null) {
      return await _controller!
          .connectToHostWsRelay(hostId)
          .context("Couldn't connect to host with ID $hostId");
    }
    return bail("ClientController is null. Please create a client first.");
  }

  Future<Result<void>> sendToHost(DeviceCommand command) async {
    if (_controller != null) {
      return await _controller!
          .sendCommand(command)
          .context("Failed to send command to host");
    }
    return bail("ClientController is null. Please create a client first.");
  }

  Future<void> clear() async {
    if (_controller != null) {
      await _controller!.disconnect();
      _controller = null;
    }
  }
}
