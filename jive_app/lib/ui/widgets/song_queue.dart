import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jive_app/comm/device_comm.dart';
import 'package:jive_app/provider/songs.dart';
import 'package:jive_app/ui/widgets/custom_network_image.dart';
import 'package:reorderables/reorderables.dart';
import 'package:rust/rust.dart';

class SongQueue extends ConsumerWidget {
  const SongQueue({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final songs = ref.watch(songQueueProvider);
    return ReorderableSliverList(
      delegate: ReorderableSliverChildListDelegate(songs.mapIndexed((index, item) {
        final song = item.$2;
        final client = item.$1;
        return ListTile(
          contentPadding: EdgeInsets.only(left: 16, right: 6),
          key: ValueKey(song.id),
          leading: song.albumArtUrl != null
              ? CustomNetworkImage(
                  imageUrl: "https://placehold.co/50x50.png",
                  size: Size(50, 50),
                )
              : null,
          title: Text(song.title),
          subtitle: Row(
            children: [
              if (song.reference is SpotifySong)
                Padding(
                  padding: const EdgeInsets.only(right: 8),
                  child: Image.asset('assets/logos/spotify_logo_black.png', height: 16),
                ),
              if (song.reference is LocalSong)
                Padding(
                  padding: const EdgeInsets.only(right: 8),
                  child: Icon(Icons.file_present, size: 16),
                ),
              Text(song.artist),
            ],
          ),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: 22,
                height: 22,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: _getColorFromHash(client.toString()),
                ),
                child: client != null
                    ? Center(
                        child: Text(
                          client.name.chars().elementAt(0),
                          style: TextStyle(color: Colors.black),
                        ),
                      )
                    : null,
              ),
              IconButton(
                icon: const Icon(Icons.more_vert),
                onPressed: () {
                  _showMoreSelection(index, context, ref);
                },
              ),
            ],
          ),
        );
      }).toList()),
      onReorder: (oldIndex, newIndex) {
        ref.read(songQueueProvider.notifier).moveSong(oldIndex, newIndex);
      },
    );
  }

  void _showMoreSelection(int index, BuildContext context, WidgetRef ref) {
    showModalBottomSheet(
      showDragHandle: true,
      context: context,
      useRootNavigator: true,
      builder: (context) {
        return SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 12),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ListTile(
                  leading: const Icon(Icons.delete),
                  title: const Text('Delete'),
                  onTap: () {
                    ref.read(songQueueProvider.notifier).removeFromQueue(index);
                    Navigator.of(context).pop();
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Color _getColorFromHash(String input) {
    final hash = input.hashCode;
    return Color.fromARGB(
      255,
      (hash & 0xFF0000) >> 16,
      (hash & 0x00FF00) >> 8,
      hash & 0x0000FF,
    );
  }
}
