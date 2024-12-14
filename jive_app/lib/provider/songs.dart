import 'package:jive_app/comm/device_comm.dart';
import 'package:jive_app/comm/mocks/songs.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'songs.g.dart';

@riverpod
class SongQueue extends _$SongQueue {
  @override
  List<(Client?, SongMeta)> build() {
    return songMocks;
  }
}

final currentSongProvider = Provider<(Client?, SongMeta)?>((ref) {
  return null;
});
