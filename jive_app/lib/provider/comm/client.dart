import 'dart:async';

import 'package:anyhow/anyhow.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jive_app/comm/device_comm.dart';
import 'package:jive_app/comm/multiplexer.dart';
import 'package:jive_app/logger.dart';
import 'package:jive_app/utils/consts.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:uuid/uuid.dart';

part 'client.g.dart';

@riverpod
Stream<HostResponse> hostResponse(Ref ref) {
  final stream = ClientControllerSingleton.I.stream;
  return stream;
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

  StreamController<HostResponse> streamController =
      StreamController.broadcast();

  Stream<HostResponse> get stream => streamController.stream;

  Future<ClientController> create(String name, {String? id}) async {
    logger.d("Creating Client Controller...");
    _controller = ClientController(
        Uri.parse(SERVER_URI), Client(id: id ?? Uuid().v4(), name: name),
        (resp) {
      logger.d("HostResponse received: $resp");
      streamController.add(resp);
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
