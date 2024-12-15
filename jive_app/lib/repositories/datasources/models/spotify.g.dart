// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'spotify.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SpotifyTrackImpl _$$SpotifyTrackImplFromJson(Map<String, dynamic> json) =>
    _$SpotifyTrackImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      uri: json['uri'] as String,
      isPlayable: json['is_playable'] as bool,
      durationMs: (json['duration_ms'] as num).toInt(),
      artists: (json['artists'] as List<dynamic>)
          .map((e) => SpotifyArtist.fromJson(e as Map<String, dynamic>))
          .toList(),
      album: SpotifyAlbum.fromJson(json['album'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SpotifyTrackImplToJson(_$SpotifyTrackImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'uri': instance.uri,
      'is_playable': instance.isPlayable,
      'duration_ms': instance.durationMs,
      'artists': instance.artists.map((e) => e.toJson()).toList(),
      'album': instance.album.toJson(),
    };

_$SpotifyArtistImpl _$$SpotifyArtistImplFromJson(Map<String, dynamic> json) =>
    _$SpotifyArtistImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      uri: json['uri'] as String,
      type: json['type'] as String,
      href: json['href'] as String,
    );

Map<String, dynamic> _$$SpotifyArtistImplToJson(_$SpotifyArtistImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'uri': instance.uri,
      'type': instance.type,
      'href': instance.href,
    };

_$SpotifyAlbumImpl _$$SpotifyAlbumImplFromJson(Map<String, dynamic> json) =>
    _$SpotifyAlbumImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      uri: json['uri'] as String,
      images: (json['images'] as List<dynamic>)
          .map((e) => SpotifyImage.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$SpotifyAlbumImplToJson(_$SpotifyAlbumImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'uri': instance.uri,
      'images': instance.images.map((e) => e.toJson()).toList(),
    };

_$SpotifyImageImpl _$$SpotifyImageImplFromJson(Map<String, dynamic> json) =>
    _$SpotifyImageImpl(
      height: (json['height'] as num).toInt(),
      width: (json['width'] as num).toInt(),
      url: json['url'] as String,
    );

Map<String, dynamic> _$$SpotifyImageImplToJson(_$SpotifyImageImpl instance) =>
    <String, dynamic>{
      'height': instance.height,
      'width': instance.width,
      'url': instance.url,
    };
