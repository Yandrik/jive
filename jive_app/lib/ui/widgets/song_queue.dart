import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jive_app/comm/device_comm.dart';
import 'package:jive_app/provider/songs.dart';

class SongQueue extends ConsumerWidget {
  const SongQueue({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final songs = ref.watch(songQueueProvider);

    return Stack(
      children: [
        ReorderableListView.builder(
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
        ),
        Positioned(
          left: 0,
          right: 0,
          bottom: 0,
          height: 70,
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.transparent,
                  Color.fromARGB(139, 0, 0, 0),
                ],
                tileMode: TileMode.decal,
              ),
            ),
          ),
        ),
      ],
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
