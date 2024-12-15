import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jive_app/audio/youtube-integration.dart';
import 'package:jive_app/comm/device_comm.dart';
import 'package:jive_app/logger.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'youtube_datasource.g.dart';

class YoutubeDatasource {
  Future<List<SongMeta>> search(String searchQuery, [int offset = 0]) async {
    logger.i("Searching youtube for '$searchQuery'");
    List<SongMeta> res = List.empty(growable: true);
    var searchResults = await searchYouTube(searchQuery);

    for (var searchResult in searchResults) {
      res.add(SongMeta(
        id: searchResult.id.toString(),
        title: searchResult.title,
        artist: [searchResult.author],
        album: "unknown",
        duration: searchResult.duration ?? Duration.zero,
        albumArtUrl: searchResult.thumbnails.highResUrl,
        reference: SongReference.youtube(searchResult.id.toString()),
      ));
    }

    logger.i("Youtube search results: $res");

    return res;
  }
}

@riverpod
YoutubeDatasource youtubeDatasource(Ref ref) => YoutubeDatasource();
