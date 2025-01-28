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
        StreamBuilder<SongMeta?>(
          stream: Grammophone.I.currentSongStream,
          initialData: Grammophone.I.currentSong,
          builder: (context, snapshot) {
            return Text(
              snapshot.data?.title ?? "Song Name",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            );
          },
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
          initialData: (Duration.zero, Duration.zero),
          builder: (context, snapshot) {
            final remaining = snapshot.data?.$1 ?? Duration.zero;
            final total = snapshot.data?.$2 ?? Duration.zero;

            return Text(
              '${remaining.inMinutes}:${(remaining.inSeconds % 60).toString().padLeft(2, '0')} / '
              '${total.inMinutes}:${(total.inSeconds % 60).toString().padLeft(2, '0')}',
              style: const TextStyle(fontSize: 12),
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
                  final isPlaying = snapshot.data == MediaPlayState.playing;
                  return IconButton(
                    iconSize: 48,
                    icon: isPlaying
                        ? Icon(Icons.pause_circle_filled)
                        : Icon(Icons.play_circle_filled),
                    onPressed: () {
                      if (isPlaying) {
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
