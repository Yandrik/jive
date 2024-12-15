import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jive_app/audio/grammophone.dart';
import 'package:jive_app/comm/device_comm.dart';
import 'package:jive_app/logger.dart';

class Player extends ConsumerWidget {
  const Player({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          Grammophone.I.currentSong?.title ?? "Song Name",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 16),
        /*
        SizedBox(
            width: MediaQuery.of(context).size.width * 0.8,
            // child: SliderTheme(
            //   data: SliderTheme.of(context).copyWith(
            //     trackHeight: 4.0,
            //     thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 6.0),
            //     overlayShape: const RoundSliderOverlayShape(overlayRadius: 14.0),
            //   ),
            //   child: Slider(
            //     value: 0.0,
            //     onChanged: (value) {},
            //   ),
            // ),
            child: SongProgressSlider()),
            */
        StreamBuilder<(Duration, Duration)>(
          stream: Grammophone.I.timeStream,
          initialData: ((Duration(), Duration())),
          builder: (context, snapshot) {
            final now = DateTime.now();
            final completionTime =
                now.add(snapshot.data?.$1 ?? Duration()).subtract(snapshot.data?.$2 ?? Duration());

            return StreamBuilder<Duration>(
              stream: Grammophone.I.playState == MediaPlayState.playing
                  ? Stream.periodic(const Duration(milliseconds: 500), (_) {
                      return snapshot.data?.$1 ?? Duration();
                    })
                  : Stream.value(snapshot.data?.$1 ?? Duration()),
              builder: (context, timeSnapshot) {
                final remaining = DateTime.now().difference(completionTime);
                final totalDur = snapshot.data?.$2 ?? Duration.zero;

// TODO: fix
                return Text(
                  '${remaining.inMinutes}:${(remaining.inSeconds % 60).toString().padLeft(2, '0')} / '
                  '${totalDur.inMinutes}:${(totalDur.inSeconds % 60).toString().padLeft(2, '0')}',
                  style: const TextStyle(fontSize: 12),
                );
              },
            );
          },
        ),
        const SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              iconSize: 38,
              icon: const Icon(Icons.skip_previous),
              onPressed: () async {
                await Grammophone.I.skipBackwards();
              },
            ),
            const SizedBox(width: 32),
            StreamBuilder<MediaPlayState>(
                stream: Grammophone.I.playStateStream,
                initialData: Grammophone.I.playState,
                builder: (context, snapshot) {
                  return IconButton(
                    iconSize: 48,
                    icon: Grammophone.I.isPlaying()
                        ? Icon(Icons.pause_circle_filled)
                        : Icon(Icons.play_circle_filled),
                    onPressed: () {
                      if (Grammophone.I.isPlaying()) {
                        Grammophone.I.pause();
                      } else {
                        Grammophone.I.resume();
                      }
                    },
                  );
                }),
            const SizedBox(width: 32),
            IconButton(
              iconSize: 38,
              icon: const Icon(Icons.skip_next),
              onPressed: () async {
                await Grammophone.I.skipForwards();
              },
            ),
          ],
        ),
      ],
    );
  }
}
