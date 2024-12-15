// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'host.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$clientMessageHash() => r'b54940db7964c50022ab7b6d64fb3991fe6b0745';

/// See also [ClientMessage].
@ProviderFor(ClientMessage)
final clientMessageProvider = AutoDisposeNotifierProvider<ClientMessage,
    (Client, DeviceCommand)?>.internal(
  ClientMessage.new,
  name: r'clientMessageProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$clientMessageHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$ClientMessage = AutoDisposeNotifier<(Client, DeviceCommand)?>;
String _$hostControllerPodHash() => r'82ed51fd90a519f8e33eec9d78a16b1409522467';

/// See also [HostControllerPod].
@ProviderFor(HostControllerPod)
final hostControllerPodProvider = AutoDisposeAsyncNotifierProvider<
    HostControllerPod, HostController?>.internal(
  HostControllerPod.new,
  name: r'hostControllerPodProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$hostControllerPodHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$HostControllerPod = AutoDisposeAsyncNotifier<HostController?>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
