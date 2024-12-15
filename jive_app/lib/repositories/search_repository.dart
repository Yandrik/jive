import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jive_app/comm/device_comm.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'search_repository.g.dart';

enum DataPlatform { spotify, local }

class SearchRepository {
  Future<List<SongMeta>> search(String searchQuery, DataPlatform platform, [int offset = 0]) {
    // Check if the app is a client or host and decide on that where to fetch the data from
    // Client => Request data from host (Youtube is maybe an exception)
    // Host => Request data directly from platforms
    return Future.value([]);
  }
}

@riverpod
SearchRepository searchRepository(Ref ref) => SearchRepository();
