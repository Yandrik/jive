import 'dart:async';

import 'package:flutter/material.dart';
import 'package:jive_app/audio/grammophone.dart';
import 'package:jive_app/comm/device_comm.dart';

class SongProgressSlider extends StatelessWidget {
  const SongProgressSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<(Duration, Duration)>(
      stream: Grammophone.I.timeStream,
      initialData: (Duration.zero, Duration.zero),
      builder: (context, snapshot) {
        final remaining = snapshot.data?.$1 ?? Duration.zero;
        final total = snapshot.data?.$2 ?? Duration.zero;

        if (total == Duration.zero) {
          return Slider(
            value: 0.0,
            onChanged: null,
          );
        }

        final progress = 1 - (remaining.inMilliseconds / total.inMilliseconds);

        return Slider(
          value: progress.clamp(0.0, 1.0),
          onChanged: (value) {
            if (total != Duration.zero) {
              final newPosition = Duration(
                  milliseconds: ((1 - value) * total.inMilliseconds).round());
              Grammophone.I.seek(newPosition);
            }
          },
        );
      },
    );
  }
}
