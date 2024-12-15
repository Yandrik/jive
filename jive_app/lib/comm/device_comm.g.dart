// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'device_comm.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ClientImpl _$$ClientImplFromJson(Map<String, dynamic> json) => _$ClientImpl(
      id: json['id'] as String,
      name: json['name'] as String,
    );

Map<String, dynamic> _$$ClientImplToJson(_$ClientImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

_$HostImpl _$$HostImplFromJson(Map<String, dynamic> json) => _$HostImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      sources: (json['sources'] as List<dynamic>)
          .map((e) => $enumDecode(_$MusicSourceEnumMap, e))
          .toSet(),
    );

Map<String, dynamic> _$$HostImplToJson(_$HostImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'sources': instance.sources.map((e) => _$MusicSourceEnumMap[e]!).toList(),
    };

const _$MusicSourceEnumMap = {
  MusicSource.spotify: 'spotify',
  MusicSource.youtube: 'youtube',
  MusicSource.local: 'local',
};

_$SpotifySongImpl _$$SpotifySongImplFromJson(Map<String, dynamic> json) =>
    _$SpotifySongImpl(
      json['song_id'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$SpotifySongImplToJson(_$SpotifySongImpl instance) =>
    <String, dynamic>{
      'song_id': instance.songId,
      'runtimeType': instance.$type,
    };

_$YoutubeSongImpl _$$YoutubeSongImplFromJson(Map<String, dynamic> json) =>
    _$YoutubeSongImpl(
      json['song_id'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$YoutubeSongImplToJson(_$YoutubeSongImpl instance) =>
    <String, dynamic>{
      'song_id': instance.songId,
      'runtimeType': instance.$type,
    };

_$LocalSongImpl _$$LocalSongImplFromJson(Map<String, dynamic> json) =>
    _$LocalSongImpl(
      json['song_id'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$LocalSongImplToJson(_$LocalSongImpl instance) =>
    <String, dynamic>{
      'song_id': instance.songId,
      'runtimeType': instance.$type,
    };

_$ConnectImpl _$$ConnectImplFromJson(Map<String, dynamic> json) =>
    _$ConnectImpl(
      Client.fromJson(json['client'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ConnectImplToJson(_$ConnectImpl instance) =>
    <String, dynamic>{
      'client': instance.client.toJson(),
      'runtimeType': instance.$type,
    };

_$RequestIDImpl _$$RequestIDImplFromJson(Map<String, dynamic> json) =>
    _$RequestIDImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$RequestIDImplToJson(_$RequestIDImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$RequestStateImpl _$$RequestStateImplFromJson(Map<String, dynamic> json) =>
    _$RequestStateImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$RequestStateImplToJson(_$RequestStateImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$RequestQueueImpl _$$RequestQueueImplFromJson(Map<String, dynamic> json) =>
    _$RequestQueueImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$RequestQueueImplToJson(_$RequestQueueImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$MediaCommandImpl _$$MediaCommandImplFromJson(Map<String, dynamic> json) =>
    _$MediaCommandImpl(
      $enumDecode(_$MediaCommandTypeEnumMap, json['command']),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$MediaCommandImplToJson(_$MediaCommandImpl instance) =>
    <String, dynamic>{
      'command': _$MediaCommandTypeEnumMap[instance.command]!,
      'runtimeType': instance.$type,
    };

const _$MediaCommandTypeEnumMap = {
  MediaCommandType.play: 'play',
  MediaCommandType.pause: 'pause',
  MediaCommandType.next: 'next',
  MediaCommandType.previous: 'previous',
};

_$SetVolumeImpl _$$SetVolumeImplFromJson(Map<String, dynamic> json) =>
    _$SetVolumeImpl(
      (json['volume'] as num).toInt(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$SetVolumeImplToJson(_$SetVolumeImpl instance) =>
    <String, dynamic>{
      'volume': instance.volume,
      'runtimeType': instance.$type,
    };

_$PlaySongImpl _$$PlaySongImplFromJson(Map<String, dynamic> json) =>
    _$PlaySongImpl(
      SongReference.fromJson(json['song_meta'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$PlaySongImplToJson(_$PlaySongImpl instance) =>
    <String, dynamic>{
      'song_meta': instance.songMeta.toJson(),
      'runtimeType': instance.$type,
    };

_$SongMetaImpl _$$SongMetaImplFromJson(Map<String, dynamic> json) =>
    _$SongMetaImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      artist:
          (json['artist'] as List<dynamic>).map((e) => e as String).toList(),
      album: json['album'] as String,
      albumArtUrl: json['album_art_url'] as String?,
      duration: Duration(microseconds: (json['duration'] as num).toInt()),
      reference:
          SongReference.fromJson(json['reference'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SongMetaImplToJson(_$SongMetaImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'artist': instance.artist,
      'album': instance.album,
      'album_art_url': instance.albumArtUrl,
      'duration': instance.duration.inMicroseconds,
      'reference': instance.reference.toJson(),
    };

_$ConnectResponseImpl _$$ConnectResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$ConnectResponseImpl(
      Host.fromJson(json['host'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ConnectResponseImplToJson(
        _$ConnectResponseImpl instance) =>
    <String, dynamic>{
      'host': instance.host.toJson(),
      'runtimeType': instance.$type,
    };

_$IDResponseImpl _$$IDResponseImplFromJson(Map<String, dynamic> json) =>
    _$IDResponseImpl(
      json['id'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$IDResponseImplToJson(_$IDResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'runtimeType': instance.$type,
    };

_$QueueResponseImpl _$$QueueResponseImplFromJson(Map<String, dynamic> json) =>
    _$QueueResponseImpl(
      (json['queue'] as List<dynamic>)
          .map((e) => _$recordConvert(
                e,
                ($jsonValue) => (
                  $jsonValue[r'$1'] as String,
                  SongMeta.fromJson($jsonValue[r'$2'] as Map<String, dynamic>),
                ),
              ))
          .toList(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$QueueResponseImplToJson(_$QueueResponseImpl instance) =>
    <String, dynamic>{
      'queue': instance.queue
          .map((e) => <String, dynamic>{
                r'$1': e.$1,
                r'$2': e.$2.toJson(),
              })
          .toList(),
      'runtimeType': instance.$type,
    };

$Rec _$recordConvert<$Rec>(
  Object? value,
  $Rec Function(Map) convert,
) =>
    convert(value as Map<String, dynamic>);

_$PlayStateResponseImpl _$$PlayStateResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$PlayStateResponseImpl(
      SongMeta.fromJson(json['current_song'] as Map<String, dynamic>),
      $enumDecode(_$MediaPlayStateEnumMap, json['play_state']),
      Duration(microseconds: (json['play_head'] as num).toInt()),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$PlayStateResponseImplToJson(
        _$PlayStateResponseImpl instance) =>
    <String, dynamic>{
      'current_song': instance.currentSong.toJson(),
      'play_state': _$MediaPlayStateEnumMap[instance.playState]!,
      'play_head': instance.playHead.inMicroseconds,
      'runtimeType': instance.$type,
    };

const _$MediaPlayStateEnumMap = {
  MediaPlayState.playing: 'playing',
  MediaPlayState.paused: 'paused',
};

_$ErrorResponseImpl _$$ErrorResponseImplFromJson(Map<String, dynamic> json) =>
    _$ErrorResponseImpl(
      json['error'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ErrorResponseImplToJson(_$ErrorResponseImpl instance) =>
    <String, dynamic>{
      'error': instance.error,
      'runtimeType': instance.$type,
    };

_$OkResponseImpl _$$OkResponseImplFromJson(Map<String, dynamic> json) =>
    _$OkResponseImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$OkResponseImplToJson(_$OkResponseImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$PlayStateImpl _$$PlayStateImplFromJson(Map<String, dynamic> json) =>
    _$PlayStateImpl(
      currentSong:
          SongMeta.fromJson(json['current_song'] as Map<String, dynamic>),
      playState: $enumDecode(_$MediaPlayStateEnumMap, json['play_state']),
      playHead: Duration(microseconds: (json['play_head'] as num).toInt()),
      queue: (json['queue'] as List<dynamic>)
          .map((e) => _$recordConvert(
                e,
                ($jsonValue) => (
                  $jsonValue[r'$1'] == null
                      ? null
                      : Client.fromJson(
                          $jsonValue[r'$1'] as Map<String, dynamic>),
                  SongMeta.fromJson($jsonValue[r'$2'] as Map<String, dynamic>),
                ),
              ))
          .toList(),
    );

Map<String, dynamic> _$$PlayStateImplToJson(_$PlayStateImpl instance) =>
    <String, dynamic>{
      'current_song': instance.currentSong.toJson(),
      'play_state': _$MediaPlayStateEnumMap[instance.playState]!,
      'play_head': instance.playHead.inMicroseconds,
      'queue': instance.queue
          .map((e) => <String, dynamic>{
                r'$1': e.$1?.toJson(),
                r'$2': e.$2.toJson(),
              })
          .toList(),
    };
