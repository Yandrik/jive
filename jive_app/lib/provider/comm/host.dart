import 'dart:async';

import 'package:anyhow/anyhow.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jive_app/comm/device_comm.dart';
import 'package:jive_app/comm/multiplexer.dart';
import 'package:jive_app/logger.dart';
import 'package:jive_app/utils/consts.dart';
import 'package:jive_app/utils/util-methods.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:uuid/uuid.dart';

part 'host.g.dart';

@riverpod
Stream<(Client, DeviceCommand)> deviceCommands(Ref ref) {
  final stream = HostControllerSingleton.I.stream;
  return stream;
}

class HostControllerSingleton {
  static final HostControllerSingleton _instance =
      HostControllerSingleton._internal();
  HostController? _controller;

  factory HostControllerSingleton() {
    return _instance;
  }

  HostControllerSingleton._internal();

  static HostControllerSingleton get I => _instance;
  HostController? get controller => _controller;

  StreamController<(Client, DeviceCommand)> streamController =
      StreamController.broadcast();

  Stream<(Client, DeviceCommand)> get stream => streamController.stream;

  Future<HostController> create(String name, Set<MusicSource> sources,
      {String? id}) async {
    logger.d("Creating Host Controller...");
    _controller = HostController(
        Uri.parse(SERVER_URI),
        Host(
          id: id ?? ReadableIdGenerator.generate(),
          name: name,
          sources: sources,
        ), (client, command) {
      logger.d("DeviceCommand received from ${client.name}: $command");
      streamController.add((client, command));
      // Handle command here if needed
    });
    return _controller!;
  }

  Future<Result<void>> start() async {
    if (_controller != null) {
      await controller!.startConnectionLoop();
      return Ok(null);
    } else {
      return bail("HostController is null. Please create a host first.");
    }
  }

  Future<Result<void>> broadcast(HostResponse response) async {
    if (_controller != null) {
      return await _controller!
          .broadcast(response)
          .context("Failed to broadcast message to clients");
    }
    return bail("HostController is null. Please create a host first.");
  }

  Future<Result<void>> sendToClient(
      Client client, HostResponse response) async {
    if (_controller != null) {
      return await _controller!
          .sendToClient(client, response)
          .context("Failed to send message to client");
    }
    return bail("HostController is null. Please create a host first.");
  }

  Future<void> clear() async {
    if (_controller != null) {
      await _controller!.dispose();
      _controller = null;
    }
  }
}
