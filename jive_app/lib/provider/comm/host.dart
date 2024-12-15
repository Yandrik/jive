import 'package:anyhow/anyhow.dart';
import 'package:jive_app/comm/device_comm.dart';
import 'package:jive_app/comm/multiplexer.dart';
import 'package:jive_app/logger.dart';
import 'package:uuid/uuid.dart';

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

  Future<HostController> create(String name, Set<MusicSource> sources,
      {String? id}) async {
    logger.d("Creating Host Controller...");
    _controller = HostController(
        Uri.parse("wss://relay.hack2.yandrik.dev"),
        Host(
          id: id ?? Uuid().v4(),
          name: name,
          sources: sources,
        ), (client, command) {
      logger.d("DeviceCommand received from ${client.name}: $command");
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

  Future<void> clear() async {
    if (_controller != null) {
      _controller!.stopConnectionLoop();
      await _controller!.disconnectAllClients();
      _controller = null;
    }
  }
}
