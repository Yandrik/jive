// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'spotify.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SpotifyTrack _$SpotifyTrackFromJson(Map<String, dynamic> json) {
  return _SpotifyTrack.fromJson(json);
}

/// @nodoc
mixin _$SpotifyTrack {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get uri => throw _privateConstructorUsedError;
  bool get isPlayable => throw _privateConstructorUsedError;
  int get durationMs => throw _privateConstructorUsedError;
  List<SpotifyArtist> get artists => throw _privateConstructorUsedError;
  SpotifyAlbum get album => throw _privateConstructorUsedError;

  /// Serializes this SpotifyTrack to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SpotifyTrack
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SpotifyTrackCopyWith<SpotifyTrack> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpotifyTrackCopyWith<$Res> {
  factory $SpotifyTrackCopyWith(
          SpotifyTrack value, $Res Function(SpotifyTrack) then) =
      _$SpotifyTrackCopyWithImpl<$Res, SpotifyTrack>;
  @useResult
  $Res call(
      {String id,
      String name,
      String uri,
      bool isPlayable,
      int durationMs,
      List<SpotifyArtist> artists,
      SpotifyAlbum album});

  $SpotifyAlbumCopyWith<$Res> get album;
}

/// @nodoc
class _$SpotifyTrackCopyWithImpl<$Res, $Val extends SpotifyTrack>
    implements $SpotifyTrackCopyWith<$Res> {
  _$SpotifyTrackCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SpotifyTrack
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? uri = null,
    Object? isPlayable = null,
    Object? durationMs = null,
    Object? artists = null,
    Object? album = null,
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
      uri: null == uri
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as String,
      isPlayable: null == isPlayable
          ? _value.isPlayable
          : isPlayable // ignore: cast_nullable_to_non_nullable
              as bool,
      durationMs: null == durationMs
          ? _value.durationMs
          : durationMs // ignore: cast_nullable_to_non_nullable
              as int,
      artists: null == artists
          ? _value.artists
          : artists // ignore: cast_nullable_to_non_nullable
              as List<SpotifyArtist>,
      album: null == album
          ? _value.album
          : album // ignore: cast_nullable_to_non_nullable
              as SpotifyAlbum,
    ) as $Val);
  }

  /// Create a copy of SpotifyTrack
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SpotifyAlbumCopyWith<$Res> get album {
    return $SpotifyAlbumCopyWith<$Res>(_value.album, (value) {
      return _then(_value.copyWith(album: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SpotifyTrackImplCopyWith<$Res>
    implements $SpotifyTrackCopyWith<$Res> {
  factory _$$SpotifyTrackImplCopyWith(
          _$SpotifyTrackImpl value, $Res Function(_$SpotifyTrackImpl) then) =
      __$$SpotifyTrackImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String uri,
      bool isPlayable,
      int durationMs,
      List<SpotifyArtist> artists,
      SpotifyAlbum album});

  @override
  $SpotifyAlbumCopyWith<$Res> get album;
}

/// @nodoc
class __$$SpotifyTrackImplCopyWithImpl<$Res>
    extends _$SpotifyTrackCopyWithImpl<$Res, _$SpotifyTrackImpl>
    implements _$$SpotifyTrackImplCopyWith<$Res> {
  __$$SpotifyTrackImplCopyWithImpl(
      _$SpotifyTrackImpl _value, $Res Function(_$SpotifyTrackImpl) _then)
      : super(_value, _then);

  /// Create a copy of SpotifyTrack
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? uri = null,
    Object? isPlayable = null,
    Object? durationMs = null,
    Object? artists = null,
    Object? album = null,
  }) {
    return _then(_$SpotifyTrackImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      uri: null == uri
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as String,
      isPlayable: null == isPlayable
          ? _value.isPlayable
          : isPlayable // ignore: cast_nullable_to_non_nullable
              as bool,
      durationMs: null == durationMs
          ? _value.durationMs
          : durationMs // ignore: cast_nullable_to_non_nullable
              as int,
      artists: null == artists
          ? _value._artists
          : artists // ignore: cast_nullable_to_non_nullable
              as List<SpotifyArtist>,
      album: null == album
          ? _value.album
          : album // ignore: cast_nullable_to_non_nullable
              as SpotifyAlbum,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SpotifyTrackImpl implements _SpotifyTrack {
  const _$SpotifyTrackImpl(
      {required this.id,
      required this.name,
      required this.uri,
      required this.isPlayable,
      required this.durationMs,
      required final List<SpotifyArtist> artists,
      required this.album})
      : _artists = artists;

  factory _$SpotifyTrackImpl.fromJson(Map<String, dynamic> json) =>
      _$$SpotifyTrackImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String uri;
  @override
  final bool isPlayable;
  @override
  final int durationMs;
  final List<SpotifyArtist> _artists;
  @override
  List<SpotifyArtist> get artists {
    if (_artists is EqualUnmodifiableListView) return _artists;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_artists);
  }

  @override
  final SpotifyAlbum album;

  @override
  String toString() {
    return 'SpotifyTrack(id: $id, name: $name, uri: $uri, isPlayable: $isPlayable, durationMs: $durationMs, artists: $artists, album: $album)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpotifyTrackImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.uri, uri) || other.uri == uri) &&
            (identical(other.isPlayable, isPlayable) ||
                other.isPlayable == isPlayable) &&
            (identical(other.durationMs, durationMs) ||
                other.durationMs == durationMs) &&
            const DeepCollectionEquality().equals(other._artists, _artists) &&
            (identical(other.album, album) || other.album == album));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, uri, isPlayable,
      durationMs, const DeepCollectionEquality().hash(_artists), album);

  /// Create a copy of SpotifyTrack
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SpotifyTrackImplCopyWith<_$SpotifyTrackImpl> get copyWith =>
      __$$SpotifyTrackImplCopyWithImpl<_$SpotifyTrackImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SpotifyTrackImplToJson(
      this,
    );
  }
}

abstract class _SpotifyTrack implements SpotifyTrack {
  const factory _SpotifyTrack(
      {required final String id,
      required final String name,
      required final String uri,
      required final bool isPlayable,
      required final int durationMs,
      required final List<SpotifyArtist> artists,
      required final SpotifyAlbum album}) = _$SpotifyTrackImpl;

  factory _SpotifyTrack.fromJson(Map<String, dynamic> json) =
      _$SpotifyTrackImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get uri;
  @override
  bool get isPlayable;
  @override
  int get durationMs;
  @override
  List<SpotifyArtist> get artists;
  @override
  SpotifyAlbum get album;

  /// Create a copy of SpotifyTrack
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SpotifyTrackImplCopyWith<_$SpotifyTrackImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SpotifyArtist _$SpotifyArtistFromJson(Map<String, dynamic> json) {
  return _SpotifyArtist.fromJson(json);
}

/// @nodoc
mixin _$SpotifyArtist {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get uri => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get href => throw _privateConstructorUsedError;

  /// Serializes this SpotifyArtist to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SpotifyArtist
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SpotifyArtistCopyWith<SpotifyArtist> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpotifyArtistCopyWith<$Res> {
  factory $SpotifyArtistCopyWith(
          SpotifyArtist value, $Res Function(SpotifyArtist) then) =
      _$SpotifyArtistCopyWithImpl<$Res, SpotifyArtist>;
  @useResult
  $Res call({String id, String name, String uri, String type, String href});
}

/// @nodoc
class _$SpotifyArtistCopyWithImpl<$Res, $Val extends SpotifyArtist>
    implements $SpotifyArtistCopyWith<$Res> {
  _$SpotifyArtistCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SpotifyArtist
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? uri = null,
    Object? type = null,
    Object? href = null,
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
      uri: null == uri
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      href: null == href
          ? _value.href
          : href // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SpotifyArtistImplCopyWith<$Res>
    implements $SpotifyArtistCopyWith<$Res> {
  factory _$$SpotifyArtistImplCopyWith(
          _$SpotifyArtistImpl value, $Res Function(_$SpotifyArtistImpl) then) =
      __$$SpotifyArtistImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name, String uri, String type, String href});
}

/// @nodoc
class __$$SpotifyArtistImplCopyWithImpl<$Res>
    extends _$SpotifyArtistCopyWithImpl<$Res, _$SpotifyArtistImpl>
    implements _$$SpotifyArtistImplCopyWith<$Res> {
  __$$SpotifyArtistImplCopyWithImpl(
      _$SpotifyArtistImpl _value, $Res Function(_$SpotifyArtistImpl) _then)
      : super(_value, _then);

  /// Create a copy of SpotifyArtist
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? uri = null,
    Object? type = null,
    Object? href = null,
  }) {
    return _then(_$SpotifyArtistImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      uri: null == uri
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      href: null == href
          ? _value.href
          : href // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SpotifyArtistImpl implements _SpotifyArtist {
  const _$SpotifyArtistImpl(
      {required this.id,
      required this.name,
      required this.uri,
      required this.type,
      required this.href});

  factory _$SpotifyArtistImpl.fromJson(Map<String, dynamic> json) =>
      _$$SpotifyArtistImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String uri;
  @override
  final String type;
  @override
  final String href;

  @override
  String toString() {
    return 'SpotifyArtist(id: $id, name: $name, uri: $uri, type: $type, href: $href)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpotifyArtistImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.uri, uri) || other.uri == uri) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.href, href) || other.href == href));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, uri, type, href);

  /// Create a copy of SpotifyArtist
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SpotifyArtistImplCopyWith<_$SpotifyArtistImpl> get copyWith =>
      __$$SpotifyArtistImplCopyWithImpl<_$SpotifyArtistImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SpotifyArtistImplToJson(
      this,
    );
  }
}

abstract class _SpotifyArtist implements SpotifyArtist {
  const factory _SpotifyArtist(
      {required final String id,
      required final String name,
      required final String uri,
      required final String type,
      required final String href}) = _$SpotifyArtistImpl;

  factory _SpotifyArtist.fromJson(Map<String, dynamic> json) =
      _$SpotifyArtistImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get uri;
  @override
  String get type;
  @override
  String get href;

  /// Create a copy of SpotifyArtist
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SpotifyArtistImplCopyWith<_$SpotifyArtistImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SpotifyAlbum _$SpotifyAlbumFromJson(Map<String, dynamic> json) {
  return _SpotifyAlbum.fromJson(json);
}

/// @nodoc
mixin _$SpotifyAlbum {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get uri => throw _privateConstructorUsedError;
  List<SpotifyImage> get images => throw _privateConstructorUsedError;

  /// Serializes this SpotifyAlbum to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SpotifyAlbum
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SpotifyAlbumCopyWith<SpotifyAlbum> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpotifyAlbumCopyWith<$Res> {
  factory $SpotifyAlbumCopyWith(
          SpotifyAlbum value, $Res Function(SpotifyAlbum) then) =
      _$SpotifyAlbumCopyWithImpl<$Res, SpotifyAlbum>;
  @useResult
  $Res call({String id, String name, String uri, List<SpotifyImage> images});
}

/// @nodoc
class _$SpotifyAlbumCopyWithImpl<$Res, $Val extends SpotifyAlbum>
    implements $SpotifyAlbumCopyWith<$Res> {
  _$SpotifyAlbumCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SpotifyAlbum
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? uri = null,
    Object? images = null,
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
      uri: null == uri
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as String,
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<SpotifyImage>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SpotifyAlbumImplCopyWith<$Res>
    implements $SpotifyAlbumCopyWith<$Res> {
  factory _$$SpotifyAlbumImplCopyWith(
          _$SpotifyAlbumImpl value, $Res Function(_$SpotifyAlbumImpl) then) =
      __$$SpotifyAlbumImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name, String uri, List<SpotifyImage> images});
}

/// @nodoc
class __$$SpotifyAlbumImplCopyWithImpl<$Res>
    extends _$SpotifyAlbumCopyWithImpl<$Res, _$SpotifyAlbumImpl>
    implements _$$SpotifyAlbumImplCopyWith<$Res> {
  __$$SpotifyAlbumImplCopyWithImpl(
      _$SpotifyAlbumImpl _value, $Res Function(_$SpotifyAlbumImpl) _then)
      : super(_value, _then);

  /// Create a copy of SpotifyAlbum
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? uri = null,
    Object? images = null,
  }) {
    return _then(_$SpotifyAlbumImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      uri: null == uri
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as String,
      images: null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<SpotifyImage>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SpotifyAlbumImpl implements _SpotifyAlbum {
  const _$SpotifyAlbumImpl(
      {required this.id,
      required this.name,
      required this.uri,
      required final List<SpotifyImage> images})
      : _images = images;

  factory _$SpotifyAlbumImpl.fromJson(Map<String, dynamic> json) =>
      _$$SpotifyAlbumImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String uri;
  final List<SpotifyImage> _images;
  @override
  List<SpotifyImage> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  String toString() {
    return 'SpotifyAlbum(id: $id, name: $name, uri: $uri, images: $images)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpotifyAlbumImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.uri, uri) || other.uri == uri) &&
            const DeepCollectionEquality().equals(other._images, _images));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, uri, const DeepCollectionEquality().hash(_images));

  /// Create a copy of SpotifyAlbum
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SpotifyAlbumImplCopyWith<_$SpotifyAlbumImpl> get copyWith =>
      __$$SpotifyAlbumImplCopyWithImpl<_$SpotifyAlbumImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SpotifyAlbumImplToJson(
      this,
    );
  }
}

abstract class _SpotifyAlbum implements SpotifyAlbum {
  const factory _SpotifyAlbum(
      {required final String id,
      required final String name,
      required final String uri,
      required final List<SpotifyImage> images}) = _$SpotifyAlbumImpl;

  factory _SpotifyAlbum.fromJson(Map<String, dynamic> json) =
      _$SpotifyAlbumImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get uri;
  @override
  List<SpotifyImage> get images;

  /// Create a copy of SpotifyAlbum
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SpotifyAlbumImplCopyWith<_$SpotifyAlbumImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SpotifyImage _$SpotifyImageFromJson(Map<String, dynamic> json) {
  return _SpotifyImage.fromJson(json);
}

/// @nodoc
mixin _$SpotifyImage {
  int get height => throw _privateConstructorUsedError;
  int get width => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  /// Serializes this SpotifyImage to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SpotifyImage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SpotifyImageCopyWith<SpotifyImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpotifyImageCopyWith<$Res> {
  factory $SpotifyImageCopyWith(
          SpotifyImage value, $Res Function(SpotifyImage) then) =
      _$SpotifyImageCopyWithImpl<$Res, SpotifyImage>;
  @useResult
  $Res call({int height, int width, String url});
}

/// @nodoc
class _$SpotifyImageCopyWithImpl<$Res, $Val extends SpotifyImage>
    implements $SpotifyImageCopyWith<$Res> {
  _$SpotifyImageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SpotifyImage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? height = null,
    Object? width = null,
    Object? url = null,
  }) {
    return _then(_value.copyWith(
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SpotifyImageImplCopyWith<$Res>
    implements $SpotifyImageCopyWith<$Res> {
  factory _$$SpotifyImageImplCopyWith(
          _$SpotifyImageImpl value, $Res Function(_$SpotifyImageImpl) then) =
      __$$SpotifyImageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int height, int width, String url});
}

/// @nodoc
class __$$SpotifyImageImplCopyWithImpl<$Res>
    extends _$SpotifyImageCopyWithImpl<$Res, _$SpotifyImageImpl>
    implements _$$SpotifyImageImplCopyWith<$Res> {
  __$$SpotifyImageImplCopyWithImpl(
      _$SpotifyImageImpl _value, $Res Function(_$SpotifyImageImpl) _then)
      : super(_value, _then);

  /// Create a copy of SpotifyImage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? height = null,
    Object? width = null,
    Object? url = null,
  }) {
    return _then(_$SpotifyImageImpl(
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SpotifyImageImpl implements _SpotifyImage {
  const _$SpotifyImageImpl(
      {required this.height, required this.width, required this.url});

  factory _$SpotifyImageImpl.fromJson(Map<String, dynamic> json) =>
      _$$SpotifyImageImplFromJson(json);

  @override
  final int height;
  @override
  final int width;
  @override
  final String url;

  @override
  String toString() {
    return 'SpotifyImage(height: $height, width: $width, url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpotifyImageImpl &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, height, width, url);

  /// Create a copy of SpotifyImage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SpotifyImageImplCopyWith<_$SpotifyImageImpl> get copyWith =>
      __$$SpotifyImageImplCopyWithImpl<_$SpotifyImageImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SpotifyImageImplToJson(
      this,
    );
  }
}

abstract class _SpotifyImage implements SpotifyImage {
  const factory _SpotifyImage(
      {required final int height,
      required final int width,
      required final String url}) = _$SpotifyImageImpl;

  factory _SpotifyImage.fromJson(Map<String, dynamic> json) =
      _$SpotifyImageImpl.fromJson;

  @override
  int get height;
  @override
  int get width;
  @override
  String get url;

  /// Create a copy of SpotifyImage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SpotifyImageImplCopyWith<_$SpotifyImageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
