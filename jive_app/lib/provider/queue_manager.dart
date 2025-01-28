import 'dart:async';

import 'package:jive_app/comm/device_comm.dart';
import 'package:jive_app/comm/multiplexer.dart';
import 'package:jive_app/provider/comm/client.dart';
import 'package:jive_app/provider/comm/host.dart';
import 'package:rust/rust.dart';

class QueueSingleton {
  static final QueueSingleton _instance = QueueSingleton._internal();
  factory QueueSingleton() => _instance;
  static QueueSingleton get I => _instance;

  QueueSingleton._internal();

  final _queueController =
      StreamController<List<(Option<Client>, SongMeta)>>.broadcast();
  Stream<List<(Option<Client>, SongMeta)>> get queueStream =>
      _queueController.stream;

  List<(Option<Client>, SongMeta)> _queue = [];
  List<(Option<Client>, SongMeta)> get queue => _queue;

  // History buffer for skip back functionality
  final List<(Option<Client>, SongMeta)> _history = [];
  static const int _maxHistorySize = 16;

  void addToHistory(Option<Client> client, SongMeta song) {
    _history.add((client, song));
    if (_history.length > _maxHistorySize) {
      _history.removeAt(0);
    }
  }

  bool canSkipBack() => _history.isNotEmpty;

  /// Skips back to the previous song in the history buffer, and returns the
  /// second-previously played song to the queue.
  /// If the history buffer is empty, this method does nothing.
  (Option<Client>, SongMeta)? skipBack() {
    if (!canSkipBack()) return null;

    if (HostControllerSingleton.I.controller != null) {
      final previousSong = _history.removeLast();
      addNextInQueue(previousSong.$2, client: previousSong.$1);
      return _history.isEmpty ? null : _history.last;
    } else {
      // is client
      ClientControllerSingleton.I.sendToHost(
        DeviceCommand.mediaCommand(MediaCommandType.previous),
      );
      return null;
    }
  }

  (Option<Client>, SongMeta)? nextSong() {
    if (_queue.isEmpty) return null;

    final nextSong = _queue[0];
    _queue.removeAt(0);
    _queueController.add(_queue);

    if (HostControllerSingleton.I.controller != null) {
      addToHistory(nextSong.$1, nextSong.$2);
    }

    return nextSong;
  }

  void addToQueue(SongMeta song, {Option<Client> client = None}) {
    if (HostControllerSingleton.I.controller != null) {
      _queue.add((client, song));
      _queueController.add(_queue);
    } else {
      // is client
      ClientControllerSingleton.I.sendToHost(DeviceCommand.addSong(song));
    }
  }

  void addNextInQueue(SongMeta song, {Option<Client> client = None}) {
    if (HostControllerSingleton.I.controller != null) {
      _queue.insert(0, (client, song));
      _queueController.add(_queue);
    } else {
      // is client
      ClientControllerSingleton.I
          .sendToHost(DeviceCommand.addSongToStart(song));
    }
  }

  void addAllToQueue(List<(Option<Client>, SongMeta)> songs) {
    _queue.addAll(songs);
    _queueController.add(_queue);
  }

  void removeFromQueue(int index) {
    if (HostControllerSingleton.I.controller != null) {
      _queue.removeAt(index);
      _queueController.add(_queue);
    } else {
      // is client
      ClientControllerSingleton.I.sendToHost(DeviceCommand.deleteSong(index));
    }
  }

  void moveSong(int oldIndex, int newIndex) {
    if (HostControllerSingleton.I.controller != null) {
      final item = _queue.removeAt(oldIndex);
      _queue.insert(newIndex, item);
      _queueController.add(_queue);
    } else {
      // is client
      ClientControllerSingleton.I
          .sendToHost(DeviceCommand.moveSong(oldIndex, newIndex));
    }
  }

  void clear() {
    _queue.clear();
    _queueController.add(_queue);
  }

  void clearQueue() {
    _queue.clear();
    _queueController.add(_queue);
  }

  void dispose() {
    _queueController.close();
  }
}
