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

  void moveSong(int oldIndex, int newIndex) {
    if (oldIndex > newIndex) {
      state.insert(newIndex, state.removeAt(oldIndex));
    } else {
      state.insert(newIndex - 1, state.removeAt(oldIndex));
    }
    state = List.from(state);
  }
}

final currentSongProvider = Provider<(Client?, SongMeta)?>((ref) {
  return null;
});
