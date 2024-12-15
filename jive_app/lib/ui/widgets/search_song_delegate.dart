import 'package:flutter/material.dart';
import 'package:jive_app/comm/device_comm.dart';
import 'package:jive_app/ui/widgets/custom_network_image.dart';

enum SearchSource { spotify, youtube, local }

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
    return Container();
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

class SongSourceIcon extends StatefulWidget {
  const SongSourceIcon({super.key});

  @override
  State<SongSourceIcon> createState() => _SongSourceIconState();
}

class _SongSourceIconState extends State<SongSourceIcon> {
  SearchSource _searchSource = SearchSource.spotify;

  @override
  Widget build(BuildContext context) {
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
                    leading: _getIcon(SearchSource.spotify),
                    title: const Text('Search Spotify'),
                    onTap: () {
                      setState(() => _searchSource = SearchSource.spotify);
                      Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    leading: _getIcon(SearchSource.youtube),
                    title: const Text('Search YouTube'),
                    onTap: () {
                      setState(() => _searchSource = SearchSource.youtube);
                      Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    leading: _getIcon(SearchSource.local),
                    title: const Text('Search local library'),
                    onTap: () {
                      setState(() => _searchSource = SearchSource.local);
                      Navigator.pop(context);
                    },
                  ),
                ],
              ),
            );
          },
        );
      },
      icon: _getIcon(_searchSource),
    );
  }

  Widget _getIcon(SearchSource source) {
    if (source == SearchSource.spotify) {
      return Image.asset(
        "assets/logos/spotify_logo_black.png",
        fit: BoxFit.cover,
        width: 24,
        height: 24,
      );
    } else if (source == SearchSource.youtube) {
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
          Text(song.artist),
        ],
      ),
    );
  }
}
