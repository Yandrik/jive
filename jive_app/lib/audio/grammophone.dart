import 'dart:async';
import 'dart:io';

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:jive_app/comm/device_comm.dart';
import 'package:jive_app/logger.dart';
import 'package:jive_app/provider/queue_manager.dart';
import 'package:just_audio/just_audio.dart';
import 'package:rust/rust.dart';
import 'package:spotify_sdk/spotify_sdk.dart';
import 'package:youtube_explode_dart/youtube_explode_dart.dart';

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

  AudioPlayer _ytPlayer = AudioPlayer();
  Timer? _endOfSongTimer;

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

  void _startEndOfSongCheck() {
    _endOfSongTimer?.cancel();
    _endOfSongTimer =
        Timer.periodic(Duration(milliseconds: 500), (timer) async {
      if (!isPlaying() || currentSong == null) return;

      switch (currentSong?.reference) {
        case SpotifySong():
          final state = await SpotifySdk.getPlayerState();
          if (state != null && state.track != null) {
            final remaining = state.track!.duration - state.playbackPosition;
            if (remaining <= 1500 && QueueSingleton.I.queue.isNotEmpty) {
              await skipForwards();
            }
          }
        case YoutubeSong():
          final duration = await _ytPlayer.duration;
          final position = await _ytPlayer.position;
          if (duration != null && position != null) {
            final remaining = duration - position;
            if (remaining.inMilliseconds <= 1500 &&
                QueueSingleton.I.queue.isNotEmpty) {
              await skipForwards();
            }
          }
        case LocalSong():
          // TODO: Handle this case
          break;
        case null:
          break;
      }
    });
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
    playStateStream
        .map((state) => (DateTime.now(), state))
        .listen((_playState) {
      _updateTime();
    });
    _startEndOfSongCheck();
  }

  Future<void> play(SongMeta song, {Duration? playHead}) async {
    // currentSong = song;
    playState = MediaPlayState.playing;
    _playStateController.add(MediaPlayState.playing);
    currentSong = song;

    switch (song.reference) {
      case SpotifySong(:final songId):
        await SpotifySdk.play(spotifyUri: "spotify:track:$songId");
        if (playHead != null) {
          await SpotifySdk.seekTo(
              positionedMilliseconds: playHead.inMilliseconds);
        }

      case YoutubeSong(:final songId):
        var yt = YoutubeExplode();
        var manifest = await yt.videos.streams.getManifest(songId);

        logger.i(manifest);

        var streamInfo = manifest.audioOnly.withHighestBitrate();

        var stream = yt.videos.streams.get(streamInfo);

        await _ytPlayer.setAudioSource(AudioSource.uri(Uri.dataFromBytes(
            await stream
                .toList()
                .then((chunks) => chunks.expand((chunk) => chunk).toList()))));
        yt.close();
        _ytPlayer.play();
      case LocalSong(:final songId):
        // TODO: Handle this case.
        throw UnimplementedError();
    }
  }

  Future<void> pause() async {
    // TODO: others
    await _ytPlayer.pause();
    await SpotifySdk.pause();
    playState = MediaPlayState.paused;
  }

  Future<void> resume() async {
    playState = MediaPlayState.playing;
    if (currentSong == null) {
      stop();
      return;
    }

    switch (currentSong?.reference) {
      case SpotifySong():
        await SpotifySdk.resume();
      case YoutubeSong():
        await _ytPlayer.play();
      case LocalSong():
        throw UnimplementedError();
      case null:
        return;
    }
  }

  Future<void> stop() async {
    playState = MediaPlayState.paused;
    await SpotifySdk.pause();
    await _ytPlayer.stop();
  }

  Future<void> seek(Duration position) async {
    switch (currentSong?.reference) {
      case SpotifySong():
        await SpotifySdk.seekTo(
            positionedMilliseconds: position.inMilliseconds);
      case YoutubeSong():
        await _ytPlayer.seek(position);
      case LocalSong():
        throw UnimplementedError();
      case null:
        return;
    }
  }

  Future<void> skipForwards() async {
    stop();
    if (QueueSingleton.I.queue.isEmpty) {
      return;
    }
    var nextSong = QueueSingleton.I.queue.removeAt(0);
    await play(nextSong.$2);
  }

  Future<void> skipBackwards() async {
    stop();
    seek(Duration());
  }

  bool isPlaying() {
    return playState == MediaPlayState.playing;
  }

  void dispose() {
    _endOfSongTimer?.cancel();
    _playStateController.close();
    _currentSongController.close();
  }
}
