import 'package:freezed_annotation/freezed_annotation.dart';

part 'device_comm.freezed.dart';
part 'device_comm.g.dart';

@freezed
sealed class Client with _$Client {
  const factory Client({
    required String id,
    required String name,
  }) = _Client;

  factory Client.fromJson(Map<String, dynamic> json) => _$ClientFromJson(json);
}

@JsonEnum()
enum MusicSource {
  spotify,
  local,
}

@freezed
sealed class Host with _$Host {
  const factory Host({
    required String id,
    required String name,
    required Set<MusicSource> sources,
  }) = _Host;

  factory Host.fromJson(Map<String, dynamic> json) => _$HostFromJson(json);
}

@freezed
sealed class SongReference with _$SongReference {
  const factory SongReference.spotify(String songId) = SpotifySong;
  const factory SongReference.local(String songId) = LocalSong;

  factory SongReference.fromJson(Map<String, dynamic> json) =>
      _$SongReferenceFromJson(json);
}

@freezed
sealed class DeviceCommand with _$DeviceCommand {
  const factory DeviceCommand.connect(Client client) = Connect;
  const factory DeviceCommand.requestId() = RequestID;
  const factory DeviceCommand.requestState() = RequestState;
  const factory DeviceCommand.requestQueue() = RequestQueue;
  const factory DeviceCommand.mediaCommand(MediaCommandType command) =
      MediaCommand;
  const factory DeviceCommand.setVolume(int volume) = SetVolume;
  const factory DeviceCommand.playSong(SongReference songMeta) = PlaySong;

  factory DeviceCommand.fromJson(Map<String, dynamic> json) =>
      _$DeviceCommandFromJson(json);
}

@JsonEnum()
enum MediaCommandType {
  play,
  pause,
  next,
  previous,
}

@freezed
sealed class SongMeta with _$SongMeta {
  const factory SongMeta({
    required String id,
    required String title,
    required String artist,
    required String album,
    required String? albumArtUrl,
    required Duration duration,
    required SongReference reference,
  }) = _SongMeta;

  factory SongMeta.fromJson(Map<String, dynamic> json) =>
      _$SongMetaFromJson(json);
}

@JsonEnum()
enum MediaPlayState {
  playing,
  paused,
}

@freezed
sealed class HostResponse with _$HostResponse {
  const factory HostResponse.connect(Host host) = ConnectResponse;
  const factory HostResponse.id(String id) = IDResponse;
  // const factory HostResponse.state(DeviceState state) = StateResponse;  // TODO
  const factory HostResponse.queue(List<(String, SongMeta)> queue) =
      QueueResponse;
  const factory HostResponse.playState(
          SongMeta currentSong, MediaPlayState playState, Duration playHead) =
      PlayStateResponse;
  const factory HostResponse.error(String error) = ErrorResponse;
  const factory HostResponse.ok() = OkResponse;

  factory HostResponse.fromJson(Map<String, dynamic> json) =>
      _$HostResponseFromJson(json);
}

@freezed
sealed class PlayState with _$PlayState {
  const factory PlayState({
    required SongMeta currentSong,
    required MediaPlayState playState,
    required Duration playHead,

    /// Queue of songs that will be played next (not including the currentSong)
    ///
    /// ## Format
    ///
    /// List<(Client or noClient if added by host, SongMeta)>
    required List<(Client?, SongMeta)> queue,
  }) = _PlayState;

  factory PlayState.fromJson(Map<String, dynamic> json) =>
      _$PlayStateFromJson(json);
}
