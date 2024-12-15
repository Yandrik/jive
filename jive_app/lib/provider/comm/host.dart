import 'dart:async';

import 'package:anyhow/anyhow.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jive_app/audio/grammophone.dart';
import 'package:jive_app/comm/device_comm.dart';
import 'package:jive_app/comm/multiplexer.dart';
import 'package:jive_app/logger.dart';
import 'package:jive_app/provider/queue_manager.dart';
import 'package:jive_app/utils/consts.dart';
import 'package:jive_app/utils/util-methods.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:rust/rust.dart' as rust;
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

      switch (command) {
        case Connect():
          // TODO: Handle this case.
          break;
        case RequestID():
          // TODO: Handle this case.
          break;
        case RequestState():
          // TODO: Handle this case.
          break;
        case RequestQueue():
          // TODO: Handle this case.
          break;
        case MediaCommand():
          // TODO: Handle this case.
          break;
        case MoveSong(:final oldIdx, :final newIdx):
          QueueSingleton.I.moveSong(oldIdx, newIdx);
          break;
        case RemoveSong(:final idx):
          QueueSingleton.I.removeFromQueue(idx);
          // TODO: Handle this case.
          break;
        case AddSong(:final songMeta):
          QueueSingleton.I.addToQueue(songMeta, client: rust.Some(client));
          break;
        case AddSongToStart(:final songMeta):
          QueueSingleton.I.addNextInQueue(songMeta, client: rust.Some(client));
          break;
        case SetVolume():
          // TODO: Handle this case.
          break;
        case PlaySong():
          // TODO: Handle this case.
          break;
        default:
          // TODO: Handle this case.
          break;
        // Handle command here if needed
      }
    });

    await Grammophone.I.setup();

    return _controller!;
  }

  Future<Result<void>> start() async {
    if (_controller != null) {
      await controller!.startConnectionLoop();
      return rust.Ok(null);
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
