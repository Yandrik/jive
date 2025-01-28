import 'dart:async';
import 'dart:io';

import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:jive_app/comm/device_comm.dart';
import 'package:jive_app/logger.dart';
import 'package:jive_app/provider/comm/client.dart';
import 'package:jive_app/provider/comm/host.dart';
import 'package:jive_app/provider/queue_manager.dart';
import 'package:just_audio/just_audio.dart';
import 'package:rust/rust.dart';
import 'package:spotify_sdk/spotify_sdk.dart';
import 'package:youtube_explode_dart/youtube_explode_dart.dart';

class Grammophone {
  static final I = Grammophone._internal();
  factory Grammophone() => I;

  Grammophone._internal() {
    // Set up continuous timer that runs as long as the app is active
    _timeUpdateTimer = Timer.periodic(Duration(milliseconds: 100), (_) {
      if (isPlaying()) {
        _updateTime();
      }
    });
  }

  bool setupDone = false;

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

  final AudioPlayer _ytPlayer = AudioPlayer();
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
  Timer? _timeUpdateTimer;

  void _updateTime() async {
    switch (currentSong?.reference) {
      case SpotifySong():
        final state = await SpotifySdk.getPlayerState();
        if (state != null && state.track != null) {
          final total = Duration(milliseconds: state.track!.duration);
          final remaining = Duration(
              milliseconds: (state.track!.duration - state.playbackPosition));
          _timeController.add((remaining, total));
        }
      case YoutubeSong() || LocalSong():
        final duration = _ytPlayer.duration;
        final position = _ytPlayer.position;
        if (duration != null) {
          final remaining = duration - position;
          _timeController.add((remaining, duration));
        }
      case null:
        break;
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
        case YoutubeSong() || LocalSong():
          // Both YouTube and Local files use _ytPlayer
          final duration = _ytPlayer.duration;
          final position = _ytPlayer.position;
          if (duration != null) {
            final remaining = duration - position;
            if (remaining.inMilliseconds <= 1500 &&
                QueueSingleton.I.queue.isNotEmpty) {
              await skipForwards();
            }
          }
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
    if (setupDone) return;
    setupDone = true;
    await SpotifySdk.connectToSpotifyRemote(
        clientId: dotenv.env['SPOTIFY_CLIENT_ID']!,
        redirectUrl: dotenv.env['SPOTIFY_REDIRECT_URL']!);
    // Listen for play state changes (works for all sources)
    playStateStream.map((state) => (DateTime.now(), state)).listen((playState) {
      _updateTime();
    });

    // Listen for YouTube/Local file position updates
    _ytPlayer.positionStream.listen((_) {
      if (currentSong?.reference case YoutubeSong() || LocalSong()) {
        _updateTime();
      }
    });
    _ytPlayer.playerStateStream.listen((event) async {
      if (currentSong?.reference case YoutubeSong() || LocalSong()) {
        if (event.processingState == ProcessingState.completed) {
          if (QueueSingleton.I.queue.isNotEmpty) {
            await skipForwards();
          } else {
            await stop();
          }
        } else if (event.playing) {
          playState = MediaPlayState.playing;
        } else {
          playState = MediaPlayState.paused;
        }
      }
    });

    _startEndOfSongCheck();
  }

  Future<void> _ensureSpotifyConnected() async {
    try {
      await SpotifySdk.getPlayerState();
    } catch (e) {
      if (e is PlatformException &&
          e.code == 'playError' &&
          e.message?.contains('SpotifyDisconnectedException') == true) {
        logger.i("Spotify disconnected, attempting to reconnect...");
        await SpotifySdk.connectToSpotifyRemote(
            clientId: dotenv.env['SPOTIFY_CLIENT_ID']!,
            redirectUrl: dotenv.env['SPOTIFY_REDIRECT_URL']!);
      } else {
        rethrow;
      }
    }
  }

  Future<void> play(SongMeta song, {Duration? playHead}) async {
    playState = MediaPlayState.playing;
    _playStateController.add(MediaPlayState.playing);
    currentSong = song;

    switch (song.reference) {
      case SpotifySong(:final songId):
        await _ensureSpotifyConnected();
        await SpotifySdk.play(spotifyUri: "spotify:track:$songId");
        if (playHead != null) {
          await SpotifySdk.seekTo(
              positionedMilliseconds: playHead.inMilliseconds);
        }

      case YoutubeSong(:final songId):
        var yt = YoutubeExplode();
        try {
          var manifest = await yt.videos.streams.getManifest(songId);
          var streamInfo = manifest.audioOnly.withHighestBitrate();
          await _ytPlayer.setAudioSource(AudioSource.uri(streamInfo.url));
          yt.close();
          await _ytPlayer.play();
        } catch (e, st) {
          logger.e("YouTube playback failed for ID '$songId': $e\n$st");

          // Show error toast (using Snackbar since it's already available in Flutter)
          if (QueueSingleton.I.queue.isNotEmpty) {
            logger.i("Skipping to next song due to playback failure");
            await skipForwards();
          } else {
            playState = MediaPlayState.paused;
          }
        }
      case LocalSong(:final songId):
        try {
          final file = File(songId);
          if (!file.existsSync()) {
            throw Exception("Local file not found at $songId");
          }
          await _ytPlayer.setAudioSource(AudioSource.file(songId));
          await _ytPlayer.play();
        } catch (e, st) {
          logger.e("Local file playback failed: $e\n$st");
          playState = MediaPlayState.paused;
        }
    }
  }

  Future<void> pause() async {
    try {
      await _ytPlayer.pause();
    } catch (e) {
      logger.w("YouTube/Local pause failure: $e");
    }
    try {
      await SpotifySdk.pause();
    } catch (e) {
      logger.w("Spotify pause failure: $e");
    }
    playState = MediaPlayState.paused;
  }

  Future<void> resume() async {
    if (currentSong == null) {
      stop();
      return;
    }

    try {
      switch (currentSong?.reference) {
        case SpotifySong():
          await SpotifySdk.resume();
        case YoutubeSong() || LocalSong():
          await _ytPlayer.play();
        case null:
          return;
      }
      playState = MediaPlayState.playing;
    } catch (e) {
      logger.w("Resume failure: $e");
      playState = MediaPlayState.paused;
    }
  }

  Future<void> stop() async {
    playState = MediaPlayState.paused;
    try {
      await SpotifySdk.pause();
    } catch (e) {
      logger.w("Spotify stop failure: $e");
    }
    try {
      await _ytPlayer.stop();
    } catch (e) {
      logger.w("YouTube/Local stop failure: $e");
    }
  }

  Future<void> seek(Duration position) async {
    switch (currentSong?.reference) {
      case SpotifySong():
        try {
          await SpotifySdk.seekTo(
              positionedMilliseconds: position.inMilliseconds);
        } catch (e) {
          logger.w("Spotify seek failure: $e");
        }
      case YoutubeSong() || LocalSong():
        try {
          await _ytPlayer.seek(position);
        } catch (e) {
          logger.w("YouTube/Local seek failure: $e");
        }
      case null:
        return;
    }
  }

  Future<void> skipForwards() async {
    stop();
    final nextSong = QueueSingleton.I.nextSong();
    if (nextSong == null) return;
    await play(nextSong.$2);
  }

  Future<void> skipBackwards() async {
    // If we're a client, just send the previous command
    if (HostControllerSingleton.I.controller == null) {
      ClientControllerSingleton.I.sendToHost(
        DeviceCommand.mediaCommand(MediaCommandType.previous),
      );
      return;
    }

    try {
      Duration position;

      switch (currentSong?.reference) {
        case SpotifySong():
          final state = await SpotifySdk.getPlayerState();
          position = Duration(milliseconds: state?.playbackPosition ?? 0);
        case YoutubeSong() || LocalSong():
          position = _ytPlayer.position;
        case null:
          return;
      }

      if (position.inSeconds <= 5 && QueueSingleton.I.canSkipBack()) {
        stop();
        final nextSong = QueueSingleton.I.skipBack();
        if (nextSong != null) {
          await play(nextSong.$2);
        }
      } else {
        await seek(Duration.zero);
      }
    } catch (e, st) {
      logger.e("Skip backwards failed: $e\n$st");
      // On error, just try to seek to beginning
      await seek(Duration.zero);
    }
  }

  bool isPlaying() {
    return playState == MediaPlayState.playing;
  }

  void dispose() {
    _endOfSongTimer?.cancel();
    _timeUpdateTimer?.cancel();
    _playStateController.close();
    _currentSongController.close();
    _timeController.close();
  }
}
