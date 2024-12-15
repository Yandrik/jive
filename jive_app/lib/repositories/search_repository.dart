import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jive_app/comm/device_comm.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

// part 'search_repository.g.dart';

enum DataPlatform { spotify, local }

class SearchRepository {
  Future<List<SongMeta>> search(String searchQuery, DataPlatform platform, [int offset = 0]) {
    // Check if the app is a client or host and decide on that where to fetch the data from
    // Client => Request data from host (Youtube is maybe an exception)
    // Host => Request data directly from platforms

    List<SongMeta> res = List.empty();

    switch (platform) {
      case DataPlatform.spotify:
        if (hostController != null) {
          res = await SpotifyDatasource().search(searchQuery, platform, offset);
        } else {
          // Request data from host
        }
        break;
      case DataPlatform.youtube:
        res = await YoutubeDatasource().search(searchQuery, platform, offset);
        break;
      case DataPlatform.local:
        // Fetch data from local storage
        break;
    }

    return res;
  }
}

// @riverpod
// SearchRepository searchRepository(Ref ref) =>
//     SearchRepository(ref.watch(hostControllerPodProvider).value);
