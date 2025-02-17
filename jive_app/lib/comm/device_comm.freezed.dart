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
    case 'youtube':
      return YoutubeSong.fromJson(json);
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
    required TResult Function(String songId) youtube,
    required TResult Function(String songId) local,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String songId)? spotify,
    TResult? Function(String songId)? youtube,
    TResult? Function(String songId)? local,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String songId)? spotify,
    TResult Function(String songId)? youtube,
    TResult Function(String songId)? local,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SpotifySong value) spotify,
    required TResult Function(YoutubeSong value) youtube,
    required TResult Function(LocalSong value) local,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SpotifySong value)? spotify,
    TResult? Function(YoutubeSong value)? youtube,
    TResult? Function(LocalSong value)? local,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SpotifySong value)? spotify,
    TResult Function(YoutubeSong value)? youtube,
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
    required TResult Function(String songId) youtube,
    required TResult Function(String songId) local,
  }) {
    return spotify(songId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String songId)? spotify,
    TResult? Function(String songId)? youtube,
    TResult? Function(String songId)? local,
  }) {
    return spotify?.call(songId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String songId)? spotify,
    TResult Function(String songId)? youtube,
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
    required TResult Function(YoutubeSong value) youtube,
    required TResult Function(LocalSong value) local,
  }) {
    return spotify(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SpotifySong value)? spotify,
    TResult? Function(YoutubeSong value)? youtube,
    TResult? Function(LocalSong value)? local,
  }) {
    return spotify?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SpotifySong value)? spotify,
    TResult Function(YoutubeSong value)? youtube,
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
abstract class _$$YoutubeSongImplCopyWith<$Res>
    implements $SongReferenceCopyWith<$Res> {
  factory _$$YoutubeSongImplCopyWith(
          _$YoutubeSongImpl value, $Res Function(_$YoutubeSongImpl) then) =
      __$$YoutubeSongImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String songId});
}

/// @nodoc
class __$$YoutubeSongImplCopyWithImpl<$Res>
    extends _$SongReferenceCopyWithImpl<$Res, _$YoutubeSongImpl>
    implements _$$YoutubeSongImplCopyWith<$Res> {
  __$$YoutubeSongImplCopyWithImpl(
      _$YoutubeSongImpl _value, $Res Function(_$YoutubeSongImpl) _then)
      : super(_value, _then);

  /// Create a copy of SongReference
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? songId = null,
  }) {
    return _then(_$YoutubeSongImpl(
      null == songId
          ? _value.songId
          : songId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$YoutubeSongImpl implements YoutubeSong {
  const _$YoutubeSongImpl(this.songId, {final String? $type})
      : $type = $type ?? 'youtube';

  factory _$YoutubeSongImpl.fromJson(Map<String, dynamic> json) =>
      _$$YoutubeSongImplFromJson(json);

  @override
  final String songId;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'SongReference.youtube(songId: $songId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$YoutubeSongImpl &&
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
  _$$YoutubeSongImplCopyWith<_$YoutubeSongImpl> get copyWith =>
      __$$YoutubeSongImplCopyWithImpl<_$YoutubeSongImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String songId) spotify,
    required TResult Function(String songId) youtube,
    required TResult Function(String songId) local,
  }) {
    return youtube(songId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String songId)? spotify,
    TResult? Function(String songId)? youtube,
    TResult? Function(String songId)? local,
  }) {
    return youtube?.call(songId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String songId)? spotify,
    TResult Function(String songId)? youtube,
    TResult Function(String songId)? local,
    required TResult orElse(),
  }) {
    if (youtube != null) {
      return youtube(songId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SpotifySong value) spotify,
    required TResult Function(YoutubeSong value) youtube,
    required TResult Function(LocalSong value) local,
  }) {
    return youtube(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SpotifySong value)? spotify,
    TResult? Function(YoutubeSong value)? youtube,
    TResult? Function(LocalSong value)? local,
  }) {
    return youtube?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SpotifySong value)? spotify,
    TResult Function(YoutubeSong value)? youtube,
    TResult Function(LocalSong value)? local,
    required TResult orElse(),
  }) {
    if (youtube != null) {
      return youtube(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$YoutubeSongImplToJson(
      this,
    );
  }
}

abstract class YoutubeSong implements SongReference {
  const factory YoutubeSong(final String songId) = _$YoutubeSongImpl;

  factory YoutubeSong.fromJson(Map<String, dynamic> json) =
      _$YoutubeSongImpl.fromJson;

  @override
  String get songId;

  /// Create a copy of SongReference
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$YoutubeSongImplCopyWith<_$YoutubeSongImpl> get copyWith =>
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
    required TResult Function(String songId) youtube,
    required TResult Function(String songId) local,
  }) {
    return local(songId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String songId)? spotify,
    TResult? Function(String songId)? youtube,
    TResult? Function(String songId)? local,
  }) {
    return local?.call(songId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String songId)? spotify,
    TResult Function(String songId)? youtube,
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
    required TResult Function(YoutubeSong value) youtube,
    required TResult Function(LocalSong value) local,
  }) {
    return local(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SpotifySong value)? spotify,
    TResult? Function(YoutubeSong value)? youtube,
    TResult? Function(LocalSong value)? local,
  }) {
    return local?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SpotifySong value)? spotify,
    TResult Function(YoutubeSong value)? youtube,
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
    case 'moveSong':
      return MoveSong.fromJson(json);
    case 'deleteSong':
      return RemoveSong.fromJson(json);
    case 'addSong':
      return AddSong.fromJson(json);
    case 'addSongToStart':
      return AddSongToStart.fromJson(json);
    case 'setVolume':
      return SetVolume.fromJson(json);
    case 'playSong':
      return PlaySong.fromJson(json);
    case 'search':
      return SearchCommand.fromJson(json);

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
    required TResult Function(int oldIdx, int newIdx) moveSong,
    required TResult Function(int idx) deleteSong,
    required TResult Function(SongMeta songMeta) addSong,
    required TResult Function(SongMeta songMeta) addSongToStart,
    required TResult Function(int volume) setVolume,
    required TResult Function(SongMeta songMeta) playSong,
    required TResult Function(String query, MusicSource source, int offset)
        search,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Client client)? connect,
    TResult? Function()? requestId,
    TResult? Function()? requestState,
    TResult? Function()? requestQueue,
    TResult? Function(MediaCommandType command)? mediaCommand,
    TResult? Function(int oldIdx, int newIdx)? moveSong,
    TResult? Function(int idx)? deleteSong,
    TResult? Function(SongMeta songMeta)? addSong,
    TResult? Function(SongMeta songMeta)? addSongToStart,
    TResult? Function(int volume)? setVolume,
    TResult? Function(SongMeta songMeta)? playSong,
    TResult? Function(String query, MusicSource source, int offset)? search,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Client client)? connect,
    TResult Function()? requestId,
    TResult Function()? requestState,
    TResult Function()? requestQueue,
    TResult Function(MediaCommandType command)? mediaCommand,
    TResult Function(int oldIdx, int newIdx)? moveSong,
    TResult Function(int idx)? deleteSong,
    TResult Function(SongMeta songMeta)? addSong,
    TResult Function(SongMeta songMeta)? addSongToStart,
    TResult Function(int volume)? setVolume,
    TResult Function(SongMeta songMeta)? playSong,
    TResult Function(String query, MusicSource source, int offset)? search,
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
    required TResult Function(MoveSong value) moveSong,
    required TResult Function(RemoveSong value) deleteSong,
    required TResult Function(AddSong value) addSong,
    required TResult Function(AddSongToStart value) addSongToStart,
    required TResult Function(SetVolume value) setVolume,
    required TResult Function(PlaySong value) playSong,
    required TResult Function(SearchCommand value) search,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Connect value)? connect,
    TResult? Function(RequestID value)? requestId,
    TResult? Function(RequestState value)? requestState,
    TResult? Function(RequestQueue value)? requestQueue,
    TResult? Function(MediaCommand value)? mediaCommand,
    TResult? Function(MoveSong value)? moveSong,
    TResult? Function(RemoveSong value)? deleteSong,
    TResult? Function(AddSong value)? addSong,
    TResult? Function(AddSongToStart value)? addSongToStart,
    TResult? Function(SetVolume value)? setVolume,
    TResult? Function(PlaySong value)? playSong,
    TResult? Function(SearchCommand value)? search,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Connect value)? connect,
    TResult Function(RequestID value)? requestId,
    TResult Function(RequestState value)? requestState,
    TResult Function(RequestQueue value)? requestQueue,
    TResult Function(MediaCommand value)? mediaCommand,
    TResult Function(MoveSong value)? moveSong,
    TResult Function(RemoveSong value)? deleteSong,
    TResult Function(AddSong value)? addSong,
    TResult Function(AddSongToStart value)? addSongToStart,
    TResult Function(SetVolume value)? setVolume,
    TResult Function(PlaySong value)? playSong,
    TResult Function(SearchCommand value)? search,
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
    required TResult Function(int oldIdx, int newIdx) moveSong,
    required TResult Function(int idx) deleteSong,
    required TResult Function(SongMeta songMeta) addSong,
    required TResult Function(SongMeta songMeta) addSongToStart,
    required TResult Function(int volume) setVolume,
    required TResult Function(SongMeta songMeta) playSong,
    required TResult Function(String query, MusicSource source, int offset)
        search,
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
    TResult? Function(int oldIdx, int newIdx)? moveSong,
    TResult? Function(int idx)? deleteSong,
    TResult? Function(SongMeta songMeta)? addSong,
    TResult? Function(SongMeta songMeta)? addSongToStart,
    TResult? Function(int volume)? setVolume,
    TResult? Function(SongMeta songMeta)? playSong,
    TResult? Function(String query, MusicSource source, int offset)? search,
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
    TResult Function(int oldIdx, int newIdx)? moveSong,
    TResult Function(int idx)? deleteSong,
    TResult Function(SongMeta songMeta)? addSong,
    TResult Function(SongMeta songMeta)? addSongToStart,
    TResult Function(int volume)? setVolume,
    TResult Function(SongMeta songMeta)? playSong,
    TResult Function(String query, MusicSource source, int offset)? search,
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
    required TResult Function(MoveSong value) moveSong,
    required TResult Function(RemoveSong value) deleteSong,
    required TResult Function(AddSong value) addSong,
    required TResult Function(AddSongToStart value) addSongToStart,
    required TResult Function(SetVolume value) setVolume,
    required TResult Function(PlaySong value) playSong,
    required TResult Function(SearchCommand value) search,
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
    TResult? Function(MoveSong value)? moveSong,
    TResult? Function(RemoveSong value)? deleteSong,
    TResult? Function(AddSong value)? addSong,
    TResult? Function(AddSongToStart value)? addSongToStart,
    TResult? Function(SetVolume value)? setVolume,
    TResult? Function(PlaySong value)? playSong,
    TResult? Function(SearchCommand value)? search,
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
    TResult Function(MoveSong value)? moveSong,
    TResult Function(RemoveSong value)? deleteSong,
    TResult Function(AddSong value)? addSong,
    TResult Function(AddSongToStart value)? addSongToStart,
    TResult Function(SetVolume value)? setVolume,
    TResult Function(PlaySong value)? playSong,
    TResult Function(SearchCommand value)? search,
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
    required TResult Function(int oldIdx, int newIdx) moveSong,
    required TResult Function(int idx) deleteSong,
    required TResult Function(SongMeta songMeta) addSong,
    required TResult Function(SongMeta songMeta) addSongToStart,
    required TResult Function(int volume) setVolume,
    required TResult Function(SongMeta songMeta) playSong,
    required TResult Function(String query, MusicSource source, int offset)
        search,
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
    TResult? Function(int oldIdx, int newIdx)? moveSong,
    TResult? Function(int idx)? deleteSong,
    TResult? Function(SongMeta songMeta)? addSong,
    TResult? Function(SongMeta songMeta)? addSongToStart,
    TResult? Function(int volume)? setVolume,
    TResult? Function(SongMeta songMeta)? playSong,
    TResult? Function(String query, MusicSource source, int offset)? search,
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
    TResult Function(int oldIdx, int newIdx)? moveSong,
    TResult Function(int idx)? deleteSong,
    TResult Function(SongMeta songMeta)? addSong,
    TResult Function(SongMeta songMeta)? addSongToStart,
    TResult Function(int volume)? setVolume,
    TResult Function(SongMeta songMeta)? playSong,
    TResult Function(String query, MusicSource source, int offset)? search,
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
    required TResult Function(MoveSong value) moveSong,
    required TResult Function(RemoveSong value) deleteSong,
    required TResult Function(AddSong value) addSong,
    required TResult Function(AddSongToStart value) addSongToStart,
    required TResult Function(SetVolume value) setVolume,
    required TResult Function(PlaySong value) playSong,
    required TResult Function(SearchCommand value) search,
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
    TResult? Function(MoveSong value)? moveSong,
    TResult? Function(RemoveSong value)? deleteSong,
    TResult? Function(AddSong value)? addSong,
    TResult? Function(AddSongToStart value)? addSongToStart,
    TResult? Function(SetVolume value)? setVolume,
    TResult? Function(PlaySong value)? playSong,
    TResult? Function(SearchCommand value)? search,
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
    TResult Function(MoveSong value)? moveSong,
    TResult Function(RemoveSong value)? deleteSong,
    TResult Function(AddSong value)? addSong,
    TResult Function(AddSongToStart value)? addSongToStart,
    TResult Function(SetVolume value)? setVolume,
    TResult Function(PlaySong value)? playSong,
    TResult Function(SearchCommand value)? search,
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
    required TResult Function(int oldIdx, int newIdx) moveSong,
    required TResult Function(int idx) deleteSong,
    required TResult Function(SongMeta songMeta) addSong,
    required TResult Function(SongMeta songMeta) addSongToStart,
    required TResult Function(int volume) setVolume,
    required TResult Function(SongMeta songMeta) playSong,
    required TResult Function(String query, MusicSource source, int offset)
        search,
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
    TResult? Function(int oldIdx, int newIdx)? moveSong,
    TResult? Function(int idx)? deleteSong,
    TResult? Function(SongMeta songMeta)? addSong,
    TResult? Function(SongMeta songMeta)? addSongToStart,
    TResult? Function(int volume)? setVolume,
    TResult? Function(SongMeta songMeta)? playSong,
    TResult? Function(String query, MusicSource source, int offset)? search,
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
    TResult Function(int oldIdx, int newIdx)? moveSong,
    TResult Function(int idx)? deleteSong,
    TResult Function(SongMeta songMeta)? addSong,
    TResult Function(SongMeta songMeta)? addSongToStart,
    TResult Function(int volume)? setVolume,
    TResult Function(SongMeta songMeta)? playSong,
    TResult Function(String query, MusicSource source, int offset)? search,
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
    required TResult Function(MoveSong value) moveSong,
    required TResult Function(RemoveSong value) deleteSong,
    required TResult Function(AddSong value) addSong,
    required TResult Function(AddSongToStart value) addSongToStart,
    required TResult Function(SetVolume value) setVolume,
    required TResult Function(PlaySong value) playSong,
    required TResult Function(SearchCommand value) search,
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
    TResult? Function(MoveSong value)? moveSong,
    TResult? Function(RemoveSong value)? deleteSong,
    TResult? Function(AddSong value)? addSong,
    TResult? Function(AddSongToStart value)? addSongToStart,
    TResult? Function(SetVolume value)? setVolume,
    TResult? Function(PlaySong value)? playSong,
    TResult? Function(SearchCommand value)? search,
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
    TResult Function(MoveSong value)? moveSong,
    TResult Function(RemoveSong value)? deleteSong,
    TResult Function(AddSong value)? addSong,
    TResult Function(AddSongToStart value)? addSongToStart,
    TResult Function(SetVolume value)? setVolume,
    TResult Function(PlaySong value)? playSong,
    TResult Function(SearchCommand value)? search,
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
    required TResult Function(int oldIdx, int newIdx) moveSong,
    required TResult Function(int idx) deleteSong,
    required TResult Function(SongMeta songMeta) addSong,
    required TResult Function(SongMeta songMeta) addSongToStart,
    required TResult Function(int volume) setVolume,
    required TResult Function(SongMeta songMeta) playSong,
    required TResult Function(String query, MusicSource source, int offset)
        search,
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
    TResult? Function(int oldIdx, int newIdx)? moveSong,
    TResult? Function(int idx)? deleteSong,
    TResult? Function(SongMeta songMeta)? addSong,
    TResult? Function(SongMeta songMeta)? addSongToStart,
    TResult? Function(int volume)? setVolume,
    TResult? Function(SongMeta songMeta)? playSong,
    TResult? Function(String query, MusicSource source, int offset)? search,
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
    TResult Function(int oldIdx, int newIdx)? moveSong,
    TResult Function(int idx)? deleteSong,
    TResult Function(SongMeta songMeta)? addSong,
    TResult Function(SongMeta songMeta)? addSongToStart,
    TResult Function(int volume)? setVolume,
    TResult Function(SongMeta songMeta)? playSong,
    TResult Function(String query, MusicSource source, int offset)? search,
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
    required TResult Function(MoveSong value) moveSong,
    required TResult Function(RemoveSong value) deleteSong,
    required TResult Function(AddSong value) addSong,
    required TResult Function(AddSongToStart value) addSongToStart,
    required TResult Function(SetVolume value) setVolume,
    required TResult Function(PlaySong value) playSong,
    required TResult Function(SearchCommand value) search,
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
    TResult? Function(MoveSong value)? moveSong,
    TResult? Function(RemoveSong value)? deleteSong,
    TResult? Function(AddSong value)? addSong,
    TResult? Function(AddSongToStart value)? addSongToStart,
    TResult? Function(SetVolume value)? setVolume,
    TResult? Function(PlaySong value)? playSong,
    TResult? Function(SearchCommand value)? search,
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
    TResult Function(MoveSong value)? moveSong,
    TResult Function(RemoveSong value)? deleteSong,
    TResult Function(AddSong value)? addSong,
    TResult Function(AddSongToStart value)? addSongToStart,
    TResult Function(SetVolume value)? setVolume,
    TResult Function(PlaySong value)? playSong,
    TResult Function(SearchCommand value)? search,
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
    required TResult Function(int oldIdx, int newIdx) moveSong,
    required TResult Function(int idx) deleteSong,
    required TResult Function(SongMeta songMeta) addSong,
    required TResult Function(SongMeta songMeta) addSongToStart,
    required TResult Function(int volume) setVolume,
    required TResult Function(SongMeta songMeta) playSong,
    required TResult Function(String query, MusicSource source, int offset)
        search,
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
    TResult? Function(int oldIdx, int newIdx)? moveSong,
    TResult? Function(int idx)? deleteSong,
    TResult? Function(SongMeta songMeta)? addSong,
    TResult? Function(SongMeta songMeta)? addSongToStart,
    TResult? Function(int volume)? setVolume,
    TResult? Function(SongMeta songMeta)? playSong,
    TResult? Function(String query, MusicSource source, int offset)? search,
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
    TResult Function(int oldIdx, int newIdx)? moveSong,
    TResult Function(int idx)? deleteSong,
    TResult Function(SongMeta songMeta)? addSong,
    TResult Function(SongMeta songMeta)? addSongToStart,
    TResult Function(int volume)? setVolume,
    TResult Function(SongMeta songMeta)? playSong,
    TResult Function(String query, MusicSource source, int offset)? search,
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
    required TResult Function(MoveSong value) moveSong,
    required TResult Function(RemoveSong value) deleteSong,
    required TResult Function(AddSong value) addSong,
    required TResult Function(AddSongToStart value) addSongToStart,
    required TResult Function(SetVolume value) setVolume,
    required TResult Function(PlaySong value) playSong,
    required TResult Function(SearchCommand value) search,
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
    TResult? Function(MoveSong value)? moveSong,
    TResult? Function(RemoveSong value)? deleteSong,
    TResult? Function(AddSong value)? addSong,
    TResult? Function(AddSongToStart value)? addSongToStart,
    TResult? Function(SetVolume value)? setVolume,
    TResult? Function(PlaySong value)? playSong,
    TResult? Function(SearchCommand value)? search,
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
    TResult Function(MoveSong value)? moveSong,
    TResult Function(RemoveSong value)? deleteSong,
    TResult Function(AddSong value)? addSong,
    TResult Function(AddSongToStart value)? addSongToStart,
    TResult Function(SetVolume value)? setVolume,
    TResult Function(PlaySong value)? playSong,
    TResult Function(SearchCommand value)? search,
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
abstract class _$$MoveSongImplCopyWith<$Res> {
  factory _$$MoveSongImplCopyWith(
          _$MoveSongImpl value, $Res Function(_$MoveSongImpl) then) =
      __$$MoveSongImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int oldIdx, int newIdx});
}

/// @nodoc
class __$$MoveSongImplCopyWithImpl<$Res>
    extends _$DeviceCommandCopyWithImpl<$Res, _$MoveSongImpl>
    implements _$$MoveSongImplCopyWith<$Res> {
  __$$MoveSongImplCopyWithImpl(
      _$MoveSongImpl _value, $Res Function(_$MoveSongImpl) _then)
      : super(_value, _then);

  /// Create a copy of DeviceCommand
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? oldIdx = null,
    Object? newIdx = null,
  }) {
    return _then(_$MoveSongImpl(
      null == oldIdx
          ? _value.oldIdx
          : oldIdx // ignore: cast_nullable_to_non_nullable
              as int,
      null == newIdx
          ? _value.newIdx
          : newIdx // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MoveSongImpl implements MoveSong {
  const _$MoveSongImpl(this.oldIdx, this.newIdx, {final String? $type})
      : $type = $type ?? 'moveSong';

  factory _$MoveSongImpl.fromJson(Map<String, dynamic> json) =>
      _$$MoveSongImplFromJson(json);

  @override
  final int oldIdx;
  @override
  final int newIdx;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'DeviceCommand.moveSong(oldIdx: $oldIdx, newIdx: $newIdx)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MoveSongImpl &&
            (identical(other.oldIdx, oldIdx) || other.oldIdx == oldIdx) &&
            (identical(other.newIdx, newIdx) || other.newIdx == newIdx));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, oldIdx, newIdx);

  /// Create a copy of DeviceCommand
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MoveSongImplCopyWith<_$MoveSongImpl> get copyWith =>
      __$$MoveSongImplCopyWithImpl<_$MoveSongImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Client client) connect,
    required TResult Function() requestId,
    required TResult Function() requestState,
    required TResult Function() requestQueue,
    required TResult Function(MediaCommandType command) mediaCommand,
    required TResult Function(int oldIdx, int newIdx) moveSong,
    required TResult Function(int idx) deleteSong,
    required TResult Function(SongMeta songMeta) addSong,
    required TResult Function(SongMeta songMeta) addSongToStart,
    required TResult Function(int volume) setVolume,
    required TResult Function(SongMeta songMeta) playSong,
    required TResult Function(String query, MusicSource source, int offset)
        search,
  }) {
    return moveSong(oldIdx, newIdx);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Client client)? connect,
    TResult? Function()? requestId,
    TResult? Function()? requestState,
    TResult? Function()? requestQueue,
    TResult? Function(MediaCommandType command)? mediaCommand,
    TResult? Function(int oldIdx, int newIdx)? moveSong,
    TResult? Function(int idx)? deleteSong,
    TResult? Function(SongMeta songMeta)? addSong,
    TResult? Function(SongMeta songMeta)? addSongToStart,
    TResult? Function(int volume)? setVolume,
    TResult? Function(SongMeta songMeta)? playSong,
    TResult? Function(String query, MusicSource source, int offset)? search,
  }) {
    return moveSong?.call(oldIdx, newIdx);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Client client)? connect,
    TResult Function()? requestId,
    TResult Function()? requestState,
    TResult Function()? requestQueue,
    TResult Function(MediaCommandType command)? mediaCommand,
    TResult Function(int oldIdx, int newIdx)? moveSong,
    TResult Function(int idx)? deleteSong,
    TResult Function(SongMeta songMeta)? addSong,
    TResult Function(SongMeta songMeta)? addSongToStart,
    TResult Function(int volume)? setVolume,
    TResult Function(SongMeta songMeta)? playSong,
    TResult Function(String query, MusicSource source, int offset)? search,
    required TResult orElse(),
  }) {
    if (moveSong != null) {
      return moveSong(oldIdx, newIdx);
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
    required TResult Function(MoveSong value) moveSong,
    required TResult Function(RemoveSong value) deleteSong,
    required TResult Function(AddSong value) addSong,
    required TResult Function(AddSongToStart value) addSongToStart,
    required TResult Function(SetVolume value) setVolume,
    required TResult Function(PlaySong value) playSong,
    required TResult Function(SearchCommand value) search,
  }) {
    return moveSong(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Connect value)? connect,
    TResult? Function(RequestID value)? requestId,
    TResult? Function(RequestState value)? requestState,
    TResult? Function(RequestQueue value)? requestQueue,
    TResult? Function(MediaCommand value)? mediaCommand,
    TResult? Function(MoveSong value)? moveSong,
    TResult? Function(RemoveSong value)? deleteSong,
    TResult? Function(AddSong value)? addSong,
    TResult? Function(AddSongToStart value)? addSongToStart,
    TResult? Function(SetVolume value)? setVolume,
    TResult? Function(PlaySong value)? playSong,
    TResult? Function(SearchCommand value)? search,
  }) {
    return moveSong?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Connect value)? connect,
    TResult Function(RequestID value)? requestId,
    TResult Function(RequestState value)? requestState,
    TResult Function(RequestQueue value)? requestQueue,
    TResult Function(MediaCommand value)? mediaCommand,
    TResult Function(MoveSong value)? moveSong,
    TResult Function(RemoveSong value)? deleteSong,
    TResult Function(AddSong value)? addSong,
    TResult Function(AddSongToStart value)? addSongToStart,
    TResult Function(SetVolume value)? setVolume,
    TResult Function(PlaySong value)? playSong,
    TResult Function(SearchCommand value)? search,
    required TResult orElse(),
  }) {
    if (moveSong != null) {
      return moveSong(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$MoveSongImplToJson(
      this,
    );
  }
}

abstract class MoveSong implements DeviceCommand {
  const factory MoveSong(final int oldIdx, final int newIdx) = _$MoveSongImpl;

  factory MoveSong.fromJson(Map<String, dynamic> json) =
      _$MoveSongImpl.fromJson;

  int get oldIdx;
  int get newIdx;

  /// Create a copy of DeviceCommand
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MoveSongImplCopyWith<_$MoveSongImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoveSongImplCopyWith<$Res> {
  factory _$$RemoveSongImplCopyWith(
          _$RemoveSongImpl value, $Res Function(_$RemoveSongImpl) then) =
      __$$RemoveSongImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int idx});
}

/// @nodoc
class __$$RemoveSongImplCopyWithImpl<$Res>
    extends _$DeviceCommandCopyWithImpl<$Res, _$RemoveSongImpl>
    implements _$$RemoveSongImplCopyWith<$Res> {
  __$$RemoveSongImplCopyWithImpl(
      _$RemoveSongImpl _value, $Res Function(_$RemoveSongImpl) _then)
      : super(_value, _then);

  /// Create a copy of DeviceCommand
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idx = null,
  }) {
    return _then(_$RemoveSongImpl(
      null == idx
          ? _value.idx
          : idx // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RemoveSongImpl implements RemoveSong {
  const _$RemoveSongImpl(this.idx, {final String? $type})
      : $type = $type ?? 'deleteSong';

  factory _$RemoveSongImpl.fromJson(Map<String, dynamic> json) =>
      _$$RemoveSongImplFromJson(json);

  @override
  final int idx;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'DeviceCommand.deleteSong(idx: $idx)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveSongImpl &&
            (identical(other.idx, idx) || other.idx == idx));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, idx);

  /// Create a copy of DeviceCommand
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoveSongImplCopyWith<_$RemoveSongImpl> get copyWith =>
      __$$RemoveSongImplCopyWithImpl<_$RemoveSongImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Client client) connect,
    required TResult Function() requestId,
    required TResult Function() requestState,
    required TResult Function() requestQueue,
    required TResult Function(MediaCommandType command) mediaCommand,
    required TResult Function(int oldIdx, int newIdx) moveSong,
    required TResult Function(int idx) deleteSong,
    required TResult Function(SongMeta songMeta) addSong,
    required TResult Function(SongMeta songMeta) addSongToStart,
    required TResult Function(int volume) setVolume,
    required TResult Function(SongMeta songMeta) playSong,
    required TResult Function(String query, MusicSource source, int offset)
        search,
  }) {
    return deleteSong(idx);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Client client)? connect,
    TResult? Function()? requestId,
    TResult? Function()? requestState,
    TResult? Function()? requestQueue,
    TResult? Function(MediaCommandType command)? mediaCommand,
    TResult? Function(int oldIdx, int newIdx)? moveSong,
    TResult? Function(int idx)? deleteSong,
    TResult? Function(SongMeta songMeta)? addSong,
    TResult? Function(SongMeta songMeta)? addSongToStart,
    TResult? Function(int volume)? setVolume,
    TResult? Function(SongMeta songMeta)? playSong,
    TResult? Function(String query, MusicSource source, int offset)? search,
  }) {
    return deleteSong?.call(idx);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Client client)? connect,
    TResult Function()? requestId,
    TResult Function()? requestState,
    TResult Function()? requestQueue,
    TResult Function(MediaCommandType command)? mediaCommand,
    TResult Function(int oldIdx, int newIdx)? moveSong,
    TResult Function(int idx)? deleteSong,
    TResult Function(SongMeta songMeta)? addSong,
    TResult Function(SongMeta songMeta)? addSongToStart,
    TResult Function(int volume)? setVolume,
    TResult Function(SongMeta songMeta)? playSong,
    TResult Function(String query, MusicSource source, int offset)? search,
    required TResult orElse(),
  }) {
    if (deleteSong != null) {
      return deleteSong(idx);
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
    required TResult Function(MoveSong value) moveSong,
    required TResult Function(RemoveSong value) deleteSong,
    required TResult Function(AddSong value) addSong,
    required TResult Function(AddSongToStart value) addSongToStart,
    required TResult Function(SetVolume value) setVolume,
    required TResult Function(PlaySong value) playSong,
    required TResult Function(SearchCommand value) search,
  }) {
    return deleteSong(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Connect value)? connect,
    TResult? Function(RequestID value)? requestId,
    TResult? Function(RequestState value)? requestState,
    TResult? Function(RequestQueue value)? requestQueue,
    TResult? Function(MediaCommand value)? mediaCommand,
    TResult? Function(MoveSong value)? moveSong,
    TResult? Function(RemoveSong value)? deleteSong,
    TResult? Function(AddSong value)? addSong,
    TResult? Function(AddSongToStart value)? addSongToStart,
    TResult? Function(SetVolume value)? setVolume,
    TResult? Function(PlaySong value)? playSong,
    TResult? Function(SearchCommand value)? search,
  }) {
    return deleteSong?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Connect value)? connect,
    TResult Function(RequestID value)? requestId,
    TResult Function(RequestState value)? requestState,
    TResult Function(RequestQueue value)? requestQueue,
    TResult Function(MediaCommand value)? mediaCommand,
    TResult Function(MoveSong value)? moveSong,
    TResult Function(RemoveSong value)? deleteSong,
    TResult Function(AddSong value)? addSong,
    TResult Function(AddSongToStart value)? addSongToStart,
    TResult Function(SetVolume value)? setVolume,
    TResult Function(PlaySong value)? playSong,
    TResult Function(SearchCommand value)? search,
    required TResult orElse(),
  }) {
    if (deleteSong != null) {
      return deleteSong(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$RemoveSongImplToJson(
      this,
    );
  }
}

abstract class RemoveSong implements DeviceCommand {
  const factory RemoveSong(final int idx) = _$RemoveSongImpl;

  factory RemoveSong.fromJson(Map<String, dynamic> json) =
      _$RemoveSongImpl.fromJson;

  int get idx;

  /// Create a copy of DeviceCommand
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RemoveSongImplCopyWith<_$RemoveSongImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddSongImplCopyWith<$Res> {
  factory _$$AddSongImplCopyWith(
          _$AddSongImpl value, $Res Function(_$AddSongImpl) then) =
      __$$AddSongImplCopyWithImpl<$Res>;
  @useResult
  $Res call({SongMeta songMeta});

  $SongMetaCopyWith<$Res> get songMeta;
}

/// @nodoc
class __$$AddSongImplCopyWithImpl<$Res>
    extends _$DeviceCommandCopyWithImpl<$Res, _$AddSongImpl>
    implements _$$AddSongImplCopyWith<$Res> {
  __$$AddSongImplCopyWithImpl(
      _$AddSongImpl _value, $Res Function(_$AddSongImpl) _then)
      : super(_value, _then);

  /// Create a copy of DeviceCommand
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? songMeta = null,
  }) {
    return _then(_$AddSongImpl(
      null == songMeta
          ? _value.songMeta
          : songMeta // ignore: cast_nullable_to_non_nullable
              as SongMeta,
    ));
  }

  /// Create a copy of DeviceCommand
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SongMetaCopyWith<$Res> get songMeta {
    return $SongMetaCopyWith<$Res>(_value.songMeta, (value) {
      return _then(_value.copyWith(songMeta: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$AddSongImpl implements AddSong {
  const _$AddSongImpl(this.songMeta, {final String? $type})
      : $type = $type ?? 'addSong';

  factory _$AddSongImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddSongImplFromJson(json);

  @override
  final SongMeta songMeta;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'DeviceCommand.addSong(songMeta: $songMeta)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddSongImpl &&
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
  _$$AddSongImplCopyWith<_$AddSongImpl> get copyWith =>
      __$$AddSongImplCopyWithImpl<_$AddSongImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Client client) connect,
    required TResult Function() requestId,
    required TResult Function() requestState,
    required TResult Function() requestQueue,
    required TResult Function(MediaCommandType command) mediaCommand,
    required TResult Function(int oldIdx, int newIdx) moveSong,
    required TResult Function(int idx) deleteSong,
    required TResult Function(SongMeta songMeta) addSong,
    required TResult Function(SongMeta songMeta) addSongToStart,
    required TResult Function(int volume) setVolume,
    required TResult Function(SongMeta songMeta) playSong,
    required TResult Function(String query, MusicSource source, int offset)
        search,
  }) {
    return addSong(songMeta);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Client client)? connect,
    TResult? Function()? requestId,
    TResult? Function()? requestState,
    TResult? Function()? requestQueue,
    TResult? Function(MediaCommandType command)? mediaCommand,
    TResult? Function(int oldIdx, int newIdx)? moveSong,
    TResult? Function(int idx)? deleteSong,
    TResult? Function(SongMeta songMeta)? addSong,
    TResult? Function(SongMeta songMeta)? addSongToStart,
    TResult? Function(int volume)? setVolume,
    TResult? Function(SongMeta songMeta)? playSong,
    TResult? Function(String query, MusicSource source, int offset)? search,
  }) {
    return addSong?.call(songMeta);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Client client)? connect,
    TResult Function()? requestId,
    TResult Function()? requestState,
    TResult Function()? requestQueue,
    TResult Function(MediaCommandType command)? mediaCommand,
    TResult Function(int oldIdx, int newIdx)? moveSong,
    TResult Function(int idx)? deleteSong,
    TResult Function(SongMeta songMeta)? addSong,
    TResult Function(SongMeta songMeta)? addSongToStart,
    TResult Function(int volume)? setVolume,
    TResult Function(SongMeta songMeta)? playSong,
    TResult Function(String query, MusicSource source, int offset)? search,
    required TResult orElse(),
  }) {
    if (addSong != null) {
      return addSong(songMeta);
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
    required TResult Function(MoveSong value) moveSong,
    required TResult Function(RemoveSong value) deleteSong,
    required TResult Function(AddSong value) addSong,
    required TResult Function(AddSongToStart value) addSongToStart,
    required TResult Function(SetVolume value) setVolume,
    required TResult Function(PlaySong value) playSong,
    required TResult Function(SearchCommand value) search,
  }) {
    return addSong(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Connect value)? connect,
    TResult? Function(RequestID value)? requestId,
    TResult? Function(RequestState value)? requestState,
    TResult? Function(RequestQueue value)? requestQueue,
    TResult? Function(MediaCommand value)? mediaCommand,
    TResult? Function(MoveSong value)? moveSong,
    TResult? Function(RemoveSong value)? deleteSong,
    TResult? Function(AddSong value)? addSong,
    TResult? Function(AddSongToStart value)? addSongToStart,
    TResult? Function(SetVolume value)? setVolume,
    TResult? Function(PlaySong value)? playSong,
    TResult? Function(SearchCommand value)? search,
  }) {
    return addSong?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Connect value)? connect,
    TResult Function(RequestID value)? requestId,
    TResult Function(RequestState value)? requestState,
    TResult Function(RequestQueue value)? requestQueue,
    TResult Function(MediaCommand value)? mediaCommand,
    TResult Function(MoveSong value)? moveSong,
    TResult Function(RemoveSong value)? deleteSong,
    TResult Function(AddSong value)? addSong,
    TResult Function(AddSongToStart value)? addSongToStart,
    TResult Function(SetVolume value)? setVolume,
    TResult Function(PlaySong value)? playSong,
    TResult Function(SearchCommand value)? search,
    required TResult orElse(),
  }) {
    if (addSong != null) {
      return addSong(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$AddSongImplToJson(
      this,
    );
  }
}

abstract class AddSong implements DeviceCommand {
  const factory AddSong(final SongMeta songMeta) = _$AddSongImpl;

  factory AddSong.fromJson(Map<String, dynamic> json) = _$AddSongImpl.fromJson;

  SongMeta get songMeta;

  /// Create a copy of DeviceCommand
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddSongImplCopyWith<_$AddSongImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddSongToStartImplCopyWith<$Res> {
  factory _$$AddSongToStartImplCopyWith(_$AddSongToStartImpl value,
          $Res Function(_$AddSongToStartImpl) then) =
      __$$AddSongToStartImplCopyWithImpl<$Res>;
  @useResult
  $Res call({SongMeta songMeta});

  $SongMetaCopyWith<$Res> get songMeta;
}

/// @nodoc
class __$$AddSongToStartImplCopyWithImpl<$Res>
    extends _$DeviceCommandCopyWithImpl<$Res, _$AddSongToStartImpl>
    implements _$$AddSongToStartImplCopyWith<$Res> {
  __$$AddSongToStartImplCopyWithImpl(
      _$AddSongToStartImpl _value, $Res Function(_$AddSongToStartImpl) _then)
      : super(_value, _then);

  /// Create a copy of DeviceCommand
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? songMeta = null,
  }) {
    return _then(_$AddSongToStartImpl(
      null == songMeta
          ? _value.songMeta
          : songMeta // ignore: cast_nullable_to_non_nullable
              as SongMeta,
    ));
  }

  /// Create a copy of DeviceCommand
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SongMetaCopyWith<$Res> get songMeta {
    return $SongMetaCopyWith<$Res>(_value.songMeta, (value) {
      return _then(_value.copyWith(songMeta: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$AddSongToStartImpl implements AddSongToStart {
  const _$AddSongToStartImpl(this.songMeta, {final String? $type})
      : $type = $type ?? 'addSongToStart';

  factory _$AddSongToStartImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddSongToStartImplFromJson(json);

  @override
  final SongMeta songMeta;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'DeviceCommand.addSongToStart(songMeta: $songMeta)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddSongToStartImpl &&
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
  _$$AddSongToStartImplCopyWith<_$AddSongToStartImpl> get copyWith =>
      __$$AddSongToStartImplCopyWithImpl<_$AddSongToStartImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Client client) connect,
    required TResult Function() requestId,
    required TResult Function() requestState,
    required TResult Function() requestQueue,
    required TResult Function(MediaCommandType command) mediaCommand,
    required TResult Function(int oldIdx, int newIdx) moveSong,
    required TResult Function(int idx) deleteSong,
    required TResult Function(SongMeta songMeta) addSong,
    required TResult Function(SongMeta songMeta) addSongToStart,
    required TResult Function(int volume) setVolume,
    required TResult Function(SongMeta songMeta) playSong,
    required TResult Function(String query, MusicSource source, int offset)
        search,
  }) {
    return addSongToStart(songMeta);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Client client)? connect,
    TResult? Function()? requestId,
    TResult? Function()? requestState,
    TResult? Function()? requestQueue,
    TResult? Function(MediaCommandType command)? mediaCommand,
    TResult? Function(int oldIdx, int newIdx)? moveSong,
    TResult? Function(int idx)? deleteSong,
    TResult? Function(SongMeta songMeta)? addSong,
    TResult? Function(SongMeta songMeta)? addSongToStart,
    TResult? Function(int volume)? setVolume,
    TResult? Function(SongMeta songMeta)? playSong,
    TResult? Function(String query, MusicSource source, int offset)? search,
  }) {
    return addSongToStart?.call(songMeta);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Client client)? connect,
    TResult Function()? requestId,
    TResult Function()? requestState,
    TResult Function()? requestQueue,
    TResult Function(MediaCommandType command)? mediaCommand,
    TResult Function(int oldIdx, int newIdx)? moveSong,
    TResult Function(int idx)? deleteSong,
    TResult Function(SongMeta songMeta)? addSong,
    TResult Function(SongMeta songMeta)? addSongToStart,
    TResult Function(int volume)? setVolume,
    TResult Function(SongMeta songMeta)? playSong,
    TResult Function(String query, MusicSource source, int offset)? search,
    required TResult orElse(),
  }) {
    if (addSongToStart != null) {
      return addSongToStart(songMeta);
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
    required TResult Function(MoveSong value) moveSong,
    required TResult Function(RemoveSong value) deleteSong,
    required TResult Function(AddSong value) addSong,
    required TResult Function(AddSongToStart value) addSongToStart,
    required TResult Function(SetVolume value) setVolume,
    required TResult Function(PlaySong value) playSong,
    required TResult Function(SearchCommand value) search,
  }) {
    return addSongToStart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Connect value)? connect,
    TResult? Function(RequestID value)? requestId,
    TResult? Function(RequestState value)? requestState,
    TResult? Function(RequestQueue value)? requestQueue,
    TResult? Function(MediaCommand value)? mediaCommand,
    TResult? Function(MoveSong value)? moveSong,
    TResult? Function(RemoveSong value)? deleteSong,
    TResult? Function(AddSong value)? addSong,
    TResult? Function(AddSongToStart value)? addSongToStart,
    TResult? Function(SetVolume value)? setVolume,
    TResult? Function(PlaySong value)? playSong,
    TResult? Function(SearchCommand value)? search,
  }) {
    return addSongToStart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Connect value)? connect,
    TResult Function(RequestID value)? requestId,
    TResult Function(RequestState value)? requestState,
    TResult Function(RequestQueue value)? requestQueue,
    TResult Function(MediaCommand value)? mediaCommand,
    TResult Function(MoveSong value)? moveSong,
    TResult Function(RemoveSong value)? deleteSong,
    TResult Function(AddSong value)? addSong,
    TResult Function(AddSongToStart value)? addSongToStart,
    TResult Function(SetVolume value)? setVolume,
    TResult Function(PlaySong value)? playSong,
    TResult Function(SearchCommand value)? search,
    required TResult orElse(),
  }) {
    if (addSongToStart != null) {
      return addSongToStart(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$AddSongToStartImplToJson(
      this,
    );
  }
}

abstract class AddSongToStart implements DeviceCommand {
  const factory AddSongToStart(final SongMeta songMeta) = _$AddSongToStartImpl;

  factory AddSongToStart.fromJson(Map<String, dynamic> json) =
      _$AddSongToStartImpl.fromJson;

  SongMeta get songMeta;

  /// Create a copy of DeviceCommand
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddSongToStartImplCopyWith<_$AddSongToStartImpl> get copyWith =>
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
    required TResult Function(int oldIdx, int newIdx) moveSong,
    required TResult Function(int idx) deleteSong,
    required TResult Function(SongMeta songMeta) addSong,
    required TResult Function(SongMeta songMeta) addSongToStart,
    required TResult Function(int volume) setVolume,
    required TResult Function(SongMeta songMeta) playSong,
    required TResult Function(String query, MusicSource source, int offset)
        search,
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
    TResult? Function(int oldIdx, int newIdx)? moveSong,
    TResult? Function(int idx)? deleteSong,
    TResult? Function(SongMeta songMeta)? addSong,
    TResult? Function(SongMeta songMeta)? addSongToStart,
    TResult? Function(int volume)? setVolume,
    TResult? Function(SongMeta songMeta)? playSong,
    TResult? Function(String query, MusicSource source, int offset)? search,
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
    TResult Function(int oldIdx, int newIdx)? moveSong,
    TResult Function(int idx)? deleteSong,
    TResult Function(SongMeta songMeta)? addSong,
    TResult Function(SongMeta songMeta)? addSongToStart,
    TResult Function(int volume)? setVolume,
    TResult Function(SongMeta songMeta)? playSong,
    TResult Function(String query, MusicSource source, int offset)? search,
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
    required TResult Function(MoveSong value) moveSong,
    required TResult Function(RemoveSong value) deleteSong,
    required TResult Function(AddSong value) addSong,
    required TResult Function(AddSongToStart value) addSongToStart,
    required TResult Function(SetVolume value) setVolume,
    required TResult Function(PlaySong value) playSong,
    required TResult Function(SearchCommand value) search,
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
    TResult? Function(MoveSong value)? moveSong,
    TResult? Function(RemoveSong value)? deleteSong,
    TResult? Function(AddSong value)? addSong,
    TResult? Function(AddSongToStart value)? addSongToStart,
    TResult? Function(SetVolume value)? setVolume,
    TResult? Function(PlaySong value)? playSong,
    TResult? Function(SearchCommand value)? search,
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
    TResult Function(MoveSong value)? moveSong,
    TResult Function(RemoveSong value)? deleteSong,
    TResult Function(AddSong value)? addSong,
    TResult Function(AddSongToStart value)? addSongToStart,
    TResult Function(SetVolume value)? setVolume,
    TResult Function(PlaySong value)? playSong,
    TResult Function(SearchCommand value)? search,
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
  $Res call({SongMeta songMeta});

  $SongMetaCopyWith<$Res> get songMeta;
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
              as SongMeta,
    ));
  }

  /// Create a copy of DeviceCommand
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SongMetaCopyWith<$Res> get songMeta {
    return $SongMetaCopyWith<$Res>(_value.songMeta, (value) {
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
  final SongMeta songMeta;

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
    required TResult Function(int oldIdx, int newIdx) moveSong,
    required TResult Function(int idx) deleteSong,
    required TResult Function(SongMeta songMeta) addSong,
    required TResult Function(SongMeta songMeta) addSongToStart,
    required TResult Function(int volume) setVolume,
    required TResult Function(SongMeta songMeta) playSong,
    required TResult Function(String query, MusicSource source, int offset)
        search,
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
    TResult? Function(int oldIdx, int newIdx)? moveSong,
    TResult? Function(int idx)? deleteSong,
    TResult? Function(SongMeta songMeta)? addSong,
    TResult? Function(SongMeta songMeta)? addSongToStart,
    TResult? Function(int volume)? setVolume,
    TResult? Function(SongMeta songMeta)? playSong,
    TResult? Function(String query, MusicSource source, int offset)? search,
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
    TResult Function(int oldIdx, int newIdx)? moveSong,
    TResult Function(int idx)? deleteSong,
    TResult Function(SongMeta songMeta)? addSong,
    TResult Function(SongMeta songMeta)? addSongToStart,
    TResult Function(int volume)? setVolume,
    TResult Function(SongMeta songMeta)? playSong,
    TResult Function(String query, MusicSource source, int offset)? search,
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
    required TResult Function(MoveSong value) moveSong,
    required TResult Function(RemoveSong value) deleteSong,
    required TResult Function(AddSong value) addSong,
    required TResult Function(AddSongToStart value) addSongToStart,
    required TResult Function(SetVolume value) setVolume,
    required TResult Function(PlaySong value) playSong,
    required TResult Function(SearchCommand value) search,
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
    TResult? Function(MoveSong value)? moveSong,
    TResult? Function(RemoveSong value)? deleteSong,
    TResult? Function(AddSong value)? addSong,
    TResult? Function(AddSongToStart value)? addSongToStart,
    TResult? Function(SetVolume value)? setVolume,
    TResult? Function(PlaySong value)? playSong,
    TResult? Function(SearchCommand value)? search,
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
    TResult Function(MoveSong value)? moveSong,
    TResult Function(RemoveSong value)? deleteSong,
    TResult Function(AddSong value)? addSong,
    TResult Function(AddSongToStart value)? addSongToStart,
    TResult Function(SetVolume value)? setVolume,
    TResult Function(PlaySong value)? playSong,
    TResult Function(SearchCommand value)? search,
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
  const factory PlaySong(final SongMeta songMeta) = _$PlaySongImpl;

  factory PlaySong.fromJson(Map<String, dynamic> json) =
      _$PlaySongImpl.fromJson;

  SongMeta get songMeta;

  /// Create a copy of DeviceCommand
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PlaySongImplCopyWith<_$PlaySongImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SearchCommandImplCopyWith<$Res> {
  factory _$$SearchCommandImplCopyWith(
          _$SearchCommandImpl value, $Res Function(_$SearchCommandImpl) then) =
      __$$SearchCommandImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String query, MusicSource source, int offset});
}

/// @nodoc
class __$$SearchCommandImplCopyWithImpl<$Res>
    extends _$DeviceCommandCopyWithImpl<$Res, _$SearchCommandImpl>
    implements _$$SearchCommandImplCopyWith<$Res> {
  __$$SearchCommandImplCopyWithImpl(
      _$SearchCommandImpl _value, $Res Function(_$SearchCommandImpl) _then)
      : super(_value, _then);

  /// Create a copy of DeviceCommand
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
    Object? source = null,
    Object? offset = null,
  }) {
    return _then(_$SearchCommandImpl(
      null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      null == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as MusicSource,
      null == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SearchCommandImpl implements SearchCommand {
  const _$SearchCommandImpl(this.query, this.source, this.offset,
      {final String? $type})
      : $type = $type ?? 'search';

  factory _$SearchCommandImpl.fromJson(Map<String, dynamic> json) =>
      _$$SearchCommandImplFromJson(json);

  @override
  final String query;
  @override
  final MusicSource source;
  @override
  final int offset;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'DeviceCommand.search(query: $query, source: $source, offset: $offset)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchCommandImpl &&
            (identical(other.query, query) || other.query == query) &&
            (identical(other.source, source) || other.source == source) &&
            (identical(other.offset, offset) || other.offset == offset));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, query, source, offset);

  /// Create a copy of DeviceCommand
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchCommandImplCopyWith<_$SearchCommandImpl> get copyWith =>
      __$$SearchCommandImplCopyWithImpl<_$SearchCommandImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Client client) connect,
    required TResult Function() requestId,
    required TResult Function() requestState,
    required TResult Function() requestQueue,
    required TResult Function(MediaCommandType command) mediaCommand,
    required TResult Function(int oldIdx, int newIdx) moveSong,
    required TResult Function(int idx) deleteSong,
    required TResult Function(SongMeta songMeta) addSong,
    required TResult Function(SongMeta songMeta) addSongToStart,
    required TResult Function(int volume) setVolume,
    required TResult Function(SongMeta songMeta) playSong,
    required TResult Function(String query, MusicSource source, int offset)
        search,
  }) {
    return search(query, source, offset);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Client client)? connect,
    TResult? Function()? requestId,
    TResult? Function()? requestState,
    TResult? Function()? requestQueue,
    TResult? Function(MediaCommandType command)? mediaCommand,
    TResult? Function(int oldIdx, int newIdx)? moveSong,
    TResult? Function(int idx)? deleteSong,
    TResult? Function(SongMeta songMeta)? addSong,
    TResult? Function(SongMeta songMeta)? addSongToStart,
    TResult? Function(int volume)? setVolume,
    TResult? Function(SongMeta songMeta)? playSong,
    TResult? Function(String query, MusicSource source, int offset)? search,
  }) {
    return search?.call(query, source, offset);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Client client)? connect,
    TResult Function()? requestId,
    TResult Function()? requestState,
    TResult Function()? requestQueue,
    TResult Function(MediaCommandType command)? mediaCommand,
    TResult Function(int oldIdx, int newIdx)? moveSong,
    TResult Function(int idx)? deleteSong,
    TResult Function(SongMeta songMeta)? addSong,
    TResult Function(SongMeta songMeta)? addSongToStart,
    TResult Function(int volume)? setVolume,
    TResult Function(SongMeta songMeta)? playSong,
    TResult Function(String query, MusicSource source, int offset)? search,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(query, source, offset);
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
    required TResult Function(MoveSong value) moveSong,
    required TResult Function(RemoveSong value) deleteSong,
    required TResult Function(AddSong value) addSong,
    required TResult Function(AddSongToStart value) addSongToStart,
    required TResult Function(SetVolume value) setVolume,
    required TResult Function(PlaySong value) playSong,
    required TResult Function(SearchCommand value) search,
  }) {
    return search(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Connect value)? connect,
    TResult? Function(RequestID value)? requestId,
    TResult? Function(RequestState value)? requestState,
    TResult? Function(RequestQueue value)? requestQueue,
    TResult? Function(MediaCommand value)? mediaCommand,
    TResult? Function(MoveSong value)? moveSong,
    TResult? Function(RemoveSong value)? deleteSong,
    TResult? Function(AddSong value)? addSong,
    TResult? Function(AddSongToStart value)? addSongToStart,
    TResult? Function(SetVolume value)? setVolume,
    TResult? Function(PlaySong value)? playSong,
    TResult? Function(SearchCommand value)? search,
  }) {
    return search?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Connect value)? connect,
    TResult Function(RequestID value)? requestId,
    TResult Function(RequestState value)? requestState,
    TResult Function(RequestQueue value)? requestQueue,
    TResult Function(MediaCommand value)? mediaCommand,
    TResult Function(MoveSong value)? moveSong,
    TResult Function(RemoveSong value)? deleteSong,
    TResult Function(AddSong value)? addSong,
    TResult Function(AddSongToStart value)? addSongToStart,
    TResult Function(SetVolume value)? setVolume,
    TResult Function(PlaySong value)? playSong,
    TResult Function(SearchCommand value)? search,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$SearchCommandImplToJson(
      this,
    );
  }
}

abstract class SearchCommand implements DeviceCommand {
  const factory SearchCommand(
          final String query, final MusicSource source, final int offset) =
      _$SearchCommandImpl;

  factory SearchCommand.fromJson(Map<String, dynamic> json) =
      _$SearchCommandImpl.fromJson;

  String get query;
  MusicSource get source;
  int get offset;

  /// Create a copy of DeviceCommand
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchCommandImplCopyWith<_$SearchCommandImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SongMeta _$SongMetaFromJson(Map<String, dynamic> json) {
  return _SongMeta.fromJson(json);
}

/// @nodoc
mixin _$SongMeta {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  List<String> get artist => throw _privateConstructorUsedError;
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
      List<String> artist,
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
              as List<String>,
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
      List<String> artist,
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
          ? _value._artist
          : artist // ignore: cast_nullable_to_non_nullable
              as List<String>,
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
      required final List<String> artist,
      required this.album,
      required this.albumArtUrl,
      required this.duration,
      required this.reference})
      : _artist = artist;

  factory _$SongMetaImpl.fromJson(Map<String, dynamic> json) =>
      _$$SongMetaImplFromJson(json);

  @override
  final String id;
  @override
  final String title;
  final List<String> _artist;
  @override
  List<String> get artist {
    if (_artist is EqualUnmodifiableListView) return _artist;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_artist);
  }

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
            const DeepCollectionEquality().equals(other._artist, _artist) &&
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
      runtimeType,
      id,
      title,
      const DeepCollectionEquality().hash(_artist),
      album,
      albumArtUrl,
      duration,
      reference);

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
      required final List<String> artist,
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
  List<String> get artist;
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
    case 'searchResult':
      return SearchResultResponse.fromJson(json);

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
    required TResult Function(List<SongMeta> songs) searchResult,
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
    TResult? Function(List<SongMeta> songs)? searchResult,
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
    TResult Function(List<SongMeta> songs)? searchResult,
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
    required TResult Function(SearchResultResponse value) searchResult,
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
    TResult? Function(SearchResultResponse value)? searchResult,
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
    TResult Function(SearchResultResponse value)? searchResult,
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
    required TResult Function(List<SongMeta> songs) searchResult,
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
    TResult? Function(List<SongMeta> songs)? searchResult,
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
    TResult Function(List<SongMeta> songs)? searchResult,
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
    required TResult Function(SearchResultResponse value) searchResult,
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
    TResult? Function(SearchResultResponse value)? searchResult,
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
    TResult Function(SearchResultResponse value)? searchResult,
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
    required TResult Function(List<SongMeta> songs) searchResult,
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
    TResult? Function(List<SongMeta> songs)? searchResult,
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
    TResult Function(List<SongMeta> songs)? searchResult,
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
    required TResult Function(SearchResultResponse value) searchResult,
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
    TResult? Function(SearchResultResponse value)? searchResult,
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
    TResult Function(SearchResultResponse value)? searchResult,
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
    required TResult Function(List<SongMeta> songs) searchResult,
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
    TResult? Function(List<SongMeta> songs)? searchResult,
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
    TResult Function(List<SongMeta> songs)? searchResult,
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
    required TResult Function(SearchResultResponse value) searchResult,
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
    TResult? Function(SearchResultResponse value)? searchResult,
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
    TResult Function(SearchResultResponse value)? searchResult,
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
    required TResult Function(List<SongMeta> songs) searchResult,
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
    TResult? Function(List<SongMeta> songs)? searchResult,
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
    TResult Function(List<SongMeta> songs)? searchResult,
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
    required TResult Function(SearchResultResponse value) searchResult,
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
    TResult? Function(SearchResultResponse value)? searchResult,
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
    TResult Function(SearchResultResponse value)? searchResult,
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
    required TResult Function(List<SongMeta> songs) searchResult,
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
    TResult? Function(List<SongMeta> songs)? searchResult,
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
    TResult Function(List<SongMeta> songs)? searchResult,
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
    required TResult Function(SearchResultResponse value) searchResult,
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
    TResult? Function(SearchResultResponse value)? searchResult,
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
    TResult Function(SearchResultResponse value)? searchResult,
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
    required TResult Function(List<SongMeta> songs) searchResult,
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
    TResult? Function(List<SongMeta> songs)? searchResult,
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
    TResult Function(List<SongMeta> songs)? searchResult,
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
    required TResult Function(SearchResultResponse value) searchResult,
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
    TResult? Function(SearchResultResponse value)? searchResult,
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
    TResult Function(SearchResultResponse value)? searchResult,
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

/// @nodoc
abstract class _$$SearchResultResponseImplCopyWith<$Res> {
  factory _$$SearchResultResponseImplCopyWith(_$SearchResultResponseImpl value,
          $Res Function(_$SearchResultResponseImpl) then) =
      __$$SearchResultResponseImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<SongMeta> songs});
}

/// @nodoc
class __$$SearchResultResponseImplCopyWithImpl<$Res>
    extends _$HostResponseCopyWithImpl<$Res, _$SearchResultResponseImpl>
    implements _$$SearchResultResponseImplCopyWith<$Res> {
  __$$SearchResultResponseImplCopyWithImpl(_$SearchResultResponseImpl _value,
      $Res Function(_$SearchResultResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of HostResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? songs = null,
  }) {
    return _then(_$SearchResultResponseImpl(
      null == songs
          ? _value._songs
          : songs // ignore: cast_nullable_to_non_nullable
              as List<SongMeta>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SearchResultResponseImpl implements SearchResultResponse {
  const _$SearchResultResponseImpl(final List<SongMeta> songs,
      {final String? $type})
      : _songs = songs,
        $type = $type ?? 'searchResult';

  factory _$SearchResultResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$SearchResultResponseImplFromJson(json);

  final List<SongMeta> _songs;
  @override
  List<SongMeta> get songs {
    if (_songs is EqualUnmodifiableListView) return _songs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_songs);
  }

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'HostResponse.searchResult(songs: $songs)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchResultResponseImpl &&
            const DeepCollectionEquality().equals(other._songs, _songs));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_songs));

  /// Create a copy of HostResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchResultResponseImplCopyWith<_$SearchResultResponseImpl>
      get copyWith =>
          __$$SearchResultResponseImplCopyWithImpl<_$SearchResultResponseImpl>(
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
    required TResult Function(List<SongMeta> songs) searchResult,
  }) {
    return searchResult(songs);
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
    TResult? Function(List<SongMeta> songs)? searchResult,
  }) {
    return searchResult?.call(songs);
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
    TResult Function(List<SongMeta> songs)? searchResult,
    required TResult orElse(),
  }) {
    if (searchResult != null) {
      return searchResult(songs);
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
    required TResult Function(SearchResultResponse value) searchResult,
  }) {
    return searchResult(this);
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
    TResult? Function(SearchResultResponse value)? searchResult,
  }) {
    return searchResult?.call(this);
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
    TResult Function(SearchResultResponse value)? searchResult,
    required TResult orElse(),
  }) {
    if (searchResult != null) {
      return searchResult(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$SearchResultResponseImplToJson(
      this,
    );
  }
}

abstract class SearchResultResponse implements HostResponse {
  const factory SearchResultResponse(final List<SongMeta> songs) =
      _$SearchResultResponseImpl;

  factory SearchResultResponse.fromJson(Map<String, dynamic> json) =
      _$SearchResultResponseImpl.fromJson;

  List<SongMeta> get songs;

  /// Create a copy of HostResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchResultResponseImplCopyWith<_$SearchResultResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

PlayState _$PlayStateFromJson(Map<String, dynamic> json) {
  return _PlayState.fromJson(json);
}

/// @nodoc
mixin _$PlayState {
  SongMeta? get currentSong => throw _privateConstructorUsedError;
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
      {SongMeta? currentSong,
      MediaPlayState playState,
      Duration playHead,
      List<(Client?, SongMeta)> queue});

  $SongMetaCopyWith<$Res>? get currentSong;
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
    Object? currentSong = freezed,
    Object? playState = null,
    Object? playHead = null,
    Object? queue = null,
  }) {
    return _then(_value.copyWith(
      currentSong: freezed == currentSong
          ? _value.currentSong
          : currentSong // ignore: cast_nullable_to_non_nullable
              as SongMeta?,
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
  $SongMetaCopyWith<$Res>? get currentSong {
    if (_value.currentSong == null) {
      return null;
    }

    return $SongMetaCopyWith<$Res>(_value.currentSong!, (value) {
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
      {SongMeta? currentSong,
      MediaPlayState playState,
      Duration playHead,
      List<(Client?, SongMeta)> queue});

  @override
  $SongMetaCopyWith<$Res>? get currentSong;
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
    Object? currentSong = freezed,
    Object? playState = null,
    Object? playHead = null,
    Object? queue = null,
  }) {
    return _then(_$PlayStateImpl(
      currentSong: freezed == currentSong
          ? _value.currentSong
          : currentSong // ignore: cast_nullable_to_non_nullable
              as SongMeta?,
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
  final SongMeta? currentSong;
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
      {required final SongMeta? currentSong,
      required final MediaPlayState playState,
      required final Duration playHead,
      required final List<(Client?, SongMeta)> queue}) = _$PlayStateImpl;

  factory _PlayState.fromJson(Map<String, dynamic> json) =
      _$PlayStateImpl.fromJson;

  @override
  SongMeta? get currentSong;
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
