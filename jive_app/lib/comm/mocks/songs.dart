import 'package:jive_app/comm/device_comm.dart';

final List<(Client?, SongMeta)> songMocks = [
  (
    null,
    SongMeta(
      title: "Bohemian Rhapsody",
      artist: "Queen",
      duration: Duration(minutes: 5, seconds: 55),
      reference: SpotifySong("123"),
      albumArtUrl: "assets/images/bohemian_rhapsody.jpg",
      album: "A Night at the Opera",
      id: "1",
    )
  ),
  (
    null,
    SongMeta(
      title: "Sweet Child O' Mine",
      artist: "Guns N' Roses",
      duration: Duration(minutes: 5, seconds: 56),
      reference: SpotifySong("123"),
      albumArtUrl: "assets/images/appetite_for_destruction.jpg",
      album: "Appetite for Destruction",
      id: "2",
    )
  ),
  (
    null,
    SongMeta(
      title: "Stairway to Heaven",
      artist: "Led Zeppelin",
      duration: Duration(minutes: 8, seconds: 2),
      reference: SpotifySong("123"),
      albumArtUrl: "assets/images/led_zeppelin_iv.jpg",
      album: "Led Zeppelin IV",
      id: "3",
    )
  ),
  (
    null,
    SongMeta(
      title: "Hotel California",
      artist: "Eagles",
      duration: Duration(minutes: 6, seconds: 30),
      reference: SpotifySong("123"),
      albumArtUrl: "assets/images/hotel_california.jpg",
      album: "Hotel California",
      id: "4",
    )
  ),
];
