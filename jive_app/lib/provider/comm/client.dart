import 'package:anyhow/anyhow.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jive_app/comm/device_comm.dart';
import 'package:jive_app/comm/multiplexer.dart';
import 'package:jive_app/logger.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:uuid/uuid.dart';

part 'client.g.dart';

@riverpod
class HostId extends _$HostId {
  @override
  String? build() {
    return null;
  }

  void update(String id) {
    state = id;
  }
}

@riverpod
class HostMessage extends _$HostMessage {
  @override
  HostResponse? build() {
    return null;
  }

  void update(HostResponse message) {
    state = message;
  }
}

@riverpod
class ClientControllerPod extends _$ClientControllerPod {
  @override
  Future<ClientController?> build() async {
    return null;
  }

  Future<ClientController> create(String name, {String? id}) async {
    logger.d("Creating Client Controller...");
    var clientController = ClientController(
        Uri.parse("wss://relay.hack2.yandrik.dev"),
        Client(id: id ?? Uuid().toString(), name: name), (resp) {
      logger.d("HostResponse received: $resp");
      ref.read(hostMessageProvider.notifier).update(resp);
    });

    state = AsyncValue.data(clientController);
    return clientController;
  }

  Future<Result<void>> connect(String hostId) async {
    if (state.value != null) {
      var res = await state.value!
          .connectToHostWsRelay(hostId)
          .context("Couldn't connect to host with ID $hostId");
      state = AsyncValue.data(state.value);
      return res;
    } else {
      return bail("ClientController is null. Please create a client first.");
    }
  }

  Future<Result<void>> sendToHost(DeviceCommand command) async {
    if (state.value != null) {
      final res = await state.value!
          .sendCommand(command)
          .context("ClientControllerPod failed to send command to host");

      if (res.isErr()) {
        if (!state.value!.isConnected) {
          // TODO: maybe reconnect?
          state = AsyncValue.data(state.value!);
        }
      }

      return res;
    } else {
      return bail("ClientController is null. Please create a client first.");
    }
  }

  Future<void> clear() async {
    if (state.value != null) {
      await state.value!.disconnect();
    }

    state = const AsyncValue.data(null);
  }
}
