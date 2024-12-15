import 'dart:async';

import 'package:jive_app/comm/device_comm.dart';
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

  void addToQueue(SongMeta song, {Option<Client> client = None}) {
    _queue.add((client, song));
    _queueController.add(_queue);
  }

  void addNextInQueue(SongMeta song, {Option<Client> client = None}) {
    _queue.insert(0, (client, song));
    _queueController.add(_queue);
  }

  void addAllToQueue(List<(Option<Client>, SongMeta)> songs) {
    _queue.addAll(songs);
    _queueController.add(_queue);
  }

  void removeFromQueue(int index) {
    _queue.removeAt(index);
    _queueController.add(_queue);
  }

  void moveSong(int oldIndex, int newIndex) {
    final item = _queue.removeAt(oldIndex);
    _queue.insert(newIndex, item);
    _queueController.add(_queue);
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
