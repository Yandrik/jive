import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jive_app/provider/songs.dart';

class SongQueue extends ConsumerWidget {
  const SongQueue({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final songs = ref.watch(songQueueProvider);

    return ReorderableListView.builder(
      shrinkWrap: true,
      itemCount: songs.length,
      onReorder: (oldIndex, newIndex) {
        ref.read(songQueueProvider.notifier).moveSong(oldIndex, newIndex);
      },
      itemBuilder: (context, index) {
        final song = songs[index].$2;
        return ListTile(
          contentPadding: EdgeInsets.only(left: 16, right: 6),
          key: ValueKey(song.id),
          leading: song.albumArtUrl != null
              ? Image.network('https://placehold.co/50x50.png')
              : const Icon(Icons.music_note),
          title: Text(song.title),
          subtitle: Text(song.artist),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              IconButton(
                icon: const Icon(Icons.more_vert),
                onPressed: () {
                  _showMoreSelection(context);
                },
              ),
            ],
          ),
        );
      },
    );
  }

  void _showMoreSelection(BuildContext context) {
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
                  onTap: () {},
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
