import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jive_app/comm/device_comm.dart';
import 'package:jive_app/repositories/search_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'youtube_datasource.g.dart';

class YoutubeDatasource {
  Future<List<SongMeta>> search(String searchQuery, DataPlatform platform, [int offset = 0]) {
    return Future.value([]);
  }
}

@riverpod
YoutubeDatasource youtubeDatasource(Ref ref) => YoutubeDatasource();
