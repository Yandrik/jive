import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jive_app/comm/device_comm.dart';
import 'package:jive_app/provider/queue_manager.dart';
import 'package:jive_app/repositories/search_repository.dart';
import 'package:jive_app/ui/widgets/custom_network_image.dart';

final searchMusicSource =
    StateProvider<MusicSource>((ref) => MusicSource.spotify);

class SearchSongDelegate extends SearchDelegate<SongMeta?> {
  SearchSongDelegate()
      : super(
          searchFieldLabel: "Search a song",
        );

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () => query = "",
        icon: const Icon(Icons.close),
      ),
      SongSourceIcon()
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () {
        close(context, null);
      },
      icon: const Icon(Icons.arrow_back),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return SearchSongsResult(query);
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return SizedBox();
  }

  @override
  ThemeData appBarTheme(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return theme.copyWith(
      appBarTheme: AppBarTheme(
        backgroundColor: theme.colorScheme.surfaceContainerLowest,
        foregroundColor: theme.colorScheme.onSurface,
        iconTheme: IconThemeData(
          color: theme.colorScheme.onSurface,
        ),
      ),
      textTheme: TextTheme(titleLarge: TextStyle(fontSize: 18)),
      inputDecorationTheme: InputDecorationTheme(
        hintStyle: TextStyle(
          color: theme.colorScheme.outline,
          fontSize: 18,
        ),
        border: InputBorder.none,
      ),
      scaffoldBackgroundColor: theme.colorScheme.surfaceContainerLow,
    );
  }
}

class SearchSongsResult extends ConsumerWidget {
  final String searchQuery;
  const SearchSongsResult(this.searchQuery, {super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return FutureBuilder<List<SongMeta>>(
      initialData: [],
      future: ref
          .read(searchRepositoryProvider)
          .search(searchQuery, ref.read(searchMusicSource.notifier).state),
      builder: (context, AsyncSnapshot<List<SongMeta>> snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        }
        if (snapshot.hasError) {
          return Center(child: Text('Error: ${snapshot.error}'));
        }
        if (!snapshot.hasData || snapshot.data!.isEmpty) {
          return const Center(child: Text('No results found'));
        }

        return ListView.builder(
          itemCount: snapshot.data!.length,
          itemBuilder: (context, index) {
            final song = snapshot.data![index];
            return ListTile(
              // TODO: HERE
              leading: ClipRRect(
                borderRadius: BorderRadius.circular(6),
                child: CustomNetworkImage(
                  imageUrl: song.albumArtUrl ?? "",
                  size: Size.square(50),
                ),
              ),
              title: Text(song.title),
              subtitle: Text(song.artist.firstOrNull ?? ""),
              onTap: () {
                _showMoreSelection(song, context);
              },
              trailing: IconButton(
                icon: const Icon(Icons.more_vert),
                onPressed: () {
                  _showMoreSelection(song, context);
                },
              ),
            );
          },
        );
      },
    );
  }
}

class SongSourceIcon extends ConsumerWidget {
  const SongSourceIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final musicSource = ref.watch(searchMusicSource);
    return IconButton(
      onPressed: () {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: const Text('Select source'),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ListTile(
                    leading: _getIcon(MusicSource.spotify),
                    title: const Text('Search Spotify'),
                    onTap: () {
                      ref.read(searchMusicSource.notifier).state =
                          MusicSource.spotify;
                      Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    leading: _getIcon(MusicSource.youtube),
                    title: const Text('Search YouTube'),
                    onTap: () {
                      ref.read(searchMusicSource.notifier).state =
                          MusicSource.youtube;
                      Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    leading: _getIcon(MusicSource.local),
                    title: const Text('Search local library'),
                    onTap: () {
                      ref.read(searchMusicSource.notifier).state =
                          MusicSource.local;
                      Navigator.pop(context);
                    },
                  ),
                ],
              ),
            );
          },
        );
      },
      icon: _getIcon(musicSource),
    );
  }

  Widget _getIcon(MusicSource source) {
    if (source == MusicSource.spotify) {
      return Image.asset(
        "assets/logos/spotify_logo_black.png",
        fit: BoxFit.cover,
        width: 24,
        height: 24,
      );
    } else if (source == MusicSource.youtube) {
      return Image.asset(
        "assets/logos/youtube_logo_transparent.png",
        fit: BoxFit.contain,
        width: 24,
        height: 24,
      );
    }

    return Icon(Icons.library_music_rounded);
  }
}

class SongSearchResult extends StatelessWidget {
  final SongMeta song;

  const SongSearchResult({required this.song, super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.only(left: 16, right: 6),
      key: ValueKey(song.id),
      leading: song.albumArtUrl != null
          ? CustomNetworkImage(
              imageUrl: "https://placehold.co/50x50.png",
              size: Size(50, 50),
            )
          : const Icon(Icons.music_note),
      title: Text(song.title),
      subtitle: Row(
        //mainAxisSize: MainAxisSize.min,
        children: [
          if (song.reference is SpotifySong)
            Padding(
              padding: const EdgeInsets.only(right: 8),
              child: Image.asset('assets/logos/spotify_logo_black.png',
                  height: 16),
            ),
          if (song.reference is YoutubeSong)
            Padding(
              padding: const EdgeInsets.only(right: 8),
              child: Image.asset('assets/logos/youtube_logo_transparent.png',
                  height: 16),
            ),
          if (song.reference is LocalSong)
            Padding(
              padding: const EdgeInsets.only(right: 8),
              child: Icon(Icons.file_present, size: 16),
            ),
          Text(song.artist.join(', ')),
        ],
      ),
    );
  }
}

void _showMoreSelection(SongMeta song, BuildContext context) {
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
                leading: const Icon(Icons.vertical_align_bottom),
                title: const Text('Add to the End'),
                onTap: () {
                  QueueSingleton.I.addToQueue(song);
                  Navigator.of(context).pop();
                },
              ),
              ListTile(
                leading: const Icon(Icons.play_arrow),
                title: const Text('Play Next'),
                onTap: () {
                  QueueSingleton.I.addNextInQueue(song);
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
