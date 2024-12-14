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

Client _$ClientFromJson(Map<String, dynamic> json) {
  return _Client.fromJson(json);
}

/// @nodoc
mixin _$Client {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  /// Serializes this Client to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

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
@JsonSerializable()
class _$ClientImpl implements _Client {
  const _$ClientImpl({required this.id, required this.name});

  factory _$ClientImpl.fromJson(Map<String, dynamic> json) =>
      _$$ClientImplFromJson(json);

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

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  /// Create a copy of Client
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ClientImplCopyWith<_$ClientImpl> get copyWith =>
      __$$ClientImplCopyWithImpl<_$ClientImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ClientImplToJson(
      this,
    );
  }
}

abstract class _Client implements Client {
  const factory _Client(
      {required final String id, required final String name}) = _$ClientImpl;

  factory _Client.fromJson(Map<String, dynamic> json) = _$ClientImpl.fromJson;

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

Host _$HostFromJson(Map<String, dynamic> json) {
  return _Host.fromJson(json);
}

/// @nodoc
mixin _$Host {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  Set<MusicSource> get sources => throw _privateConstructorUsedError;

  /// Serializes this Host to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

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
  $Res call({String id, String name, Set<MusicSource> sources});
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
    Object? sources = null,
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
      sources: null == sources
          ? _value.sources
          : sources // ignore: cast_nullable_to_non_nullable
              as Set<MusicSource>,
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
  $Res call({String id, String name, Set<MusicSource> sources});
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
    Object? sources = null,
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
      sources: null == sources
          ? _value._sources
          : sources // ignore: cast_nullable_to_non_nullable
              as Set<MusicSource>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HostImpl implements _Host {
  const _$HostImpl(
      {required this.id,
      required this.name,
      required final Set<MusicSource> sources})
      : _sources = sources;

  factory _$HostImpl.fromJson(Map<String, dynamic> json) =>
      _$$HostImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  final Set<MusicSource> _sources;
  @override
  Set<MusicSource> get sources {
    if (_sources is EqualUnmodifiableSetView) return _sources;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_sources);
  }

  @override
  String toString() {
    return 'Host(id: $id, name: $name, sources: $sources)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HostImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._sources, _sources));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, const DeepCollectionEquality().hash(_sources));

  /// Create a copy of Host
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HostImplCopyWith<_$HostImpl> get copyWith =>
      __$$HostImplCopyWithImpl<_$HostImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HostImplToJson(
      this,
    );
  }
}

abstract class _Host implements Host {
  const factory _Host(
      {required final String id,
      required final String name,
      required final Set<MusicSource> sources}) = _$HostImpl;

  factory _Host.fromJson(Map<String, dynamic> json) = _$HostImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  Set<MusicSource> get sources;

  /// Create a copy of Host
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HostImplCopyWith<_$HostImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SongReference _$SongReferenceFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'spotify':
      return SpotifySong.fromJson(json);
    case 'local':
      return LocalSong.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'SongReference',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$SongReference {
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

  /// Serializes this SongReference to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SongReference
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SongReferenceCopyWith<SongReference> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SongReferenceCopyWith<$Res> {
  factory $SongReferenceCopyWith(
          SongReference value, $Res Function(SongReference) then) =
      _$SongReferenceCopyWithImpl<$Res, SongReference>;
  @useResult
  $Res call({String songId});
}

/// @nodoc
class _$SongReferenceCopyWithImpl<$Res, $Val extends SongReference>
    implements $SongReferenceCopyWith<$Res> {
  _$SongReferenceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SongReference
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
    implements $SongReferenceCopyWith<$Res> {
  factory _$$SpotifySongImplCopyWith(
          _$SpotifySongImpl value, $Res Function(_$SpotifySongImpl) then) =
      __$$SpotifySongImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String songId});
}

/// @nodoc
class __$$SpotifySongImplCopyWithImpl<$Res>
    extends _$SongReferenceCopyWithImpl<$Res, _$SpotifySongImpl>
    implements _$$SpotifySongImplCopyWith<$Res> {
  __$$SpotifySongImplCopyWithImpl(
      _$SpotifySongImpl _value, $Res Function(_$SpotifySongImpl) _then)
      : super(_value, _then);

  /// Create a copy of SongReference
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
@JsonSerializable()
class _$SpotifySongImpl implements SpotifySong {
  const _$SpotifySongImpl(this.songId, {final String? $type})
      : $type = $type ?? 'spotify';

  factory _$SpotifySongImpl.fromJson(Map<String, dynamic> json) =>
      _$$SpotifySongImplFromJson(json);

  @override
  final String songId;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'SongReference.spotify(songId: $songId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpotifySongImpl &&
            (identical(other.songId, songId) || other.songId == songId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, songId);

  /// Create a copy of SongReference
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

  @override
  Map<String, dynamic> toJson() {
    return _$$SpotifySongImplToJson(
      this,
    );
  }
}

abstract class SpotifySong implements SongReference {
  const factory SpotifySong(final String songId) = _$SpotifySongImpl;

  factory SpotifySong.fromJson(Map<String, dynamic> json) =
      _$SpotifySongImpl.fromJson;

  @override
  String get songId;

  /// Create a copy of SongReference
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SpotifySongImplCopyWith<_$SpotifySongImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LocalSongImplCopyWith<$Res>
    implements $SongReferenceCopyWith<$Res> {
  factory _$$LocalSongImplCopyWith(
          _$LocalSongImpl value, $Res Function(_$LocalSongImpl) then) =
      __$$LocalSongImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String songId});
}

/// @nodoc
class __$$LocalSongImplCopyWithImpl<$Res>
    extends _$SongReferenceCopyWithImpl<$Res, _$LocalSongImpl>
    implements _$$LocalSongImplCopyWith<$Res> {
  __$$LocalSongImplCopyWithImpl(
      _$LocalSongImpl _value, $Res Function(_$LocalSongImpl) _then)
      : super(_value, _then);

  /// Create a copy of SongReference
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
@JsonSerializable()
class _$LocalSongImpl implements LocalSong {
  const _$LocalSongImpl(this.songId, {final String? $type})
      : $type = $type ?? 'local';

  factory _$LocalSongImpl.fromJson(Map<String, dynamic> json) =>
      _$$LocalSongImplFromJson(json);

  @override
  final String songId;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'SongReference.local(songId: $songId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocalSongImpl &&
            (identical(other.songId, songId) || other.songId == songId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, songId);

  /// Create a copy of SongReference
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

  @override
  Map<String, dynamic> toJson() {
    return _$$LocalSongImplToJson(
      this,
    );
  }
}

abstract class LocalSong implements SongReference {
  const factory LocalSong(final String songId) = _$LocalSongImpl;

  factory LocalSong.fromJson(Map<String, dynamic> json) =
      _$LocalSongImpl.fromJson;

  @override
  String get songId;

  /// Create a copy of SongReference
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LocalSongImplCopyWith<_$LocalSongImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DeviceCommand _$DeviceCommandFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'connect':
      return Connect.fromJson(json);
    case 'requestId':
      return RequestID.fromJson(json);
    case 'requestState':
      return RequestState.fromJson(json);
    case 'requestQueue':
      return RequestQueue.fromJson(json);
    case 'mediaCommand':
      return MediaCommand.fromJson(json);
    case 'setVolume':
      return SetVolume.fromJson(json);
    case 'playSong':
      return PlaySong.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'DeviceCommand',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$DeviceCommand {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Client client) connect,
    required TResult Function() requestId,
    required TResult Function() requestState,
    required TResult Function() requestQueue,
    required TResult Function(MediaCommandType command) mediaCommand,
    required TResult Function(int volume) setVolume,
    required TResult Function(SongReference songMeta) playSong,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Client client)? connect,
    TResult? Function()? requestId,
    TResult? Function()? requestState,
    TResult? Function()? requestQueue,
    TResult? Function(MediaCommandType command)? mediaCommand,
    TResult? Function(int volume)? setVolume,
    TResult? Function(SongReference songMeta)? playSong,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Client client)? connect,
    TResult Function()? requestId,
    TResult Function()? requestState,
    TResult Function()? requestQueue,
    TResult Function(MediaCommandType command)? mediaCommand,
    TResult Function(int volume)? setVolume,
    TResult Function(SongReference songMeta)? playSong,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Connect value) connect,
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
    TResult? Function(Connect value)? connect,
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
    TResult Function(Connect value)? connect,
    TResult Function(RequestID value)? requestId,
    TResult Function(RequestState value)? requestState,
    TResult Function(RequestQueue value)? requestQueue,
    TResult Function(MediaCommand value)? mediaCommand,
    TResult Function(SetVolume value)? setVolume,
    TResult Function(PlaySong value)? playSong,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this DeviceCommand to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
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
abstract class _$$ConnectImplCopyWith<$Res> {
  factory _$$ConnectImplCopyWith(
          _$ConnectImpl value, $Res Function(_$ConnectImpl) then) =
      __$$ConnectImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Client client});

  $ClientCopyWith<$Res> get client;
}

/// @nodoc
class __$$ConnectImplCopyWithImpl<$Res>
    extends _$DeviceCommandCopyWithImpl<$Res, _$ConnectImpl>
    implements _$$ConnectImplCopyWith<$Res> {
  __$$ConnectImplCopyWithImpl(
      _$ConnectImpl _value, $Res Function(_$ConnectImpl) _then)
      : super(_value, _then);

  /// Create a copy of DeviceCommand
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? client = null,
  }) {
    return _then(_$ConnectImpl(
      null == client
          ? _value.client
          : client // ignore: cast_nullable_to_non_nullable
              as Client,
    ));
  }

  /// Create a copy of DeviceCommand
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ClientCopyWith<$Res> get client {
    return $ClientCopyWith<$Res>(_value.client, (value) {
      return _then(_value.copyWith(client: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$ConnectImpl implements Connect {
  const _$ConnectImpl(this.client, {final String? $type})
      : $type = $type ?? 'connect';

  factory _$ConnectImpl.fromJson(Map<String, dynamic> json) =>
      _$$ConnectImplFromJson(json);

  @override
  final Client client;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'DeviceCommand.connect(client: $client)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConnectImpl &&
            (identical(other.client, client) || other.client == client));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, client);

  /// Create a copy of DeviceCommand
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ConnectImplCopyWith<_$ConnectImpl> get copyWith =>
      __$$ConnectImplCopyWithImpl<_$ConnectImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Client client) connect,
    required TResult Function() requestId,
    required TResult Function() requestState,
    required TResult Function() requestQueue,
    required TResult Function(MediaCommandType command) mediaCommand,
    required TResult Function(int volume) setVolume,
    required TResult Function(SongReference songMeta) playSong,
  }) {
    return connect(client);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Client client)? connect,
    TResult? Function()? requestId,
    TResult? Function()? requestState,
    TResult? Function()? requestQueue,
    TResult? Function(MediaCommandType command)? mediaCommand,
    TResult? Function(int volume)? setVolume,
    TResult? Function(SongReference songMeta)? playSong,
  }) {
    return connect?.call(client);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Client client)? connect,
    TResult Function()? requestId,
    TResult Function()? requestState,
    TResult Function()? requestQueue,
    TResult Function(MediaCommandType command)? mediaCommand,
    TResult Function(int volume)? setVolume,
    TResult Function(SongReference songMeta)? playSong,
    required TResult orElse(),
  }) {
    if (connect != null) {
      return connect(client);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Connect value) connect,
    required TResult Function(RequestID value) requestId,
    required TResult Function(RequestState value) requestState,
    required TResult Function(RequestQueue value) requestQueue,
    required TResult Function(MediaCommand value) mediaCommand,
    required TResult Function(SetVolume value) setVolume,
    required TResult Function(PlaySong value) playSong,
  }) {
    return connect(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Connect value)? connect,
    TResult? Function(RequestID value)? requestId,
    TResult? Function(RequestState value)? requestState,
    TResult? Function(RequestQueue value)? requestQueue,
    TResult? Function(MediaCommand value)? mediaCommand,
    TResult? Function(SetVolume value)? setVolume,
    TResult? Function(PlaySong value)? playSong,
  }) {
    return connect?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Connect value)? connect,
    TResult Function(RequestID value)? requestId,
    TResult Function(RequestState value)? requestState,
    TResult Function(RequestQueue value)? requestQueue,
    TResult Function(MediaCommand value)? mediaCommand,
    TResult Function(SetVolume value)? setVolume,
    TResult Function(PlaySong value)? playSong,
    required TResult orElse(),
  }) {
    if (connect != null) {
      return connect(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ConnectImplToJson(
      this,
    );
  }
}

abstract class Connect implements DeviceCommand {
  const factory Connect(final Client client) = _$ConnectImpl;

  factory Connect.fromJson(Map<String, dynamic> json) = _$ConnectImpl.fromJson;

  Client get client;

  /// Create a copy of DeviceCommand
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ConnectImplCopyWith<_$ConnectImpl> get copyWith =>
      throw _privateConstructorUsedError;
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
@JsonSerializable()
class _$RequestIDImpl implements RequestID {
  const _$RequestIDImpl({final String? $type}) : $type = $type ?? 'requestId';

  factory _$RequestIDImpl.fromJson(Map<String, dynamic> json) =>
      _$$RequestIDImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'DeviceCommand.requestId()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RequestIDImpl);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Client client) connect,
    required TResult Function() requestId,
    required TResult Function() requestState,
    required TResult Function() requestQueue,
    required TResult Function(MediaCommandType command) mediaCommand,
    required TResult Function(int volume) setVolume,
    required TResult Function(SongReference songMeta) playSong,
  }) {
    return requestId();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Client client)? connect,
    TResult? Function()? requestId,
    TResult? Function()? requestState,
    TResult? Function()? requestQueue,
    TResult? Function(MediaCommandType command)? mediaCommand,
    TResult? Function(int volume)? setVolume,
    TResult? Function(SongReference songMeta)? playSong,
  }) {
    return requestId?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Client client)? connect,
    TResult Function()? requestId,
    TResult Function()? requestState,
    TResult Function()? requestQueue,
    TResult Function(MediaCommandType command)? mediaCommand,
    TResult Function(int volume)? setVolume,
    TResult Function(SongReference songMeta)? playSong,
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
    required TResult Function(Connect value) connect,
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
    TResult? Function(Connect value)? connect,
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
    TResult Function(Connect value)? connect,
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

  @override
  Map<String, dynamic> toJson() {
    return _$$RequestIDImplToJson(
      this,
    );
  }
}

abstract class RequestID implements DeviceCommand {
  const factory RequestID() = _$RequestIDImpl;

  factory RequestID.fromJson(Map<String, dynamic> json) =
      _$RequestIDImpl.fromJson;
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
@JsonSerializable()
class _$RequestStateImpl implements RequestState {
  const _$RequestStateImpl({final String? $type})
      : $type = $type ?? 'requestState';

  factory _$RequestStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$RequestStateImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'DeviceCommand.requestState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RequestStateImpl);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Client client) connect,
    required TResult Function() requestId,
    required TResult Function() requestState,
    required TResult Function() requestQueue,
    required TResult Function(MediaCommandType command) mediaCommand,
    required TResult Function(int volume) setVolume,
    required TResult Function(SongReference songMeta) playSong,
  }) {
    return requestState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Client client)? connect,
    TResult? Function()? requestId,
    TResult? Function()? requestState,
    TResult? Function()? requestQueue,
    TResult? Function(MediaCommandType command)? mediaCommand,
    TResult? Function(int volume)? setVolume,
    TResult? Function(SongReference songMeta)? playSong,
  }) {
    return requestState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Client client)? connect,
    TResult Function()? requestId,
    TResult Function()? requestState,
    TResult Function()? requestQueue,
    TResult Function(MediaCommandType command)? mediaCommand,
    TResult Function(int volume)? setVolume,
    TResult Function(SongReference songMeta)? playSong,
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
    required TResult Function(Connect value) connect,
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
    TResult? Function(Connect value)? connect,
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
    TResult Function(Connect value)? connect,
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

  @override
  Map<String, dynamic> toJson() {
    return _$$RequestStateImplToJson(
      this,
    );
  }
}

abstract class RequestState implements DeviceCommand {
  const factory RequestState() = _$RequestStateImpl;

  factory RequestState.fromJson(Map<String, dynamic> json) =
      _$RequestStateImpl.fromJson;
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
@JsonSerializable()
class _$RequestQueueImpl implements RequestQueue {
  const _$RequestQueueImpl({final String? $type})
      : $type = $type ?? 'requestQueue';

  factory _$RequestQueueImpl.fromJson(Map<String, dynamic> json) =>
      _$$RequestQueueImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'DeviceCommand.requestQueue()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RequestQueueImpl);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Client client) connect,
    required TResult Function() requestId,
    required TResult Function() requestState,
    required TResult Function() requestQueue,
    required TResult Function(MediaCommandType command) mediaCommand,
    required TResult Function(int volume) setVolume,
    required TResult Function(SongReference songMeta) playSong,
  }) {
    return requestQueue();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Client client)? connect,
    TResult? Function()? requestId,
    TResult? Function()? requestState,
    TResult? Function()? requestQueue,
    TResult? Function(MediaCommandType command)? mediaCommand,
    TResult? Function(int volume)? setVolume,
    TResult? Function(SongReference songMeta)? playSong,
  }) {
    return requestQueue?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Client client)? connect,
    TResult Function()? requestId,
    TResult Function()? requestState,
    TResult Function()? requestQueue,
    TResult Function(MediaCommandType command)? mediaCommand,
    TResult Function(int volume)? setVolume,
    TResult Function(SongReference songMeta)? playSong,
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
    required TResult Function(Connect value) connect,
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
    TResult? Function(Connect value)? connect,
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
    TResult Function(Connect value)? connect,
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

  @override
  Map<String, dynamic> toJson() {
    return _$$RequestQueueImplToJson(
      this,
    );
  }
}

abstract class RequestQueue implements DeviceCommand {
  const factory RequestQueue() = _$RequestQueueImpl;

  factory RequestQueue.fromJson(Map<String, dynamic> json) =
      _$RequestQueueImpl.fromJson;
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
@JsonSerializable()
class _$MediaCommandImpl implements MediaCommand {
  const _$MediaCommandImpl(this.command, {final String? $type})
      : $type = $type ?? 'mediaCommand';

  factory _$MediaCommandImpl.fromJson(Map<String, dynamic> json) =>
      _$$MediaCommandImplFromJson(json);

  @override
  final MediaCommandType command;

  @JsonKey(name: 'runtimeType')
  final String $type;

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

  @JsonKey(includeFromJson: false, includeToJson: false)
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
    required TResult Function(Client client) connect,
    required TResult Function() requestId,
    required TResult Function() requestState,
    required TResult Function() requestQueue,
    required TResult Function(MediaCommandType command) mediaCommand,
    required TResult Function(int volume) setVolume,
    required TResult Function(SongReference songMeta) playSong,
  }) {
    return mediaCommand(command);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Client client)? connect,
    TResult? Function()? requestId,
    TResult? Function()? requestState,
    TResult? Function()? requestQueue,
    TResult? Function(MediaCommandType command)? mediaCommand,
    TResult? Function(int volume)? setVolume,
    TResult? Function(SongReference songMeta)? playSong,
  }) {
    return mediaCommand?.call(command);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Client client)? connect,
    TResult Function()? requestId,
    TResult Function()? requestState,
    TResult Function()? requestQueue,
    TResult Function(MediaCommandType command)? mediaCommand,
    TResult Function(int volume)? setVolume,
    TResult Function(SongReference songMeta)? playSong,
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
    required TResult Function(Connect value) connect,
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
    TResult? Function(Connect value)? connect,
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
    TResult Function(Connect value)? connect,
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

  @override
  Map<String, dynamic> toJson() {
    return _$$MediaCommandImplToJson(
      this,
    );
  }
}

abstract class MediaCommand implements DeviceCommand {
  const factory MediaCommand(final MediaCommandType command) =
      _$MediaCommandImpl;

  factory MediaCommand.fromJson(Map<String, dynamic> json) =
      _$MediaCommandImpl.fromJson;

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
@JsonSerializable()
class _$SetVolumeImpl implements SetVolume {
  const _$SetVolumeImpl(this.volume, {final String? $type})
      : $type = $type ?? 'setVolume';

  factory _$SetVolumeImpl.fromJson(Map<String, dynamic> json) =>
      _$$SetVolumeImplFromJson(json);

  @override
  final int volume;

  @JsonKey(name: 'runtimeType')
  final String $type;

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

  @JsonKey(includeFromJson: false, includeToJson: false)
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
    required TResult Function(Client client) connect,
    required TResult Function() requestId,
    required TResult Function() requestState,
    required TResult Function() requestQueue,
    required TResult Function(MediaCommandType command) mediaCommand,
    required TResult Function(int volume) setVolume,
    required TResult Function(SongReference songMeta) playSong,
  }) {
    return setVolume(volume);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Client client)? connect,
    TResult? Function()? requestId,
    TResult? Function()? requestState,
    TResult? Function()? requestQueue,
    TResult? Function(MediaCommandType command)? mediaCommand,
    TResult? Function(int volume)? setVolume,
    TResult? Function(SongReference songMeta)? playSong,
  }) {
    return setVolume?.call(volume);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Client client)? connect,
    TResult Function()? requestId,
    TResult Function()? requestState,
    TResult Function()? requestQueue,
    TResult Function(MediaCommandType command)? mediaCommand,
    TResult Function(int volume)? setVolume,
    TResult Function(SongReference songMeta)? playSong,
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
    required TResult Function(Connect value) connect,
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
    TResult? Function(Connect value)? connect,
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
    TResult Function(Connect value)? connect,
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

  @override
  Map<String, dynamic> toJson() {
    return _$$SetVolumeImplToJson(
      this,
    );
  }
}

abstract class SetVolume implements DeviceCommand {
  const factory SetVolume(final int volume) = _$SetVolumeImpl;

  factory SetVolume.fromJson(Map<String, dynamic> json) =
      _$SetVolumeImpl.fromJson;

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
  $Res call({SongReference songMeta});

  $SongReferenceCopyWith<$Res> get songMeta;
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
              as SongReference,
    ));
  }

  /// Create a copy of DeviceCommand
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SongReferenceCopyWith<$Res> get songMeta {
    return $SongReferenceCopyWith<$Res>(_value.songMeta, (value) {
      return _then(_value.copyWith(songMeta: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$PlaySongImpl implements PlaySong {
  const _$PlaySongImpl(this.songMeta, {final String? $type})
      : $type = $type ?? 'playSong';

  factory _$PlaySongImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlaySongImplFromJson(json);

  @override
  final SongReference songMeta;

  @JsonKey(name: 'runtimeType')
  final String $type;

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

  @JsonKey(includeFromJson: false, includeToJson: false)
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
    required TResult Function(Client client) connect,
    required TResult Function() requestId,
    required TResult Function() requestState,
    required TResult Function() requestQueue,
    required TResult Function(MediaCommandType command) mediaCommand,
    required TResult Function(int volume) setVolume,
    required TResult Function(SongReference songMeta) playSong,
  }) {
    return playSong(songMeta);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Client client)? connect,
    TResult? Function()? requestId,
    TResult? Function()? requestState,
    TResult? Function()? requestQueue,
    TResult? Function(MediaCommandType command)? mediaCommand,
    TResult? Function(int volume)? setVolume,
    TResult? Function(SongReference songMeta)? playSong,
  }) {
    return playSong?.call(songMeta);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Client client)? connect,
    TResult Function()? requestId,
    TResult Function()? requestState,
    TResult Function()? requestQueue,
    TResult Function(MediaCommandType command)? mediaCommand,
    TResult Function(int volume)? setVolume,
    TResult Function(SongReference songMeta)? playSong,
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
    required TResult Function(Connect value) connect,
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
    TResult? Function(Connect value)? connect,
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
    TResult Function(Connect value)? connect,
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

  @override
  Map<String, dynamic> toJson() {
    return _$$PlaySongImplToJson(
      this,
    );
  }
}

abstract class PlaySong implements DeviceCommand {
  const factory PlaySong(final SongReference songMeta) = _$PlaySongImpl;

  factory PlaySong.fromJson(Map<String, dynamic> json) =
      _$PlaySongImpl.fromJson;

  SongReference get songMeta;

  /// Create a copy of DeviceCommand
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PlaySongImplCopyWith<_$PlaySongImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SongMeta _$SongMetaFromJson(Map<String, dynamic> json) {
  return _SongMeta.fromJson(json);
}

/// @nodoc
mixin _$SongMeta {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get artist => throw _privateConstructorUsedError;
  String get album => throw _privateConstructorUsedError;
  String? get albumArtUrl => throw _privateConstructorUsedError;
  Duration get duration => throw _privateConstructorUsedError;
  SongReference get reference => throw _privateConstructorUsedError;

  /// Serializes this SongMeta to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

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
      String? albumArtUrl,
      Duration duration,
      SongReference reference});

  $SongReferenceCopyWith<$Res> get reference;
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
    Object? albumArtUrl = freezed,
    Object? duration = null,
    Object? reference = null,
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
      albumArtUrl: freezed == albumArtUrl
          ? _value.albumArtUrl
          : albumArtUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as Duration,
      reference: null == reference
          ? _value.reference
          : reference // ignore: cast_nullable_to_non_nullable
              as SongReference,
    ) as $Val);
  }

  /// Create a copy of SongMeta
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SongReferenceCopyWith<$Res> get reference {
    return $SongReferenceCopyWith<$Res>(_value.reference, (value) {
      return _then(_value.copyWith(reference: value) as $Val);
    });
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
      String? albumArtUrl,
      Duration duration,
      SongReference reference});

  @override
  $SongReferenceCopyWith<$Res> get reference;
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
    Object? albumArtUrl = freezed,
    Object? duration = null,
    Object? reference = null,
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
      albumArtUrl: freezed == albumArtUrl
          ? _value.albumArtUrl
          : albumArtUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as Duration,
      reference: null == reference
          ? _value.reference
          : reference // ignore: cast_nullable_to_non_nullable
              as SongReference,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SongMetaImpl implements _SongMeta {
  const _$SongMetaImpl(
      {required this.id,
      required this.title,
      required this.artist,
      required this.album,
      required this.albumArtUrl,
      required this.duration,
      required this.reference});

  factory _$SongMetaImpl.fromJson(Map<String, dynamic> json) =>
      _$$SongMetaImplFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String artist;
  @override
  final String album;
  @override
  final String? albumArtUrl;
  @override
  final Duration duration;
  @override
  final SongReference reference;

  @override
  String toString() {
    return 'SongMeta(id: $id, title: $title, artist: $artist, album: $album, albumArtUrl: $albumArtUrl, duration: $duration, reference: $reference)';
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
            (identical(other.reference, reference) ||
                other.reference == reference));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, title, artist, album, albumArtUrl, duration, reference);

  /// Create a copy of SongMeta
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SongMetaImplCopyWith<_$SongMetaImpl> get copyWith =>
      __$$SongMetaImplCopyWithImpl<_$SongMetaImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SongMetaImplToJson(
      this,
    );
  }
}

abstract class _SongMeta implements SongMeta {
  const factory _SongMeta(
      {required final String id,
      required final String title,
      required final String artist,
      required final String album,
      required final String? albumArtUrl,
      required final Duration duration,
      required final SongReference reference}) = _$SongMetaImpl;

  factory _SongMeta.fromJson(Map<String, dynamic> json) =
      _$SongMetaImpl.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get artist;
  @override
  String get album;
  @override
  String? get albumArtUrl;
  @override
  Duration get duration;
  @override
  SongReference get reference;

  /// Create a copy of SongMeta
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SongMetaImplCopyWith<_$SongMetaImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

HostResponse _$HostResponseFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'connect':
      return ConnectResponse.fromJson(json);
    case 'id':
      return IDResponse.fromJson(json);
    case 'queue':
      return QueueResponse.fromJson(json);
    case 'playState':
      return PlayStateResponse.fromJson(json);
    case 'error':
      return ErrorResponse.fromJson(json);
    case 'ok':
      return OkResponse.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'HostResponse',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$HostResponse {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Host host) connect,
    required TResult Function(String id) id,
    required TResult Function(List<(String, SongMeta)> queue) queue,
    required TResult Function(
            SongMeta currentSong, MediaPlayState playState, Duration playHead)
        playState,
    required TResult Function(String error) error,
    required TResult Function() ok,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Host host)? connect,
    TResult? Function(String id)? id,
    TResult? Function(List<(String, SongMeta)> queue)? queue,
    TResult? Function(
            SongMeta currentSong, MediaPlayState playState, Duration playHead)?
        playState,
    TResult? Function(String error)? error,
    TResult? Function()? ok,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Host host)? connect,
    TResult Function(String id)? id,
    TResult Function(List<(String, SongMeta)> queue)? queue,
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
    required TResult Function(ConnectResponse value) connect,
    required TResult Function(IDResponse value) id,
    required TResult Function(QueueResponse value) queue,
    required TResult Function(PlayStateResponse value) playState,
    required TResult Function(ErrorResponse value) error,
    required TResult Function(OkResponse value) ok,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ConnectResponse value)? connect,
    TResult? Function(IDResponse value)? id,
    TResult? Function(QueueResponse value)? queue,
    TResult? Function(PlayStateResponse value)? playState,
    TResult? Function(ErrorResponse value)? error,
    TResult? Function(OkResponse value)? ok,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConnectResponse value)? connect,
    TResult Function(IDResponse value)? id,
    TResult Function(QueueResponse value)? queue,
    TResult Function(PlayStateResponse value)? playState,
    TResult Function(ErrorResponse value)? error,
    TResult Function(OkResponse value)? ok,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this HostResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
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
abstract class _$$ConnectResponseImplCopyWith<$Res> {
  factory _$$ConnectResponseImplCopyWith(_$ConnectResponseImpl value,
          $Res Function(_$ConnectResponseImpl) then) =
      __$$ConnectResponseImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Host host});

  $HostCopyWith<$Res> get host;
}

/// @nodoc
class __$$ConnectResponseImplCopyWithImpl<$Res>
    extends _$HostResponseCopyWithImpl<$Res, _$ConnectResponseImpl>
    implements _$$ConnectResponseImplCopyWith<$Res> {
  __$$ConnectResponseImplCopyWithImpl(
      _$ConnectResponseImpl _value, $Res Function(_$ConnectResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of HostResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? host = null,
  }) {
    return _then(_$ConnectResponseImpl(
      null == host
          ? _value.host
          : host // ignore: cast_nullable_to_non_nullable
              as Host,
    ));
  }

  /// Create a copy of HostResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $HostCopyWith<$Res> get host {
    return $HostCopyWith<$Res>(_value.host, (value) {
      return _then(_value.copyWith(host: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$ConnectResponseImpl implements ConnectResponse {
  const _$ConnectResponseImpl(this.host, {final String? $type})
      : $type = $type ?? 'connect';

  factory _$ConnectResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ConnectResponseImplFromJson(json);

  @override
  final Host host;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'HostResponse.connect(host: $host)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConnectResponseImpl &&
            (identical(other.host, host) || other.host == host));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, host);

  /// Create a copy of HostResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ConnectResponseImplCopyWith<_$ConnectResponseImpl> get copyWith =>
      __$$ConnectResponseImplCopyWithImpl<_$ConnectResponseImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Host host) connect,
    required TResult Function(String id) id,
    required TResult Function(List<(String, SongMeta)> queue) queue,
    required TResult Function(
            SongMeta currentSong, MediaPlayState playState, Duration playHead)
        playState,
    required TResult Function(String error) error,
    required TResult Function() ok,
  }) {
    return connect(host);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Host host)? connect,
    TResult? Function(String id)? id,
    TResult? Function(List<(String, SongMeta)> queue)? queue,
    TResult? Function(
            SongMeta currentSong, MediaPlayState playState, Duration playHead)?
        playState,
    TResult? Function(String error)? error,
    TResult? Function()? ok,
  }) {
    return connect?.call(host);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Host host)? connect,
    TResult Function(String id)? id,
    TResult Function(List<(String, SongMeta)> queue)? queue,
    TResult Function(
            SongMeta currentSong, MediaPlayState playState, Duration playHead)?
        playState,
    TResult Function(String error)? error,
    TResult Function()? ok,
    required TResult orElse(),
  }) {
    if (connect != null) {
      return connect(host);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ConnectResponse value) connect,
    required TResult Function(IDResponse value) id,
    required TResult Function(QueueResponse value) queue,
    required TResult Function(PlayStateResponse value) playState,
    required TResult Function(ErrorResponse value) error,
    required TResult Function(OkResponse value) ok,
  }) {
    return connect(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ConnectResponse value)? connect,
    TResult? Function(IDResponse value)? id,
    TResult? Function(QueueResponse value)? queue,
    TResult? Function(PlayStateResponse value)? playState,
    TResult? Function(ErrorResponse value)? error,
    TResult? Function(OkResponse value)? ok,
  }) {
    return connect?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConnectResponse value)? connect,
    TResult Function(IDResponse value)? id,
    TResult Function(QueueResponse value)? queue,
    TResult Function(PlayStateResponse value)? playState,
    TResult Function(ErrorResponse value)? error,
    TResult Function(OkResponse value)? ok,
    required TResult orElse(),
  }) {
    if (connect != null) {
      return connect(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ConnectResponseImplToJson(
      this,
    );
  }
}

abstract class ConnectResponse implements HostResponse {
  const factory ConnectResponse(final Host host) = _$ConnectResponseImpl;

  factory ConnectResponse.fromJson(Map<String, dynamic> json) =
      _$ConnectResponseImpl.fromJson;

  Host get host;

  /// Create a copy of HostResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ConnectResponseImplCopyWith<_$ConnectResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
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
@JsonSerializable()
class _$IDResponseImpl implements IDResponse {
  const _$IDResponseImpl(this.id, {final String? $type})
      : $type = $type ?? 'id';

  factory _$IDResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$IDResponseImplFromJson(json);

  @override
  final String id;

  @JsonKey(name: 'runtimeType')
  final String $type;

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

  @JsonKey(includeFromJson: false, includeToJson: false)
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
    required TResult Function(Host host) connect,
    required TResult Function(String id) id,
    required TResult Function(List<(String, SongMeta)> queue) queue,
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
    TResult? Function(Host host)? connect,
    TResult? Function(String id)? id,
    TResult? Function(List<(String, SongMeta)> queue)? queue,
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
    TResult Function(Host host)? connect,
    TResult Function(String id)? id,
    TResult Function(List<(String, SongMeta)> queue)? queue,
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
    required TResult Function(ConnectResponse value) connect,
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
    TResult? Function(ConnectResponse value)? connect,
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
    TResult Function(ConnectResponse value)? connect,
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

  @override
  Map<String, dynamic> toJson() {
    return _$$IDResponseImplToJson(
      this,
    );
  }
}

abstract class IDResponse implements HostResponse {
  const factory IDResponse(final String id) = _$IDResponseImpl;

  factory IDResponse.fromJson(Map<String, dynamic> json) =
      _$IDResponseImpl.fromJson;

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
  $Res call({List<(String, SongMeta)> queue});
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
              as List<(String, SongMeta)>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QueueResponseImpl implements QueueResponse {
  const _$QueueResponseImpl(final List<(String, SongMeta)> queue,
      {final String? $type})
      : _queue = queue,
        $type = $type ?? 'queue';

  factory _$QueueResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$QueueResponseImplFromJson(json);

  final List<(String, SongMeta)> _queue;
  @override
  List<(String, SongMeta)> get queue {
    if (_queue is EqualUnmodifiableListView) return _queue;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_queue);
  }

  @JsonKey(name: 'runtimeType')
  final String $type;

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

  @JsonKey(includeFromJson: false, includeToJson: false)
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
    required TResult Function(Host host) connect,
    required TResult Function(String id) id,
    required TResult Function(List<(String, SongMeta)> queue) queue,
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
    TResult? Function(Host host)? connect,
    TResult? Function(String id)? id,
    TResult? Function(List<(String, SongMeta)> queue)? queue,
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
    TResult Function(Host host)? connect,
    TResult Function(String id)? id,
    TResult Function(List<(String, SongMeta)> queue)? queue,
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
    required TResult Function(ConnectResponse value) connect,
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
    TResult? Function(ConnectResponse value)? connect,
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
    TResult Function(ConnectResponse value)? connect,
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

  @override
  Map<String, dynamic> toJson() {
    return _$$QueueResponseImplToJson(
      this,
    );
  }
}

abstract class QueueResponse implements HostResponse {
  const factory QueueResponse(final List<(String, SongMeta)> queue) =
      _$QueueResponseImpl;

  factory QueueResponse.fromJson(Map<String, dynamic> json) =
      _$QueueResponseImpl.fromJson;

  List<(String, SongMeta)> get queue;

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
@JsonSerializable()
class _$PlayStateResponseImpl implements PlayStateResponse {
  const _$PlayStateResponseImpl(this.currentSong, this.playState, this.playHead,
      {final String? $type})
      : $type = $type ?? 'playState';

  factory _$PlayStateResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlayStateResponseImplFromJson(json);

  @override
  final SongMeta currentSong;
  @override
  final MediaPlayState playState;
  @override
  final Duration playHead;

  @JsonKey(name: 'runtimeType')
  final String $type;

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

  @JsonKey(includeFromJson: false, includeToJson: false)
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
    required TResult Function(Host host) connect,
    required TResult Function(String id) id,
    required TResult Function(List<(String, SongMeta)> queue) queue,
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
    TResult? Function(Host host)? connect,
    TResult? Function(String id)? id,
    TResult? Function(List<(String, SongMeta)> queue)? queue,
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
    TResult Function(Host host)? connect,
    TResult Function(String id)? id,
    TResult Function(List<(String, SongMeta)> queue)? queue,
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
    required TResult Function(ConnectResponse value) connect,
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
    TResult? Function(ConnectResponse value)? connect,
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
    TResult Function(ConnectResponse value)? connect,
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

  @override
  Map<String, dynamic> toJson() {
    return _$$PlayStateResponseImplToJson(
      this,
    );
  }
}

abstract class PlayStateResponse implements HostResponse {
  const factory PlayStateResponse(
      final SongMeta currentSong,
      final MediaPlayState playState,
      final Duration playHead) = _$PlayStateResponseImpl;

  factory PlayStateResponse.fromJson(Map<String, dynamic> json) =
      _$PlayStateResponseImpl.fromJson;

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
@JsonSerializable()
class _$ErrorResponseImpl implements ErrorResponse {
  const _$ErrorResponseImpl(this.error, {final String? $type})
      : $type = $type ?? 'error';

  factory _$ErrorResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ErrorResponseImplFromJson(json);

  @override
  final String error;

  @JsonKey(name: 'runtimeType')
  final String $type;

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

  @JsonKey(includeFromJson: false, includeToJson: false)
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
    required TResult Function(Host host) connect,
    required TResult Function(String id) id,
    required TResult Function(List<(String, SongMeta)> queue) queue,
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
    TResult? Function(Host host)? connect,
    TResult? Function(String id)? id,
    TResult? Function(List<(String, SongMeta)> queue)? queue,
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
    TResult Function(Host host)? connect,
    TResult Function(String id)? id,
    TResult Function(List<(String, SongMeta)> queue)? queue,
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
    required TResult Function(ConnectResponse value) connect,
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
    TResult? Function(ConnectResponse value)? connect,
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
    TResult Function(ConnectResponse value)? connect,
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

  @override
  Map<String, dynamic> toJson() {
    return _$$ErrorResponseImplToJson(
      this,
    );
  }
}

abstract class ErrorResponse implements HostResponse {
  const factory ErrorResponse(final String error) = _$ErrorResponseImpl;

  factory ErrorResponse.fromJson(Map<String, dynamic> json) =
      _$ErrorResponseImpl.fromJson;

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
@JsonSerializable()
class _$OkResponseImpl implements OkResponse {
  const _$OkResponseImpl({final String? $type}) : $type = $type ?? 'ok';

  factory _$OkResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$OkResponseImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'HostResponse.ok()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OkResponseImpl);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Host host) connect,
    required TResult Function(String id) id,
    required TResult Function(List<(String, SongMeta)> queue) queue,
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
    TResult? Function(Host host)? connect,
    TResult? Function(String id)? id,
    TResult? Function(List<(String, SongMeta)> queue)? queue,
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
    TResult Function(Host host)? connect,
    TResult Function(String id)? id,
    TResult Function(List<(String, SongMeta)> queue)? queue,
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
    required TResult Function(ConnectResponse value) connect,
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
    TResult? Function(ConnectResponse value)? connect,
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
    TResult Function(ConnectResponse value)? connect,
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

  @override
  Map<String, dynamic> toJson() {
    return _$$OkResponseImplToJson(
      this,
    );
  }
}

abstract class OkResponse implements HostResponse {
  const factory OkResponse() = _$OkResponseImpl;

  factory OkResponse.fromJson(Map<String, dynamic> json) =
      _$OkResponseImpl.fromJson;
}

PlayState _$PlayStateFromJson(Map<String, dynamic> json) {
  return _PlayState.fromJson(json);
}

/// @nodoc
mixin _$PlayState {
  SongMeta get currentSong => throw _privateConstructorUsedError;
  MediaPlayState get playState => throw _privateConstructorUsedError;
  Duration get playHead => throw _privateConstructorUsedError;

  /// Queue of songs that will be played next (not including the currentSong)
  ///
  /// ## Format
  ///
  /// List<(Client or noClient if added by host, SongMeta)>
  List<(Client?, SongMeta)> get queue => throw _privateConstructorUsedError;

  /// Serializes this PlayState to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

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
      List<(Client?, SongMeta)> queue});

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
              as List<(Client?, SongMeta)>,
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
      List<(Client?, SongMeta)> queue});

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
              as List<(Client?, SongMeta)>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PlayStateImpl implements _PlayState {
  const _$PlayStateImpl(
      {required this.currentSong,
      required this.playState,
      required this.playHead,
      required final List<(Client?, SongMeta)> queue})
      : _queue = queue;

  factory _$PlayStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlayStateImplFromJson(json);

  @override
  final SongMeta currentSong;
  @override
  final MediaPlayState playState;
  @override
  final Duration playHead;

  /// Queue of songs that will be played next (not including the currentSong)
  ///
  /// ## Format
  ///
  /// List<(Client or noClient if added by host, SongMeta)>
  final List<(Client?, SongMeta)> _queue;

  /// Queue of songs that will be played next (not including the currentSong)
  ///
  /// ## Format
  ///
  /// List<(Client or noClient if added by host, SongMeta)>
  @override
  List<(Client?, SongMeta)> get queue {
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

  @JsonKey(includeFromJson: false, includeToJson: false)
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

  @override
  Map<String, dynamic> toJson() {
    return _$$PlayStateImplToJson(
      this,
    );
  }
}

abstract class _PlayState implements PlayState {
  const factory _PlayState(
      {required final SongMeta currentSong,
      required final MediaPlayState playState,
      required final Duration playHead,
      required final List<(Client?, SongMeta)> queue}) = _$PlayStateImpl;

  factory _PlayState.fromJson(Map<String, dynamic> json) =
      _$PlayStateImpl.fromJson;

  @override
  SongMeta get currentSong;
  @override
  MediaPlayState get playState;
  @override
  Duration get playHead;

  /// Queue of songs that will be played next (not including the currentSong)
  ///
  /// ## Format
  ///
  /// List<(Client or noClient if added by host, SongMeta)>
  @override
  List<(Client?, SongMeta)> get queue;

  /// Create a copy of PlayState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PlayStateImplCopyWith<_$PlayStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
