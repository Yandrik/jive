// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'device_comm.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Client {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  /// Create a copy of Client
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ClientCopyWith<Client> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClientCopyWith<$Res> {
  factory $ClientCopyWith(Client value, $Res Function(Client) then) =
      _$ClientCopyWithImpl<$Res, Client>;
  @useResult
  $Res call({String id, String name});
}

/// @nodoc
class _$ClientCopyWithImpl<$Res, $Val extends Client>
    implements $ClientCopyWith<$Res> {
  _$ClientCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Client
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ClientImplCopyWith<$Res> implements $ClientCopyWith<$Res> {
  factory _$$ClientImplCopyWith(
          _$ClientImpl value, $Res Function(_$ClientImpl) then) =
      __$$ClientImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name});
}

/// @nodoc
class __$$ClientImplCopyWithImpl<$Res>
    extends _$ClientCopyWithImpl<$Res, _$ClientImpl>
    implements _$$ClientImplCopyWith<$Res> {
  __$$ClientImplCopyWithImpl(
      _$ClientImpl _value, $Res Function(_$ClientImpl) _then)
      : super(_value, _then);

  /// Create a copy of Client
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$ClientImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ClientImpl implements _Client {
  const _$ClientImpl({required this.id, required this.name});

  @override
  final String id;
  @override
  final String name;

  @override
  String toString() {
    return 'Client(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClientImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  /// Create a copy of Client
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ClientImplCopyWith<_$ClientImpl> get copyWith =>
      __$$ClientImplCopyWithImpl<_$ClientImpl>(this, _$identity);
}

abstract class _Client implements Client {
  const factory _Client(
      {required final String id, required final String name}) = _$ClientImpl;

  @override
  String get id;
  @override
  String get name;

  /// Create a copy of Client
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ClientImplCopyWith<_$ClientImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Host {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  /// Create a copy of Host
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HostCopyWith<Host> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HostCopyWith<$Res> {
  factory $HostCopyWith(Host value, $Res Function(Host) then) =
      _$HostCopyWithImpl<$Res, Host>;
  @useResult
  $Res call({String id, String name});
}

/// @nodoc
class _$HostCopyWithImpl<$Res, $Val extends Host>
    implements $HostCopyWith<$Res> {
  _$HostCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Host
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HostImplCopyWith<$Res> implements $HostCopyWith<$Res> {
  factory _$$HostImplCopyWith(
          _$HostImpl value, $Res Function(_$HostImpl) then) =
      __$$HostImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name});
}

/// @nodoc
class __$$HostImplCopyWithImpl<$Res>
    extends _$HostCopyWithImpl<$Res, _$HostImpl>
    implements _$$HostImplCopyWith<$Res> {
  __$$HostImplCopyWithImpl(_$HostImpl _value, $Res Function(_$HostImpl) _then)
      : super(_value, _then);

  /// Create a copy of Host
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$HostImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$HostImpl implements _Host {
  const _$HostImpl({required this.id, required this.name});

  @override
  final String id;
  @override
  final String name;

  @override
  String toString() {
    return 'Host(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HostImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  /// Create a copy of Host
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HostImplCopyWith<_$HostImpl> get copyWith =>
      __$$HostImplCopyWithImpl<_$HostImpl>(this, _$identity);
}

abstract class _Host implements Host {
  const factory _Host({required final String id, required final String name}) =
      _$HostImpl;

  @override
  String get id;
  @override
  String get name;

  /// Create a copy of Host
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HostImplCopyWith<_$HostImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PlaySongMeta {
  String get songId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String songId) spotify,
    required TResult Function(String songId) local,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String songId)? spotify,
    TResult? Function(String songId)? local,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String songId)? spotify,
    TResult Function(String songId)? local,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SpotifySong value) spotify,
    required TResult Function(LocalSong value) local,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SpotifySong value)? spotify,
    TResult? Function(LocalSong value)? local,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SpotifySong value)? spotify,
    TResult Function(LocalSong value)? local,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of PlaySongMeta
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PlaySongMetaCopyWith<PlaySongMeta> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaySongMetaCopyWith<$Res> {
  factory $PlaySongMetaCopyWith(
          PlaySongMeta value, $Res Function(PlaySongMeta) then) =
      _$PlaySongMetaCopyWithImpl<$Res, PlaySongMeta>;
  @useResult
  $Res call({String songId});
}

/// @nodoc
class _$PlaySongMetaCopyWithImpl<$Res, $Val extends PlaySongMeta>
    implements $PlaySongMetaCopyWith<$Res> {
  _$PlaySongMetaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PlaySongMeta
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? songId = null,
  }) {
    return _then(_value.copyWith(
      songId: null == songId
          ? _value.songId
          : songId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SpotifySongImplCopyWith<$Res>
    implements $PlaySongMetaCopyWith<$Res> {
  factory _$$SpotifySongImplCopyWith(
          _$SpotifySongImpl value, $Res Function(_$SpotifySongImpl) then) =
      __$$SpotifySongImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String songId});
}

/// @nodoc
class __$$SpotifySongImplCopyWithImpl<$Res>
    extends _$PlaySongMetaCopyWithImpl<$Res, _$SpotifySongImpl>
    implements _$$SpotifySongImplCopyWith<$Res> {
  __$$SpotifySongImplCopyWithImpl(
      _$SpotifySongImpl _value, $Res Function(_$SpotifySongImpl) _then)
      : super(_value, _then);

  /// Create a copy of PlaySongMeta
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? songId = null,
  }) {
    return _then(_$SpotifySongImpl(
      null == songId
          ? _value.songId
          : songId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SpotifySongImpl implements SpotifySong {
  const _$SpotifySongImpl(this.songId);

  @override
  final String songId;

  @override
  String toString() {
    return 'PlaySongMeta.spotify(songId: $songId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpotifySongImpl &&
            (identical(other.songId, songId) || other.songId == songId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, songId);

  /// Create a copy of PlaySongMeta
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SpotifySongImplCopyWith<_$SpotifySongImpl> get copyWith =>
      __$$SpotifySongImplCopyWithImpl<_$SpotifySongImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String songId) spotify,
    required TResult Function(String songId) local,
  }) {
    return spotify(songId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String songId)? spotify,
    TResult? Function(String songId)? local,
  }) {
    return spotify?.call(songId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String songId)? spotify,
    TResult Function(String songId)? local,
    required TResult orElse(),
  }) {
    if (spotify != null) {
      return spotify(songId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SpotifySong value) spotify,
    required TResult Function(LocalSong value) local,
  }) {
    return spotify(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SpotifySong value)? spotify,
    TResult? Function(LocalSong value)? local,
  }) {
    return spotify?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SpotifySong value)? spotify,
    TResult Function(LocalSong value)? local,
    required TResult orElse(),
  }) {
    if (spotify != null) {
      return spotify(this);
    }
    return orElse();
  }
}

abstract class SpotifySong implements PlaySongMeta {
  const factory SpotifySong(final String songId) = _$SpotifySongImpl;

  @override
  String get songId;

  /// Create a copy of PlaySongMeta
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SpotifySongImplCopyWith<_$SpotifySongImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LocalSongImplCopyWith<$Res>
    implements $PlaySongMetaCopyWith<$Res> {
  factory _$$LocalSongImplCopyWith(
          _$LocalSongImpl value, $Res Function(_$LocalSongImpl) then) =
      __$$LocalSongImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String songId});
}

/// @nodoc
class __$$LocalSongImplCopyWithImpl<$Res>
    extends _$PlaySongMetaCopyWithImpl<$Res, _$LocalSongImpl>
    implements _$$LocalSongImplCopyWith<$Res> {
  __$$LocalSongImplCopyWithImpl(
      _$LocalSongImpl _value, $Res Function(_$LocalSongImpl) _then)
      : super(_value, _then);

  /// Create a copy of PlaySongMeta
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? songId = null,
  }) {
    return _then(_$LocalSongImpl(
      null == songId
          ? _value.songId
          : songId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LocalSongImpl implements LocalSong {
  const _$LocalSongImpl(this.songId);

  @override
  final String songId;

  @override
  String toString() {
    return 'PlaySongMeta.local(songId: $songId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocalSongImpl &&
            (identical(other.songId, songId) || other.songId == songId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, songId);

  /// Create a copy of PlaySongMeta
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LocalSongImplCopyWith<_$LocalSongImpl> get copyWith =>
      __$$LocalSongImplCopyWithImpl<_$LocalSongImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String songId) spotify,
    required TResult Function(String songId) local,
  }) {
    return local(songId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String songId)? spotify,
    TResult? Function(String songId)? local,
  }) {
    return local?.call(songId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String songId)? spotify,
    TResult Function(String songId)? local,
    required TResult orElse(),
  }) {
    if (local != null) {
      return local(songId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SpotifySong value) spotify,
    required TResult Function(LocalSong value) local,
  }) {
    return local(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SpotifySong value)? spotify,
    TResult? Function(LocalSong value)? local,
  }) {
    return local?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SpotifySong value)? spotify,
    TResult Function(LocalSong value)? local,
    required TResult orElse(),
  }) {
    if (local != null) {
      return local(this);
    }
    return orElse();
  }
}

abstract class LocalSong implements PlaySongMeta {
  const factory LocalSong(final String songId) = _$LocalSongImpl;

  @override
  String get songId;

  /// Create a copy of PlaySongMeta
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LocalSongImplCopyWith<_$LocalSongImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DeviceCommand {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() requestId,
    required TResult Function() requestState,
    required TResult Function() requestQueue,
    required TResult Function(MediaCommandType command) mediaCommand,
    required TResult Function(int volume) setVolume,
    required TResult Function(PlaySongMeta songMeta) playSong,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? requestId,
    TResult? Function()? requestState,
    TResult? Function()? requestQueue,
    TResult? Function(MediaCommandType command)? mediaCommand,
    TResult? Function(int volume)? setVolume,
    TResult? Function(PlaySongMeta songMeta)? playSong,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? requestId,
    TResult Function()? requestState,
    TResult Function()? requestQueue,
    TResult Function(MediaCommandType command)? mediaCommand,
    TResult Function(int volume)? setVolume,
    TResult Function(PlaySongMeta songMeta)? playSong,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RequestID value) requestId,
    required TResult Function(RequestState value) requestState,
    required TResult Function(RequestQueue value) requestQueue,
    required TResult Function(MediaCommand value) mediaCommand,
    required TResult Function(SetVolume value) setVolume,
    required TResult Function(PlaySong value) playSong,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RequestID value)? requestId,
    TResult? Function(RequestState value)? requestState,
    TResult? Function(RequestQueue value)? requestQueue,
    TResult? Function(MediaCommand value)? mediaCommand,
    TResult? Function(SetVolume value)? setVolume,
    TResult? Function(PlaySong value)? playSong,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RequestID value)? requestId,
    TResult Function(RequestState value)? requestState,
    TResult Function(RequestQueue value)? requestQueue,
    TResult Function(MediaCommand value)? mediaCommand,
    TResult Function(SetVolume value)? setVolume,
    TResult Function(PlaySong value)? playSong,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeviceCommandCopyWith<$Res> {
  factory $DeviceCommandCopyWith(
          DeviceCommand value, $Res Function(DeviceCommand) then) =
      _$DeviceCommandCopyWithImpl<$Res, DeviceCommand>;
}

/// @nodoc
class _$DeviceCommandCopyWithImpl<$Res, $Val extends DeviceCommand>
    implements $DeviceCommandCopyWith<$Res> {
  _$DeviceCommandCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DeviceCommand
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$RequestIDImplCopyWith<$Res> {
  factory _$$RequestIDImplCopyWith(
          _$RequestIDImpl value, $Res Function(_$RequestIDImpl) then) =
      __$$RequestIDImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RequestIDImplCopyWithImpl<$Res>
    extends _$DeviceCommandCopyWithImpl<$Res, _$RequestIDImpl>
    implements _$$RequestIDImplCopyWith<$Res> {
  __$$RequestIDImplCopyWithImpl(
      _$RequestIDImpl _value, $Res Function(_$RequestIDImpl) _then)
      : super(_value, _then);

  /// Create a copy of DeviceCommand
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$RequestIDImpl implements RequestID {
  const _$RequestIDImpl();

  @override
  String toString() {
    return 'DeviceCommand.requestId()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RequestIDImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() requestId,
    required TResult Function() requestState,
    required TResult Function() requestQueue,
    required TResult Function(MediaCommandType command) mediaCommand,
    required TResult Function(int volume) setVolume,
    required TResult Function(PlaySongMeta songMeta) playSong,
  }) {
    return requestId();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? requestId,
    TResult? Function()? requestState,
    TResult? Function()? requestQueue,
    TResult? Function(MediaCommandType command)? mediaCommand,
    TResult? Function(int volume)? setVolume,
    TResult? Function(PlaySongMeta songMeta)? playSong,
  }) {
    return requestId?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? requestId,
    TResult Function()? requestState,
    TResult Function()? requestQueue,
    TResult Function(MediaCommandType command)? mediaCommand,
    TResult Function(int volume)? setVolume,
    TResult Function(PlaySongMeta songMeta)? playSong,
    required TResult orElse(),
  }) {
    if (requestId != null) {
      return requestId();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RequestID value) requestId,
    required TResult Function(RequestState value) requestState,
    required TResult Function(RequestQueue value) requestQueue,
    required TResult Function(MediaCommand value) mediaCommand,
    required TResult Function(SetVolume value) setVolume,
    required TResult Function(PlaySong value) playSong,
  }) {
    return requestId(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RequestID value)? requestId,
    TResult? Function(RequestState value)? requestState,
    TResult? Function(RequestQueue value)? requestQueue,
    TResult? Function(MediaCommand value)? mediaCommand,
    TResult? Function(SetVolume value)? setVolume,
    TResult? Function(PlaySong value)? playSong,
  }) {
    return requestId?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RequestID value)? requestId,
    TResult Function(RequestState value)? requestState,
    TResult Function(RequestQueue value)? requestQueue,
    TResult Function(MediaCommand value)? mediaCommand,
    TResult Function(SetVolume value)? setVolume,
    TResult Function(PlaySong value)? playSong,
    required TResult orElse(),
  }) {
    if (requestId != null) {
      return requestId(this);
    }
    return orElse();
  }
}

abstract class RequestID implements DeviceCommand {
  const factory RequestID() = _$RequestIDImpl;
}

/// @nodoc
abstract class _$$RequestStateImplCopyWith<$Res> {
  factory _$$RequestStateImplCopyWith(
          _$RequestStateImpl value, $Res Function(_$RequestStateImpl) then) =
      __$$RequestStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RequestStateImplCopyWithImpl<$Res>
    extends _$DeviceCommandCopyWithImpl<$Res, _$RequestStateImpl>
    implements _$$RequestStateImplCopyWith<$Res> {
  __$$RequestStateImplCopyWithImpl(
      _$RequestStateImpl _value, $Res Function(_$RequestStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of DeviceCommand
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$RequestStateImpl implements RequestState {
  const _$RequestStateImpl();

  @override
  String toString() {
    return 'DeviceCommand.requestState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RequestStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() requestId,
    required TResult Function() requestState,
    required TResult Function() requestQueue,
    required TResult Function(MediaCommandType command) mediaCommand,
    required TResult Function(int volume) setVolume,
    required TResult Function(PlaySongMeta songMeta) playSong,
  }) {
    return requestState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? requestId,
    TResult? Function()? requestState,
    TResult? Function()? requestQueue,
    TResult? Function(MediaCommandType command)? mediaCommand,
    TResult? Function(int volume)? setVolume,
    TResult? Function(PlaySongMeta songMeta)? playSong,
  }) {
    return requestState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? requestId,
    TResult Function()? requestState,
    TResult Function()? requestQueue,
    TResult Function(MediaCommandType command)? mediaCommand,
    TResult Function(int volume)? setVolume,
    TResult Function(PlaySongMeta songMeta)? playSong,
    required TResult orElse(),
  }) {
    if (requestState != null) {
      return requestState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RequestID value) requestId,
    required TResult Function(RequestState value) requestState,
    required TResult Function(RequestQueue value) requestQueue,
    required TResult Function(MediaCommand value) mediaCommand,
    required TResult Function(SetVolume value) setVolume,
    required TResult Function(PlaySong value) playSong,
  }) {
    return requestState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RequestID value)? requestId,
    TResult? Function(RequestState value)? requestState,
    TResult? Function(RequestQueue value)? requestQueue,
    TResult? Function(MediaCommand value)? mediaCommand,
    TResult? Function(SetVolume value)? setVolume,
    TResult? Function(PlaySong value)? playSong,
  }) {
    return requestState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RequestID value)? requestId,
    TResult Function(RequestState value)? requestState,
    TResult Function(RequestQueue value)? requestQueue,
    TResult Function(MediaCommand value)? mediaCommand,
    TResult Function(SetVolume value)? setVolume,
    TResult Function(PlaySong value)? playSong,
    required TResult orElse(),
  }) {
    if (requestState != null) {
      return requestState(this);
    }
    return orElse();
  }
}

abstract class RequestState implements DeviceCommand {
  const factory RequestState() = _$RequestStateImpl;
}

/// @nodoc
abstract class _$$RequestQueueImplCopyWith<$Res> {
  factory _$$RequestQueueImplCopyWith(
          _$RequestQueueImpl value, $Res Function(_$RequestQueueImpl) then) =
      __$$RequestQueueImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RequestQueueImplCopyWithImpl<$Res>
    extends _$DeviceCommandCopyWithImpl<$Res, _$RequestQueueImpl>
    implements _$$RequestQueueImplCopyWith<$Res> {
  __$$RequestQueueImplCopyWithImpl(
      _$RequestQueueImpl _value, $Res Function(_$RequestQueueImpl) _then)
      : super(_value, _then);

  /// Create a copy of DeviceCommand
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$RequestQueueImpl implements RequestQueue {
  const _$RequestQueueImpl();

  @override
  String toString() {
    return 'DeviceCommand.requestQueue()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RequestQueueImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() requestId,
    required TResult Function() requestState,
    required TResult Function() requestQueue,
    required TResult Function(MediaCommandType command) mediaCommand,
    required TResult Function(int volume) setVolume,
    required TResult Function(PlaySongMeta songMeta) playSong,
  }) {
    return requestQueue();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? requestId,
    TResult? Function()? requestState,
    TResult? Function()? requestQueue,
    TResult? Function(MediaCommandType command)? mediaCommand,
    TResult? Function(int volume)? setVolume,
    TResult? Function(PlaySongMeta songMeta)? playSong,
  }) {
    return requestQueue?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? requestId,
    TResult Function()? requestState,
    TResult Function()? requestQueue,
    TResult Function(MediaCommandType command)? mediaCommand,
    TResult Function(int volume)? setVolume,
    TResult Function(PlaySongMeta songMeta)? playSong,
    required TResult orElse(),
  }) {
    if (requestQueue != null) {
      return requestQueue();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RequestID value) requestId,
    required TResult Function(RequestState value) requestState,
    required TResult Function(RequestQueue value) requestQueue,
    required TResult Function(MediaCommand value) mediaCommand,
    required TResult Function(SetVolume value) setVolume,
    required TResult Function(PlaySong value) playSong,
  }) {
    return requestQueue(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RequestID value)? requestId,
    TResult? Function(RequestState value)? requestState,
    TResult? Function(RequestQueue value)? requestQueue,
    TResult? Function(MediaCommand value)? mediaCommand,
    TResult? Function(SetVolume value)? setVolume,
    TResult? Function(PlaySong value)? playSong,
  }) {
    return requestQueue?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RequestID value)? requestId,
    TResult Function(RequestState value)? requestState,
    TResult Function(RequestQueue value)? requestQueue,
    TResult Function(MediaCommand value)? mediaCommand,
    TResult Function(SetVolume value)? setVolume,
    TResult Function(PlaySong value)? playSong,
    required TResult orElse(),
  }) {
    if (requestQueue != null) {
      return requestQueue(this);
    }
    return orElse();
  }
}

abstract class RequestQueue implements DeviceCommand {
  const factory RequestQueue() = _$RequestQueueImpl;
}

/// @nodoc
abstract class _$$MediaCommandImplCopyWith<$Res> {
  factory _$$MediaCommandImplCopyWith(
          _$MediaCommandImpl value, $Res Function(_$MediaCommandImpl) then) =
      __$$MediaCommandImplCopyWithImpl<$Res>;
  @useResult
  $Res call({MediaCommandType command});
}

/// @nodoc
class __$$MediaCommandImplCopyWithImpl<$Res>
    extends _$DeviceCommandCopyWithImpl<$Res, _$MediaCommandImpl>
    implements _$$MediaCommandImplCopyWith<$Res> {
  __$$MediaCommandImplCopyWithImpl(
      _$MediaCommandImpl _value, $Res Function(_$MediaCommandImpl) _then)
      : super(_value, _then);

  /// Create a copy of DeviceCommand
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? command = null,
  }) {
    return _then(_$MediaCommandImpl(
      null == command
          ? _value.command
          : command // ignore: cast_nullable_to_non_nullable
              as MediaCommandType,
    ));
  }
}

/// @nodoc

class _$MediaCommandImpl implements MediaCommand {
  const _$MediaCommandImpl(this.command);

  @override
  final MediaCommandType command;

  @override
  String toString() {
    return 'DeviceCommand.mediaCommand(command: $command)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MediaCommandImpl &&
            (identical(other.command, command) || other.command == command));
  }

  @override
  int get hashCode => Object.hash(runtimeType, command);

  /// Create a copy of DeviceCommand
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MediaCommandImplCopyWith<_$MediaCommandImpl> get copyWith =>
      __$$MediaCommandImplCopyWithImpl<_$MediaCommandImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() requestId,
    required TResult Function() requestState,
    required TResult Function() requestQueue,
    required TResult Function(MediaCommandType command) mediaCommand,
    required TResult Function(int volume) setVolume,
    required TResult Function(PlaySongMeta songMeta) playSong,
  }) {
    return mediaCommand(command);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? requestId,
    TResult? Function()? requestState,
    TResult? Function()? requestQueue,
    TResult? Function(MediaCommandType command)? mediaCommand,
    TResult? Function(int volume)? setVolume,
    TResult? Function(PlaySongMeta songMeta)? playSong,
  }) {
    return mediaCommand?.call(command);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? requestId,
    TResult Function()? requestState,
    TResult Function()? requestQueue,
    TResult Function(MediaCommandType command)? mediaCommand,
    TResult Function(int volume)? setVolume,
    TResult Function(PlaySongMeta songMeta)? playSong,
    required TResult orElse(),
  }) {
    if (mediaCommand != null) {
      return mediaCommand(command);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RequestID value) requestId,
    required TResult Function(RequestState value) requestState,
    required TResult Function(RequestQueue value) requestQueue,
    required TResult Function(MediaCommand value) mediaCommand,
    required TResult Function(SetVolume value) setVolume,
    required TResult Function(PlaySong value) playSong,
  }) {
    return mediaCommand(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RequestID value)? requestId,
    TResult? Function(RequestState value)? requestState,
    TResult? Function(RequestQueue value)? requestQueue,
    TResult? Function(MediaCommand value)? mediaCommand,
    TResult? Function(SetVolume value)? setVolume,
    TResult? Function(PlaySong value)? playSong,
  }) {
    return mediaCommand?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RequestID value)? requestId,
    TResult Function(RequestState value)? requestState,
    TResult Function(RequestQueue value)? requestQueue,
    TResult Function(MediaCommand value)? mediaCommand,
    TResult Function(SetVolume value)? setVolume,
    TResult Function(PlaySong value)? playSong,
    required TResult orElse(),
  }) {
    if (mediaCommand != null) {
      return mediaCommand(this);
    }
    return orElse();
  }
}

abstract class MediaCommand implements DeviceCommand {
  const factory MediaCommand(final MediaCommandType command) =
      _$MediaCommandImpl;

  MediaCommandType get command;

  /// Create a copy of DeviceCommand
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MediaCommandImplCopyWith<_$MediaCommandImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SetVolumeImplCopyWith<$Res> {
  factory _$$SetVolumeImplCopyWith(
          _$SetVolumeImpl value, $Res Function(_$SetVolumeImpl) then) =
      __$$SetVolumeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int volume});
}

/// @nodoc
class __$$SetVolumeImplCopyWithImpl<$Res>
    extends _$DeviceCommandCopyWithImpl<$Res, _$SetVolumeImpl>
    implements _$$SetVolumeImplCopyWith<$Res> {
  __$$SetVolumeImplCopyWithImpl(
      _$SetVolumeImpl _value, $Res Function(_$SetVolumeImpl) _then)
      : super(_value, _then);

  /// Create a copy of DeviceCommand
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? volume = null,
  }) {
    return _then(_$SetVolumeImpl(
      null == volume
          ? _value.volume
          : volume // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$SetVolumeImpl implements SetVolume {
  const _$SetVolumeImpl(this.volume);

  @override
  final int volume;

  @override
  String toString() {
    return 'DeviceCommand.setVolume(volume: $volume)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetVolumeImpl &&
            (identical(other.volume, volume) || other.volume == volume));
  }

  @override
  int get hashCode => Object.hash(runtimeType, volume);

  /// Create a copy of DeviceCommand
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SetVolumeImplCopyWith<_$SetVolumeImpl> get copyWith =>
      __$$SetVolumeImplCopyWithImpl<_$SetVolumeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() requestId,
    required TResult Function() requestState,
    required TResult Function() requestQueue,
    required TResult Function(MediaCommandType command) mediaCommand,
    required TResult Function(int volume) setVolume,
    required TResult Function(PlaySongMeta songMeta) playSong,
  }) {
    return setVolume(volume);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? requestId,
    TResult? Function()? requestState,
    TResult? Function()? requestQueue,
    TResult? Function(MediaCommandType command)? mediaCommand,
    TResult? Function(int volume)? setVolume,
    TResult? Function(PlaySongMeta songMeta)? playSong,
  }) {
    return setVolume?.call(volume);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? requestId,
    TResult Function()? requestState,
    TResult Function()? requestQueue,
    TResult Function(MediaCommandType command)? mediaCommand,
    TResult Function(int volume)? setVolume,
    TResult Function(PlaySongMeta songMeta)? playSong,
    required TResult orElse(),
  }) {
    if (setVolume != null) {
      return setVolume(volume);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RequestID value) requestId,
    required TResult Function(RequestState value) requestState,
    required TResult Function(RequestQueue value) requestQueue,
    required TResult Function(MediaCommand value) mediaCommand,
    required TResult Function(SetVolume value) setVolume,
    required TResult Function(PlaySong value) playSong,
  }) {
    return setVolume(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RequestID value)? requestId,
    TResult? Function(RequestState value)? requestState,
    TResult? Function(RequestQueue value)? requestQueue,
    TResult? Function(MediaCommand value)? mediaCommand,
    TResult? Function(SetVolume value)? setVolume,
    TResult? Function(PlaySong value)? playSong,
  }) {
    return setVolume?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RequestID value)? requestId,
    TResult Function(RequestState value)? requestState,
    TResult Function(RequestQueue value)? requestQueue,
    TResult Function(MediaCommand value)? mediaCommand,
    TResult Function(SetVolume value)? setVolume,
    TResult Function(PlaySong value)? playSong,
    required TResult orElse(),
  }) {
    if (setVolume != null) {
      return setVolume(this);
    }
    return orElse();
  }
}

abstract class SetVolume implements DeviceCommand {
  const factory SetVolume(final int volume) = _$SetVolumeImpl;

  int get volume;

  /// Create a copy of DeviceCommand
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SetVolumeImplCopyWith<_$SetVolumeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PlaySongImplCopyWith<$Res> {
  factory _$$PlaySongImplCopyWith(
          _$PlaySongImpl value, $Res Function(_$PlaySongImpl) then) =
      __$$PlaySongImplCopyWithImpl<$Res>;
  @useResult
  $Res call({PlaySongMeta songMeta});

  $PlaySongMetaCopyWith<$Res> get songMeta;
}

/// @nodoc
class __$$PlaySongImplCopyWithImpl<$Res>
    extends _$DeviceCommandCopyWithImpl<$Res, _$PlaySongImpl>
    implements _$$PlaySongImplCopyWith<$Res> {
  __$$PlaySongImplCopyWithImpl(
      _$PlaySongImpl _value, $Res Function(_$PlaySongImpl) _then)
      : super(_value, _then);

  /// Create a copy of DeviceCommand
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? songMeta = null,
  }) {
    return _then(_$PlaySongImpl(
      null == songMeta
          ? _value.songMeta
          : songMeta // ignore: cast_nullable_to_non_nullable
              as PlaySongMeta,
    ));
  }

  /// Create a copy of DeviceCommand
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PlaySongMetaCopyWith<$Res> get songMeta {
    return $PlaySongMetaCopyWith<$Res>(_value.songMeta, (value) {
      return _then(_value.copyWith(songMeta: value));
    });
  }
}

/// @nodoc

class _$PlaySongImpl implements PlaySong {
  const _$PlaySongImpl(this.songMeta);

  @override
  final PlaySongMeta songMeta;

  @override
  String toString() {
    return 'DeviceCommand.playSong(songMeta: $songMeta)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlaySongImpl &&
            (identical(other.songMeta, songMeta) ||
                other.songMeta == songMeta));
  }

  @override
  int get hashCode => Object.hash(runtimeType, songMeta);

  /// Create a copy of DeviceCommand
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PlaySongImplCopyWith<_$PlaySongImpl> get copyWith =>
      __$$PlaySongImplCopyWithImpl<_$PlaySongImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() requestId,
    required TResult Function() requestState,
    required TResult Function() requestQueue,
    required TResult Function(MediaCommandType command) mediaCommand,
    required TResult Function(int volume) setVolume,
    required TResult Function(PlaySongMeta songMeta) playSong,
  }) {
    return playSong(songMeta);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? requestId,
    TResult? Function()? requestState,
    TResult? Function()? requestQueue,
    TResult? Function(MediaCommandType command)? mediaCommand,
    TResult? Function(int volume)? setVolume,
    TResult? Function(PlaySongMeta songMeta)? playSong,
  }) {
    return playSong?.call(songMeta);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? requestId,
    TResult Function()? requestState,
    TResult Function()? requestQueue,
    TResult Function(MediaCommandType command)? mediaCommand,
    TResult Function(int volume)? setVolume,
    TResult Function(PlaySongMeta songMeta)? playSong,
    required TResult orElse(),
  }) {
    if (playSong != null) {
      return playSong(songMeta);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RequestID value) requestId,
    required TResult Function(RequestState value) requestState,
    required TResult Function(RequestQueue value) requestQueue,
    required TResult Function(MediaCommand value) mediaCommand,
    required TResult Function(SetVolume value) setVolume,
    required TResult Function(PlaySong value) playSong,
  }) {
    return playSong(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RequestID value)? requestId,
    TResult? Function(RequestState value)? requestState,
    TResult? Function(RequestQueue value)? requestQueue,
    TResult? Function(MediaCommand value)? mediaCommand,
    TResult? Function(SetVolume value)? setVolume,
    TResult? Function(PlaySong value)? playSong,
  }) {
    return playSong?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RequestID value)? requestId,
    TResult Function(RequestState value)? requestState,
    TResult Function(RequestQueue value)? requestQueue,
    TResult Function(MediaCommand value)? mediaCommand,
    TResult Function(SetVolume value)? setVolume,
    TResult Function(PlaySong value)? playSong,
    required TResult orElse(),
  }) {
    if (playSong != null) {
      return playSong(this);
    }
    return orElse();
  }
}

abstract class PlaySong implements DeviceCommand {
  const factory PlaySong(final PlaySongMeta songMeta) = _$PlaySongImpl;

  PlaySongMeta get songMeta;

  /// Create a copy of DeviceCommand
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PlaySongImplCopyWith<_$PlaySongImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SongMeta {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get artist => throw _privateConstructorUsedError;
  String get album => throw _privateConstructorUsedError;
  Option<String> get albumArtUrl => throw _privateConstructorUsedError;
  Duration get duration => throw _privateConstructorUsedError;
  bool get isPlaying => throw _privateConstructorUsedError;

  /// Create a copy of SongMeta
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SongMetaCopyWith<SongMeta> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SongMetaCopyWith<$Res> {
  factory $SongMetaCopyWith(SongMeta value, $Res Function(SongMeta) then) =
      _$SongMetaCopyWithImpl<$Res, SongMeta>;
  @useResult
  $Res call(
      {String id,
      String title,
      String artist,
      String album,
      Option<String> albumArtUrl,
      Duration duration,
      bool isPlaying});
}

/// @nodoc
class _$SongMetaCopyWithImpl<$Res, $Val extends SongMeta>
    implements $SongMetaCopyWith<$Res> {
  _$SongMetaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SongMeta
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? artist = null,
    Object? album = null,
    Object? albumArtUrl = null,
    Object? duration = null,
    Object? isPlaying = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      artist: null == artist
          ? _value.artist
          : artist // ignore: cast_nullable_to_non_nullable
              as String,
      album: null == album
          ? _value.album
          : album // ignore: cast_nullable_to_non_nullable
              as String,
      albumArtUrl: null == albumArtUrl
          ? _value.albumArtUrl
          : albumArtUrl // ignore: cast_nullable_to_non_nullable
              as Option<String>,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as Duration,
      isPlaying: null == isPlaying
          ? _value.isPlaying
          : isPlaying // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SongMetaImplCopyWith<$Res>
    implements $SongMetaCopyWith<$Res> {
  factory _$$SongMetaImplCopyWith(
          _$SongMetaImpl value, $Res Function(_$SongMetaImpl) then) =
      __$$SongMetaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      String artist,
      String album,
      Option<String> albumArtUrl,
      Duration duration,
      bool isPlaying});
}

/// @nodoc
class __$$SongMetaImplCopyWithImpl<$Res>
    extends _$SongMetaCopyWithImpl<$Res, _$SongMetaImpl>
    implements _$$SongMetaImplCopyWith<$Res> {
  __$$SongMetaImplCopyWithImpl(
      _$SongMetaImpl _value, $Res Function(_$SongMetaImpl) _then)
      : super(_value, _then);

  /// Create a copy of SongMeta
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? artist = null,
    Object? album = null,
    Object? albumArtUrl = null,
    Object? duration = null,
    Object? isPlaying = null,
  }) {
    return _then(_$SongMetaImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      artist: null == artist
          ? _value.artist
          : artist // ignore: cast_nullable_to_non_nullable
              as String,
      album: null == album
          ? _value.album
          : album // ignore: cast_nullable_to_non_nullable
              as String,
      albumArtUrl: null == albumArtUrl
          ? _value.albumArtUrl
          : albumArtUrl // ignore: cast_nullable_to_non_nullable
              as Option<String>,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as Duration,
      isPlaying: null == isPlaying
          ? _value.isPlaying
          : isPlaying // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$SongMetaImpl implements _SongMeta {
  const _$SongMetaImpl(
      {required this.id,
      required this.title,
      required this.artist,
      required this.album,
      required this.albumArtUrl,
      required this.duration,
      required this.isPlaying});

  @override
  final String id;
  @override
  final String title;
  @override
  final String artist;
  @override
  final String album;
  @override
  final Option<String> albumArtUrl;
  @override
  final Duration duration;
  @override
  final bool isPlaying;

  @override
  String toString() {
    return 'SongMeta(id: $id, title: $title, artist: $artist, album: $album, albumArtUrl: $albumArtUrl, duration: $duration, isPlaying: $isPlaying)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SongMetaImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.artist, artist) || other.artist == artist) &&
            (identical(other.album, album) || other.album == album) &&
            (identical(other.albumArtUrl, albumArtUrl) ||
                other.albumArtUrl == albumArtUrl) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.isPlaying, isPlaying) ||
                other.isPlaying == isPlaying));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, id, title, artist, album, albumArtUrl, duration, isPlaying);

  /// Create a copy of SongMeta
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SongMetaImplCopyWith<_$SongMetaImpl> get copyWith =>
      __$$SongMetaImplCopyWithImpl<_$SongMetaImpl>(this, _$identity);
}

abstract class _SongMeta implements SongMeta {
  const factory _SongMeta(
      {required final String id,
      required final String title,
      required final String artist,
      required final String album,
      required final Option<String> albumArtUrl,
      required final Duration duration,
      required final bool isPlaying}) = _$SongMetaImpl;

  @override
  String get id;
  @override
  String get title;
  @override
  String get artist;
  @override
  String get album;
  @override
  Option<String> get albumArtUrl;
  @override
  Duration get duration;
  @override
  bool get isPlaying;

  /// Create a copy of SongMeta
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SongMetaImplCopyWith<_$SongMetaImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HostResponse {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) id,
    required TResult Function(List<SongMeta> queue) queue,
    required TResult Function(
            SongMeta currentSong, MediaPlayState playState, Duration playHead)
        playState,
    required TResult Function(String error) error,
    required TResult Function() ok,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? id,
    TResult? Function(List<SongMeta> queue)? queue,
    TResult? Function(
            SongMeta currentSong, MediaPlayState playState, Duration playHead)?
        playState,
    TResult? Function(String error)? error,
    TResult? Function()? ok,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? id,
    TResult Function(List<SongMeta> queue)? queue,
    TResult Function(
            SongMeta currentSong, MediaPlayState playState, Duration playHead)?
        playState,
    TResult Function(String error)? error,
    TResult Function()? ok,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IDResponse value) id,
    required TResult Function(QueueResponse value) queue,
    required TResult Function(PlayStateResponse value) playState,
    required TResult Function(ErrorResponse value) error,
    required TResult Function(OkResponse value) ok,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(IDResponse value)? id,
    TResult? Function(QueueResponse value)? queue,
    TResult? Function(PlayStateResponse value)? playState,
    TResult? Function(ErrorResponse value)? error,
    TResult? Function(OkResponse value)? ok,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IDResponse value)? id,
    TResult Function(QueueResponse value)? queue,
    TResult Function(PlayStateResponse value)? playState,
    TResult Function(ErrorResponse value)? error,
    TResult Function(OkResponse value)? ok,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HostResponseCopyWith<$Res> {
  factory $HostResponseCopyWith(
          HostResponse value, $Res Function(HostResponse) then) =
      _$HostResponseCopyWithImpl<$Res, HostResponse>;
}

/// @nodoc
class _$HostResponseCopyWithImpl<$Res, $Val extends HostResponse>
    implements $HostResponseCopyWith<$Res> {
  _$HostResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HostResponse
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$IDResponseImplCopyWith<$Res> {
  factory _$$IDResponseImplCopyWith(
          _$IDResponseImpl value, $Res Function(_$IDResponseImpl) then) =
      __$$IDResponseImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$IDResponseImplCopyWithImpl<$Res>
    extends _$HostResponseCopyWithImpl<$Res, _$IDResponseImpl>
    implements _$$IDResponseImplCopyWith<$Res> {
  __$$IDResponseImplCopyWithImpl(
      _$IDResponseImpl _value, $Res Function(_$IDResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of HostResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$IDResponseImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$IDResponseImpl implements IDResponse {
  const _$IDResponseImpl(this.id);

  @override
  final String id;

  @override
  String toString() {
    return 'HostResponse.id(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IDResponseImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of HostResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$IDResponseImplCopyWith<_$IDResponseImpl> get copyWith =>
      __$$IDResponseImplCopyWithImpl<_$IDResponseImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) id,
    required TResult Function(List<SongMeta> queue) queue,
    required TResult Function(
            SongMeta currentSong, MediaPlayState playState, Duration playHead)
        playState,
    required TResult Function(String error) error,
    required TResult Function() ok,
  }) {
    return id(this.id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? id,
    TResult? Function(List<SongMeta> queue)? queue,
    TResult? Function(
            SongMeta currentSong, MediaPlayState playState, Duration playHead)?
        playState,
    TResult? Function(String error)? error,
    TResult? Function()? ok,
  }) {
    return id?.call(this.id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? id,
    TResult Function(List<SongMeta> queue)? queue,
    TResult Function(
            SongMeta currentSong, MediaPlayState playState, Duration playHead)?
        playState,
    TResult Function(String error)? error,
    TResult Function()? ok,
    required TResult orElse(),
  }) {
    if (id != null) {
      return id(this.id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IDResponse value) id,
    required TResult Function(QueueResponse value) queue,
    required TResult Function(PlayStateResponse value) playState,
    required TResult Function(ErrorResponse value) error,
    required TResult Function(OkResponse value) ok,
  }) {
    return id(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(IDResponse value)? id,
    TResult? Function(QueueResponse value)? queue,
    TResult? Function(PlayStateResponse value)? playState,
    TResult? Function(ErrorResponse value)? error,
    TResult? Function(OkResponse value)? ok,
  }) {
    return id?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IDResponse value)? id,
    TResult Function(QueueResponse value)? queue,
    TResult Function(PlayStateResponse value)? playState,
    TResult Function(ErrorResponse value)? error,
    TResult Function(OkResponse value)? ok,
    required TResult orElse(),
  }) {
    if (id != null) {
      return id(this);
    }
    return orElse();
  }
}

abstract class IDResponse implements HostResponse {
  const factory IDResponse(final String id) = _$IDResponseImpl;

  String get id;

  /// Create a copy of HostResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$IDResponseImplCopyWith<_$IDResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$QueueResponseImplCopyWith<$Res> {
  factory _$$QueueResponseImplCopyWith(
          _$QueueResponseImpl value, $Res Function(_$QueueResponseImpl) then) =
      __$$QueueResponseImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<SongMeta> queue});
}

/// @nodoc
class __$$QueueResponseImplCopyWithImpl<$Res>
    extends _$HostResponseCopyWithImpl<$Res, _$QueueResponseImpl>
    implements _$$QueueResponseImplCopyWith<$Res> {
  __$$QueueResponseImplCopyWithImpl(
      _$QueueResponseImpl _value, $Res Function(_$QueueResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of HostResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? queue = null,
  }) {
    return _then(_$QueueResponseImpl(
      null == queue
          ? _value._queue
          : queue // ignore: cast_nullable_to_non_nullable
              as List<SongMeta>,
    ));
  }
}

/// @nodoc

class _$QueueResponseImpl implements QueueResponse {
  const _$QueueResponseImpl(final List<SongMeta> queue) : _queue = queue;

  final List<SongMeta> _queue;
  @override
  List<SongMeta> get queue {
    if (_queue is EqualUnmodifiableListView) return _queue;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_queue);
  }

  @override
  String toString() {
    return 'HostResponse.queue(queue: $queue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QueueResponseImpl &&
            const DeepCollectionEquality().equals(other._queue, _queue));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_queue));

  /// Create a copy of HostResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$QueueResponseImplCopyWith<_$QueueResponseImpl> get copyWith =>
      __$$QueueResponseImplCopyWithImpl<_$QueueResponseImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) id,
    required TResult Function(List<SongMeta> queue) queue,
    required TResult Function(
            SongMeta currentSong, MediaPlayState playState, Duration playHead)
        playState,
    required TResult Function(String error) error,
    required TResult Function() ok,
  }) {
    return queue(this.queue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? id,
    TResult? Function(List<SongMeta> queue)? queue,
    TResult? Function(
            SongMeta currentSong, MediaPlayState playState, Duration playHead)?
        playState,
    TResult? Function(String error)? error,
    TResult? Function()? ok,
  }) {
    return queue?.call(this.queue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? id,
    TResult Function(List<SongMeta> queue)? queue,
    TResult Function(
            SongMeta currentSong, MediaPlayState playState, Duration playHead)?
        playState,
    TResult Function(String error)? error,
    TResult Function()? ok,
    required TResult orElse(),
  }) {
    if (queue != null) {
      return queue(this.queue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IDResponse value) id,
    required TResult Function(QueueResponse value) queue,
    required TResult Function(PlayStateResponse value) playState,
    required TResult Function(ErrorResponse value) error,
    required TResult Function(OkResponse value) ok,
  }) {
    return queue(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(IDResponse value)? id,
    TResult? Function(QueueResponse value)? queue,
    TResult? Function(PlayStateResponse value)? playState,
    TResult? Function(ErrorResponse value)? error,
    TResult? Function(OkResponse value)? ok,
  }) {
    return queue?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IDResponse value)? id,
    TResult Function(QueueResponse value)? queue,
    TResult Function(PlayStateResponse value)? playState,
    TResult Function(ErrorResponse value)? error,
    TResult Function(OkResponse value)? ok,
    required TResult orElse(),
  }) {
    if (queue != null) {
      return queue(this);
    }
    return orElse();
  }
}

abstract class QueueResponse implements HostResponse {
  const factory QueueResponse(final List<SongMeta> queue) = _$QueueResponseImpl;

  List<SongMeta> get queue;

  /// Create a copy of HostResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$QueueResponseImplCopyWith<_$QueueResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PlayStateResponseImplCopyWith<$Res> {
  factory _$$PlayStateResponseImplCopyWith(_$PlayStateResponseImpl value,
          $Res Function(_$PlayStateResponseImpl) then) =
      __$$PlayStateResponseImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {SongMeta currentSong, MediaPlayState playState, Duration playHead});

  $SongMetaCopyWith<$Res> get currentSong;
}

/// @nodoc
class __$$PlayStateResponseImplCopyWithImpl<$Res>
    extends _$HostResponseCopyWithImpl<$Res, _$PlayStateResponseImpl>
    implements _$$PlayStateResponseImplCopyWith<$Res> {
  __$$PlayStateResponseImplCopyWithImpl(_$PlayStateResponseImpl _value,
      $Res Function(_$PlayStateResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of HostResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentSong = null,
    Object? playState = null,
    Object? playHead = null,
  }) {
    return _then(_$PlayStateResponseImpl(
      null == currentSong
          ? _value.currentSong
          : currentSong // ignore: cast_nullable_to_non_nullable
              as SongMeta,
      null == playState
          ? _value.playState
          : playState // ignore: cast_nullable_to_non_nullable
              as MediaPlayState,
      null == playHead
          ? _value.playHead
          : playHead // ignore: cast_nullable_to_non_nullable
              as Duration,
    ));
  }

  /// Create a copy of HostResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SongMetaCopyWith<$Res> get currentSong {
    return $SongMetaCopyWith<$Res>(_value.currentSong, (value) {
      return _then(_value.copyWith(currentSong: value));
    });
  }
}

/// @nodoc

class _$PlayStateResponseImpl implements PlayStateResponse {
  const _$PlayStateResponseImpl(
      this.currentSong, this.playState, this.playHead);

  @override
  final SongMeta currentSong;
  @override
  final MediaPlayState playState;
  @override
  final Duration playHead;

  @override
  String toString() {
    return 'HostResponse.playState(currentSong: $currentSong, playState: $playState, playHead: $playHead)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlayStateResponseImpl &&
            (identical(other.currentSong, currentSong) ||
                other.currentSong == currentSong) &&
            (identical(other.playState, playState) ||
                other.playState == playState) &&
            (identical(other.playHead, playHead) ||
                other.playHead == playHead));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, currentSong, playState, playHead);

  /// Create a copy of HostResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PlayStateResponseImplCopyWith<_$PlayStateResponseImpl> get copyWith =>
      __$$PlayStateResponseImplCopyWithImpl<_$PlayStateResponseImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) id,
    required TResult Function(List<SongMeta> queue) queue,
    required TResult Function(
            SongMeta currentSong, MediaPlayState playState, Duration playHead)
        playState,
    required TResult Function(String error) error,
    required TResult Function() ok,
  }) {
    return playState(currentSong, this.playState, playHead);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? id,
    TResult? Function(List<SongMeta> queue)? queue,
    TResult? Function(
            SongMeta currentSong, MediaPlayState playState, Duration playHead)?
        playState,
    TResult? Function(String error)? error,
    TResult? Function()? ok,
  }) {
    return playState?.call(currentSong, this.playState, playHead);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? id,
    TResult Function(List<SongMeta> queue)? queue,
    TResult Function(
            SongMeta currentSong, MediaPlayState playState, Duration playHead)?
        playState,
    TResult Function(String error)? error,
    TResult Function()? ok,
    required TResult orElse(),
  }) {
    if (playState != null) {
      return playState(currentSong, this.playState, playHead);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IDResponse value) id,
    required TResult Function(QueueResponse value) queue,
    required TResult Function(PlayStateResponse value) playState,
    required TResult Function(ErrorResponse value) error,
    required TResult Function(OkResponse value) ok,
  }) {
    return playState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(IDResponse value)? id,
    TResult? Function(QueueResponse value)? queue,
    TResult? Function(PlayStateResponse value)? playState,
    TResult? Function(ErrorResponse value)? error,
    TResult? Function(OkResponse value)? ok,
  }) {
    return playState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IDResponse value)? id,
    TResult Function(QueueResponse value)? queue,
    TResult Function(PlayStateResponse value)? playState,
    TResult Function(ErrorResponse value)? error,
    TResult Function(OkResponse value)? ok,
    required TResult orElse(),
  }) {
    if (playState != null) {
      return playState(this);
    }
    return orElse();
  }
}

abstract class PlayStateResponse implements HostResponse {
  const factory PlayStateResponse(
      final SongMeta currentSong,
      final MediaPlayState playState,
      final Duration playHead) = _$PlayStateResponseImpl;

  SongMeta get currentSong;
  MediaPlayState get playState;
  Duration get playHead;

  /// Create a copy of HostResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PlayStateResponseImplCopyWith<_$PlayStateResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorResponseImplCopyWith<$Res> {
  factory _$$ErrorResponseImplCopyWith(
          _$ErrorResponseImpl value, $Res Function(_$ErrorResponseImpl) then) =
      __$$ErrorResponseImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$ErrorResponseImplCopyWithImpl<$Res>
    extends _$HostResponseCopyWithImpl<$Res, _$ErrorResponseImpl>
    implements _$$ErrorResponseImplCopyWith<$Res> {
  __$$ErrorResponseImplCopyWithImpl(
      _$ErrorResponseImpl _value, $Res Function(_$ErrorResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of HostResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$ErrorResponseImpl(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorResponseImpl implements ErrorResponse {
  const _$ErrorResponseImpl(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'HostResponse.error(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorResponseImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of HostResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorResponseImplCopyWith<_$ErrorResponseImpl> get copyWith =>
      __$$ErrorResponseImplCopyWithImpl<_$ErrorResponseImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) id,
    required TResult Function(List<SongMeta> queue) queue,
    required TResult Function(
            SongMeta currentSong, MediaPlayState playState, Duration playHead)
        playState,
    required TResult Function(String error) error,
    required TResult Function() ok,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? id,
    TResult? Function(List<SongMeta> queue)? queue,
    TResult? Function(
            SongMeta currentSong, MediaPlayState playState, Duration playHead)?
        playState,
    TResult? Function(String error)? error,
    TResult? Function()? ok,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? id,
    TResult Function(List<SongMeta> queue)? queue,
    TResult Function(
            SongMeta currentSong, MediaPlayState playState, Duration playHead)?
        playState,
    TResult Function(String error)? error,
    TResult Function()? ok,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IDResponse value) id,
    required TResult Function(QueueResponse value) queue,
    required TResult Function(PlayStateResponse value) playState,
    required TResult Function(ErrorResponse value) error,
    required TResult Function(OkResponse value) ok,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(IDResponse value)? id,
    TResult? Function(QueueResponse value)? queue,
    TResult? Function(PlayStateResponse value)? playState,
    TResult? Function(ErrorResponse value)? error,
    TResult? Function(OkResponse value)? ok,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IDResponse value)? id,
    TResult Function(QueueResponse value)? queue,
    TResult Function(PlayStateResponse value)? playState,
    TResult Function(ErrorResponse value)? error,
    TResult Function(OkResponse value)? ok,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ErrorResponse implements HostResponse {
  const factory ErrorResponse(final String error) = _$ErrorResponseImpl;

  String get error;

  /// Create a copy of HostResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorResponseImplCopyWith<_$ErrorResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OkResponseImplCopyWith<$Res> {
  factory _$$OkResponseImplCopyWith(
          _$OkResponseImpl value, $Res Function(_$OkResponseImpl) then) =
      __$$OkResponseImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OkResponseImplCopyWithImpl<$Res>
    extends _$HostResponseCopyWithImpl<$Res, _$OkResponseImpl>
    implements _$$OkResponseImplCopyWith<$Res> {
  __$$OkResponseImplCopyWithImpl(
      _$OkResponseImpl _value, $Res Function(_$OkResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of HostResponse
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$OkResponseImpl implements OkResponse {
  const _$OkResponseImpl();

  @override
  String toString() {
    return 'HostResponse.ok()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OkResponseImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) id,
    required TResult Function(List<SongMeta> queue) queue,
    required TResult Function(
            SongMeta currentSong, MediaPlayState playState, Duration playHead)
        playState,
    required TResult Function(String error) error,
    required TResult Function() ok,
  }) {
    return ok();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? id,
    TResult? Function(List<SongMeta> queue)? queue,
    TResult? Function(
            SongMeta currentSong, MediaPlayState playState, Duration playHead)?
        playState,
    TResult? Function(String error)? error,
    TResult? Function()? ok,
  }) {
    return ok?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? id,
    TResult Function(List<SongMeta> queue)? queue,
    TResult Function(
            SongMeta currentSong, MediaPlayState playState, Duration playHead)?
        playState,
    TResult Function(String error)? error,
    TResult Function()? ok,
    required TResult orElse(),
  }) {
    if (ok != null) {
      return ok();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IDResponse value) id,
    required TResult Function(QueueResponse value) queue,
    required TResult Function(PlayStateResponse value) playState,
    required TResult Function(ErrorResponse value) error,
    required TResult Function(OkResponse value) ok,
  }) {
    return ok(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(IDResponse value)? id,
    TResult? Function(QueueResponse value)? queue,
    TResult? Function(PlayStateResponse value)? playState,
    TResult? Function(ErrorResponse value)? error,
    TResult? Function(OkResponse value)? ok,
  }) {
    return ok?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IDResponse value)? id,
    TResult Function(QueueResponse value)? queue,
    TResult Function(PlayStateResponse value)? playState,
    TResult Function(ErrorResponse value)? error,
    TResult Function(OkResponse value)? ok,
    required TResult orElse(),
  }) {
    if (ok != null) {
      return ok(this);
    }
    return orElse();
  }
}

abstract class OkResponse implements HostResponse {
  const factory OkResponse() = _$OkResponseImpl;
}

/// @nodoc
mixin _$PlayState {
  SongMeta get currentSong => throw _privateConstructorUsedError;
  MediaPlayState get playState => throw _privateConstructorUsedError;
  Duration get playHead => throw _privateConstructorUsedError;
  List<SongMeta> get queue => throw _privateConstructorUsedError;

  /// Create a copy of PlayState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PlayStateCopyWith<PlayState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlayStateCopyWith<$Res> {
  factory $PlayStateCopyWith(PlayState value, $Res Function(PlayState) then) =
      _$PlayStateCopyWithImpl<$Res, PlayState>;
  @useResult
  $Res call(
      {SongMeta currentSong,
      MediaPlayState playState,
      Duration playHead,
      List<SongMeta> queue});

  $SongMetaCopyWith<$Res> get currentSong;
}

/// @nodoc
class _$PlayStateCopyWithImpl<$Res, $Val extends PlayState>
    implements $PlayStateCopyWith<$Res> {
  _$PlayStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PlayState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentSong = null,
    Object? playState = null,
    Object? playHead = null,
    Object? queue = null,
  }) {
    return _then(_value.copyWith(
      currentSong: null == currentSong
          ? _value.currentSong
          : currentSong // ignore: cast_nullable_to_non_nullable
              as SongMeta,
      playState: null == playState
          ? _value.playState
          : playState // ignore: cast_nullable_to_non_nullable
              as MediaPlayState,
      playHead: null == playHead
          ? _value.playHead
          : playHead // ignore: cast_nullable_to_non_nullable
              as Duration,
      queue: null == queue
          ? _value.queue
          : queue // ignore: cast_nullable_to_non_nullable
              as List<SongMeta>,
    ) as $Val);
  }

  /// Create a copy of PlayState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SongMetaCopyWith<$Res> get currentSong {
    return $SongMetaCopyWith<$Res>(_value.currentSong, (value) {
      return _then(_value.copyWith(currentSong: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PlayStateImplCopyWith<$Res>
    implements $PlayStateCopyWith<$Res> {
  factory _$$PlayStateImplCopyWith(
          _$PlayStateImpl value, $Res Function(_$PlayStateImpl) then) =
      __$$PlayStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {SongMeta currentSong,
      MediaPlayState playState,
      Duration playHead,
      List<SongMeta> queue});

  @override
  $SongMetaCopyWith<$Res> get currentSong;
}

/// @nodoc
class __$$PlayStateImplCopyWithImpl<$Res>
    extends _$PlayStateCopyWithImpl<$Res, _$PlayStateImpl>
    implements _$$PlayStateImplCopyWith<$Res> {
  __$$PlayStateImplCopyWithImpl(
      _$PlayStateImpl _value, $Res Function(_$PlayStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of PlayState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentSong = null,
    Object? playState = null,
    Object? playHead = null,
    Object? queue = null,
  }) {
    return _then(_$PlayStateImpl(
      currentSong: null == currentSong
          ? _value.currentSong
          : currentSong // ignore: cast_nullable_to_non_nullable
              as SongMeta,
      playState: null == playState
          ? _value.playState
          : playState // ignore: cast_nullable_to_non_nullable
              as MediaPlayState,
      playHead: null == playHead
          ? _value.playHead
          : playHead // ignore: cast_nullable_to_non_nullable
              as Duration,
      queue: null == queue
          ? _value._queue
          : queue // ignore: cast_nullable_to_non_nullable
              as List<SongMeta>,
    ));
  }
}

/// @nodoc

class _$PlayStateImpl implements _PlayState {
  const _$PlayStateImpl(
      {required this.currentSong,
      required this.playState,
      required this.playHead,
      required final List<SongMeta> queue})
      : _queue = queue;

  @override
  final SongMeta currentSong;
  @override
  final MediaPlayState playState;
  @override
  final Duration playHead;
  final List<SongMeta> _queue;
  @override
  List<SongMeta> get queue {
    if (_queue is EqualUnmodifiableListView) return _queue;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_queue);
  }

  @override
  String toString() {
    return 'PlayState(currentSong: $currentSong, playState: $playState, playHead: $playHead, queue: $queue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlayStateImpl &&
            (identical(other.currentSong, currentSong) ||
                other.currentSong == currentSong) &&
            (identical(other.playState, playState) ||
                other.playState == playState) &&
            (identical(other.playHead, playHead) ||
                other.playHead == playHead) &&
            const DeepCollectionEquality().equals(other._queue, _queue));
  }

  @override
  int get hashCode => Object.hash(runtimeType, currentSong, playState, playHead,
      const DeepCollectionEquality().hash(_queue));

  /// Create a copy of PlayState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PlayStateImplCopyWith<_$PlayStateImpl> get copyWith =>
      __$$PlayStateImplCopyWithImpl<_$PlayStateImpl>(this, _$identity);
}

abstract class _PlayState implements PlayState {
  const factory _PlayState(
      {required final SongMeta currentSong,
      required final MediaPlayState playState,
      required final Duration playHead,
      required final List<SongMeta> queue}) = _$PlayStateImpl;

  @override
  SongMeta get currentSong;
  @override
  MediaPlayState get playState;
  @override
  Duration get playHead;
  @override
  List<SongMeta> get queue;

  /// Create a copy of PlayState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PlayStateImplCopyWith<_$PlayStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
