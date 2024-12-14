@freezed
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rust/rust.dart';

part 'device_comm.freezed.dart';

@freezed
sealed class Client with _$Client {
  const factory Client({
    required String id,
    required String name,
  }) = _Client;
}

@freezed
sealed class Host with _$Host {
  const factory Host({
    required String id,
    required String name,
  }) = _Host;
}

@freezed
sealed class PlaySongMeta with _$SongMeta {
  const factory PlaySongMeta.spotify(String songId) = SpotifySong;
  const factory PlaySongMeta.local(String songId) = LocalSong;
}

@freezed
sealed class DeviceCommand with _$DeviceCommand {
  const factory DeviceCommand.requestId() = RequestID;
  const factory DeviceCommand.requestState() = RequestState;
  const factory DeviceCommand.requestQueue() = RequestQueue;
  const factory DeviceCommand.mediaCommand(MediaCommandType command) =
      MediaCommand;
  const factory DeviceCommand.setVolume(int volume) = SetVolume;
  const factory DeviceCommand.playSong(PlaySongMeta songMeta) = PlaySong;
}

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
    required Option<String> albumArtUrl,
    required Duration duration,
    required bool isPlaying,
  }) = _SongMeta;
}

enum MediaPlayState {
  playing,
  paused,
}

@freezed
sealed class HostResponse with _$HostResponse {
  const factory HostResponse.id(String id) = IDResponse;
  // const factory HostResponse.state(DeviceState state) = StateResponse;  // TODO
  const factory HostResponse.queue(List<SongMeta> queue) = QueueResponse;
  const factory HostResponse.playState(
          SongMeta currentSong, MediaPlayState playState, Duration playHead) =
      PlayStateResponse;
  const factory HostResponse.error(String error) = ErrorResponse;
  const factory HostResponse.ok() = OkResponse;
}

@freezed
sealed class PlayState with _$PlayState {
  const factory PlayState({
    required SongMeta currentSong,
    required MediaPlayState playState,
    required Duration playHead,
    required List<SongMeta> queue,
  }) = _PlayState;
}
