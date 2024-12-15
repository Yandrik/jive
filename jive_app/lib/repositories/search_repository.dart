import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jive_app/comm/device_comm.dart';
import 'package:jive_app/provider/comm/client.dart';
import 'package:jive_app/provider/comm/host.dart';
import 'package:jive_app/repositories/datasources/spotify_datasource.dart';
import 'package:jive_app/repositories/datasources/youtube_datasource.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'search_repository.g.dart';

class SearchRepository {
  final SpotifyDatasource spotifyDatasource;
  final YoutubeDatasource youtubeDatasource;
  const SearchRepository(this.spotifyDatasource, this.youtubeDatasource);

  Future<List<SongMeta>> search(String searchQuery, MusicSource source,
      [int offset = 0]) async {
    // Check if the app is a client or host and decide on that where to fetch the data from
    // Client => Request data from host (Youtube is maybe an exception)
    // Host => Request data directly from platforms

    if (source == MusicSource.youtube)
      return await youtubeDatasource.search(searchQuery, offset);

    final hostController = HostControllerSingleton.I.controller;
    final clientController = ClientControllerSingleton.I.controller;

    if (hostController != null || clientController == null) {
      if (source == MusicSource.spotify)
        return await spotifyDatasource.search(searchQuery, offset);
    } else {
      if (source == MusicSource.spotify) {
        final clientController = ClientControllerSingleton.I.controller;
        final completer = Completer<List<SongMeta>>();
        ClientControllerSingleton.I.stream.listen(
          (response) {
            if (response is SearchResultResponse) {
              completer.complete(response.songs);
            }
          },
        );
        clientController!
            .sendCommand(SearchCommand(searchQuery, source, offset));

        final result = await completer.future
            .timeout(Duration(seconds: 10), onTimeout: () => []);

        return result;
      }
    }
    return [];
  }
}

@Riverpod(keepAlive: true)
SearchRepository searchRepository(Ref ref) {
  final repo = SearchRepository(
      ref.read(spotifyDatasourceProvider), ref.read(youtubeDatasourceProvider));
  final stream = HostControllerSingleton.I.stream.listen((event) async {
    final client = event.$1;
    final cmd = event.$2;
    if (cmd is SearchCommand) {
      final songs = await repo.search(cmd.query, cmd.source, cmd.offset);
      HostControllerSingleton.I
          .sendToClient(client, SearchResultResponse(songs));
    }
  });
  ref.onDispose(() => stream.cancel());
  return repo;
}
