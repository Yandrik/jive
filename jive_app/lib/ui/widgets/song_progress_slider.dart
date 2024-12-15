import 'dart:async';

import 'package:flutter/material.dart';
import 'package:jive_app/audio/grammophone.dart';
import 'package:jive_app/comm/device_comm.dart';

class SongProgressSlider extends StatefulWidget {
  final DateTime? startTime;
  final Duration? songDuration;

  SongProgressSlider({
    this.startTime,
    this.songDuration,
  }) {}

  @override
  State<SongProgressSlider> createState() => _SongProgressSliderState();
}

class _SongProgressSliderState extends State<SongProgressSlider> {
  late StreamController<double> _progressController;
  Timer? _timer;
  DateTime? _lastStartTime;
  Duration _elapsedBeforePause = Duration.zero;

  @override
  void initState() {
    super.initState();
    _progressController = StreamController<double>.broadcast();
    _lastStartTime = widget.startTime;
    _startProgressTimer();
  }

  void _startProgressTimer() {
    _timer = Timer.periodic(Duration(milliseconds: 100), (timer) {
      if (Grammophone.I.playState == MediaPlayState.playing) {
        final currentElapsed = _lastStartTime != null
            ? DateTime.now().difference(_lastStartTime!)
            : Duration.zero;
        final totalElapsed = _elapsedBeforePause + currentElapsed;
        final progress = widget.songDuration != null
            ? totalElapsed.inMilliseconds / widget.songDuration!.inMilliseconds
            : 0.0;
        _progressController.add(progress.clamp(0.0, 1.0));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<SongMeta?>(
        stream: Grammophone.I.currentSongStream,
        initialData: Grammophone.I.currentSong,
        builder: (context, songSnapshot) {
          if (songSnapshot.data == null) {
            return Slider(
              value: 0.5,
              onChanged: null,
            );
          }

          return StreamBuilder<MediaPlayState>(
            stream: Grammophone.I.playStateStream,
            initialData: Grammophone.I.playState,
            builder: (ctx, playStateSnapshot) {
              if (playStateSnapshot.data == MediaPlayState.paused) {
                _timer?.cancel();
                if (_lastStartTime != null) {
                  _elapsedBeforePause +=
                      DateTime.now().difference(_lastStartTime!);
                  _lastStartTime = null;
                }
              } else if (playStateSnapshot.data == MediaPlayState.playing) {
                if (_lastStartTime == null) {
                  _lastStartTime = DateTime.now();
                  _startProgressTimer();
                }
              }

              return StreamBuilder<double>(
                stream: _progressController.stream,
                builder: (context, snapshot) {
                  return Slider(
                    value: snapshot.data ?? 0.5,
                    onChanged: (value) {
                      // Handle seeking if needed
                    },
                  );
                },
              );
            },
          );
        });
  }

  @override
  void dispose() {
    _timer?.cancel();
    _progressController.close();
    super.dispose();
  }
}
