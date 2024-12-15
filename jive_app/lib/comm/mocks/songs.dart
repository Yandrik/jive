import 'package:jive_app/comm/device_comm.dart';

final List<(Client?, SongMeta)> songMocks = [
  (
    Client(id: "123", name: "Lars"),
    SongMeta(
      title: "Bohemian Rhapsody",
      artist: ["Queen"],
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
      artist: ["Guns N' Roses"],
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
      artist: ["Led Zeppelin"],
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
      artist: ["Eagles"],
      duration: Duration(minutes: 6, seconds: 30),
      reference: SpotifySong("123"),
      albumArtUrl: "assets/images/hotel_california.jpg",
      album: "Hotel California",
      id: "4",
    )
  ),
  (
    null,
    SongMeta(
      title: "Smells Like Teen Spirit",
      artist: ["Nirvana"],
      duration: Duration(minutes: 5, seconds: 1),
      reference: SpotifySong("123"),
      albumArtUrl: "assets/images/nevermind.jpg",
      album: "Nevermind",
      id: "5",
    )
  ),
  (
    null,
    SongMeta(
      title: "Back in Black",
      artist: ["AC/DC"],
      duration: Duration(minutes: 4, seconds: 15),
      reference: SpotifySong("123"),
      albumArtUrl: "assets/images/back_in_black.jpg",
      album: "Back in Black",
      id: "6",
    )
  ),
  (
    null,
    SongMeta(
      title: "Purple Rain",
      artist: ["Prince"],
      duration: Duration(minutes: 8, seconds: 41),
      reference: SpotifySong("123"),
      albumArtUrl: "assets/images/purple_rain.jpg",
      album: "Purple Rain",
      id: "7",
    )
  ),
  (
    null,
    SongMeta(
      title: "Like a Rolling Stone",
      artist: ["Bob Dylan"],
      duration: Duration(minutes: 6, seconds: 13),
      reference: SpotifySong("123"),
      albumArtUrl: "assets/images/highway_61_revisited.jpg",
      album: "Highway 61 Revisited",
      id: "8",
    )
  ),
  (
    null,
    SongMeta(
      title: "Imagine",
      artist: ["John Lennon"],
      duration: Duration(minutes: 3, seconds: 3),
      reference: SpotifySong("123"),
      albumArtUrl: "assets/images/imagine.jpg",
      album: "Imagine",
      id: "9",
    )
  ),
  (
    null,
    SongMeta(
      title: "Billie Jean",
      artist: ["Michael Jackson"],
      duration: Duration(minutes: 4, seconds: 54),
      reference: SpotifySong("123"),
      albumArtUrl: "assets/images/thriller.jpg",
      album: "Thriller",
      id: "10",
    )
  ),
  (
    null,
    SongMeta(
      title: "Sweet Dreams (Are Made of This)",
      artist: ["Eurythmics"],
      duration: Duration(minutes: 3, seconds: 36),
      reference: SpotifySong("123"),
      albumArtUrl: "assets/images/sweet_dreams.jpg",
      album: "Sweet Dreams (Are Made of This)",
      id: "11",
    )
  ),
  (
    null,
    SongMeta(
      title: "Wonderwall",
      artist: ["Oasis"],
      duration: Duration(minutes: 4, seconds: 18),
      reference: SpotifySong("123"),
      albumArtUrl: "assets/images/morning_glory.jpg",
      album: "(What's the Story) Morning Glory?",
      id: "12",
    )
  ),
  (
    null,
    SongMeta(
      title: "Every Breath You Take",
      artist: ["The Police"],
      duration: Duration(minutes: 4, seconds: 13),
      reference: SpotifySong("123"),
      albumArtUrl: "assets/images/synchronicity.jpg",
      album: "Synchronicity",
      id: "13",
    )
  ),
  (
    null,
    SongMeta(
      title: "Like a Prayer",
      artist: ["Madonna"],
      duration: Duration(minutes: 5, seconds: 39),
      reference: SpotifySong("123"),
      albumArtUrl: "assets/images/like_a_prayer.jpg",
      album: "Like a Prayer",
      id: "14",
    )
  ),
];
