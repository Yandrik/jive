// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'client.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$hostIdHash() => r'aa1971f0c67eefcba6f0e220b11814d8420ffd12';

/// See also [HostId].
@ProviderFor(HostId)
final hostIdProvider = AutoDisposeNotifierProvider<HostId, String?>.internal(
  HostId.new,
  name: r'hostIdProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$hostIdHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$HostId = AutoDisposeNotifier<String?>;
String _$hostMessageHash() => r'75107af4b172ec5cce2bf267d9b3abadfbb84f0d';

/// See also [HostMessage].
@ProviderFor(HostMessage)
final hostMessageProvider =
    AutoDisposeNotifierProvider<HostMessage, HostResponse?>.internal(
  HostMessage.new,
  name: r'hostMessageProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$hostMessageHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$HostMessage = AutoDisposeNotifier<HostResponse?>;
String _$clientControllerPodHash() =>
    r'32110d330b6e9a12d1ea3e55ce1605a7385c7fb5';

/// See also [ClientControllerPod].
@ProviderFor(ClientControllerPod)
final clientControllerPodProvider = AutoDisposeAsyncNotifierProvider<
    ClientControllerPod, ClientController?>.internal(
  ClientControllerPod.new,
  name: r'clientControllerPodProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$clientControllerPodHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$ClientControllerPod = AutoDisposeAsyncNotifier<ClientController?>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
