import 'dart:async';

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:jive_app/comm/device_comm.dart';
import 'package:rust/rust.dart';
import 'package:spotify_sdk/spotify_sdk.dart';

class Player {
  SongMeta? currentSong = null;
  MediaPlayState playState = MediaPlayState.paused;
  Duration playHead = Duration(milliseconds: 0);
  List<(Duration, SongMeta)> queue = [];

  List<MusicSource> sources = [MusicSource.spotify];

  void play() {
    if (currentSong == null) {
      if (queue.isNotEmpty) {
        currentSong = queue.removeAt(0).$2;
      } else {
        playState = MediaPlayState.paused;
        return;
      }
    }

    switch (currentSong?.reference) {
      case null:
        // TODO: Handle this case.
        throw UnimplementedError();
      case SpotifySong(:final songId):

        //

        throw UnimplementedError();
      case YoutubeSong(:final songId):
        // TODO: Handle this case.
        throw UnimplementedError();
      case LocalSong(:final songId):
        // TODO: Handle this case.
        throw UnimplementedError();
    }
  }
}

class Grammophone {
  static final I = Grammophone._internal();
  factory Grammophone() => I;

  Grammophone._internal();

  bool setup_done = false;

  final _playStateController = StreamController<MediaPlayState>.broadcast();
  Stream<MediaPlayState> get playStateStream => _playStateController.stream;

  MediaPlayState _playState = MediaPlayState.paused;

  MediaPlayState get playState => _playState;

  set playState(MediaPlayState state) {
    _playState = state;
    _playStateController.add(state);
  }

  final _currentSongController = StreamController<SongMeta?>.broadcast();

  Stream<SongMeta?> get currentSongStream => _currentSongController.stream;
  SongMeta? _currentSong;
  SongMeta? get currentSong => _currentSong;

  set currentSong(SongMeta? song) {
    _currentSong = song;
    _currentSongController.add(song);
  }

  Future<Option<Duration>> get remainingTime async {
    final state = await SpotifySdk.getPlayerState();
    if (state != null && state.track?.duration != null) {
      return Some(Duration(
          milliseconds: (state.track!.duration - state.playbackPosition)));
    }
    return None;
  }

  final _timeController = StreamController<(Duration, Duration)>.broadcast();
  Stream<(Duration, Duration)> get timeStream => _timeController.stream;

  void _updateTime() async {
    final state = await SpotifySdk.getPlayerState();
    if (state != null && state.track != null) {
      final total = Duration(milliseconds: state.track!.duration);
      final remaining = Duration(
          milliseconds: (state.track!.duration - state.playbackPosition));
      _timeController.add((remaining, total));
    }
  }

  Future<void> readPlayerState() async {
    final state = await SpotifySdk.getPlayerState();
    if (state != null && state.track != null) {
      final uri = state.track!.imageUri;
      final meta = SongMeta(
          album: state.track!.album.toString(),
          albumArtUrl: "https://i.scdn.co/image/${uri.raw.split(':')[2]}",
          id: state.track!.uri.split(':')[2],
          title: state.track!.name,
          artist:
              state.track!.artists.map((artist) => artist.toString()).toList(),
          duration: Duration(milliseconds: state.track!.duration),
          reference: SongReference.spotify(state.track!.uri.split(':')[2]));
      currentSong = meta;
      if (state.isPaused) {
        playState = MediaPlayState.paused;
      } else {
        playState = MediaPlayState.playing;
      }
    }
  }

  Future<void> setup() async {
    if (setup_done) return;
    setup_done = true;
    await SpotifySdk.connectToSpotifyRemote(
        clientId: dotenv.env['SPOTIFY_CLIENT_ID']!,
        redirectUrl: dotenv.env['SPOTIFY_REDIRECT_URL']!);
    playStateStream.listen((playState) {
      _updateTime();
    });
  }

  Future<void> play(SongReference song, {Duration? playHead}) async {
    // currentSong = song;
    playState = MediaPlayState.playing;
    _playStateController.add(MediaPlayState.playing);

    final state = await SpotifySdk.getPlayerState();

    switch (song) {
      case SpotifySong(:final songId):
        await SpotifySdk.play(spotifyUri: "spotify:track:$songId");
        if (playHead != null) {
          await SpotifySdk.seekTo(
              positionedMilliseconds: playHead.inMilliseconds);
        }
        await readPlayerState();

      case YoutubeSong(:final songId):
        // TODO: Handle this case.
        throw UnimplementedError();
      case LocalSong(:final songId):
        // TODO: Handle this case.
        throw UnimplementedError();
    }
  }

  Future<void> pause() async {
    // TODO: others
    await SpotifySdk.pause();
    playState = MediaPlayState.paused;
  }

  Future<void> resume() async {
    playState = MediaPlayState.playing;
    // TODO: others
    await SpotifySdk.resume();
  }

  Future<void> stop() async {
    playState = MediaPlayState.paused;
    // TODO: others
    await SpotifySdk.pause();
  }

  bool isPlaying() {
    return playState == MediaPlayState.playing;
  }

  void dispose() {
    _playStateController.close();
    _currentSongController.close();
  }
}
