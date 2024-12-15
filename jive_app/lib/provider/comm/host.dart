import 'package:anyhow/anyhow.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jive_app/comm/device_comm.dart';
import 'package:jive_app/comm/multiplexer.dart';
import 'package:jive_app/logger.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:uuid/uuid.dart';

part 'host.g.dart';

@riverpod
class ClientMessage extends _$ClientMessage {
  @override
  (Client, DeviceCommand)? build() {
    return null;
  }

  void update(Client client, DeviceCommand message) {
    state = (client, message);
  }
}

@riverpod
class HostControllerPod extends _$HostControllerPod {
  @override
  Future<HostController?> build() async {
    return null;
  }

  Future<void> create(String name, Set<MusicSource> sources,
      {String? id}) async {
    var hostController = HostController(
        Uri.parse("wss://relay.hack2.yandrik.dev"),
        Host(
          id: id ?? Uuid().v4(),
          name: name,
          sources: sources,
        ), (client, command) {
      logger.d("DeviceCommand received from ${client.name}: $command");
      ref.read(clientMessageProvider.notifier).update(client, command);
    });

    state = AsyncValue.data(hostController);
  }

  Future<Result<void>> start() async {
    if (state.value != null) {
      return await state.value!
          .connectClientWsRelay()
          .context("Failed to start host relay connection");
    } else {
      return bail("HostController is null. Please create a host first.");
    }
  }

  Future<Result<void>> broadcast(HostResponse response) async {
    if (state.value != null) {
      return await state.value!
          .broadcast(response)
          .context("Failed to broadcast message to clients");
    } else {
      return bail("HostController is null. Please create a host first.");
    }
  }

  Future<void> clear() async {
    if (state.value != null) {
      for (var (transport, _) in state.value!.clients) {
        await transport.disconnect();
      }
    }
    state = const AsyncValue.data(null);
  }
}
