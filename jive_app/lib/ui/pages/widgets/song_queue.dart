import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jive_app/comm/device_comm.dart';
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
        if (oldIndex < newIndex) {
          newIndex -= 1;
        }
        final songQueue = ref.read(songQueueProvider.notifier);
        final items = List<(Client?, SongMeta)>.from(songs);
        final item = items.removeAt(oldIndex);
        items.insert(newIndex, item);
        songQueue.state = items;
      },
      itemBuilder: (context, index) {
        final song = songs[index].$2;
        return ListTile(
          key: ValueKey(song.id),
          leading: song.albumArtUrl != null
              ? Image.network('https://placehold.co/50x50.png')
              : const Icon(Icons.music_note),
          title: Text(song.title),
          subtitle: Text(song.artist),
          trailing: const Icon(Icons.drag_handle),
        );
      },
    );
  }
}
