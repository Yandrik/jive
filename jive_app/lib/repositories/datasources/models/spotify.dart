import 'package:freezed_annotation/freezed_annotation.dart';

part 'spotify.freezed.dart';
part 'spotify.g.dart';

@freezed
class SpotifyTrack with _$SpotifyTrack {
  const factory SpotifyTrack({
    required String id,
    required String name,
    required String uri,
    required bool isPlayable,
    required int durationMs,
    required List<SpotifyArtist> artists,
    required SpotifyAlbum album,
  }) = _SpotifyTrack;

  factory SpotifyTrack.fromJson(Map<String, dynamic> json) => _$SpotifyTrackFromJson(json);
}

@freezed
class SpotifyArtist with _$SpotifyArtist {
  const factory SpotifyArtist({
    required String id,
    required String name,
    required String uri,
    required String type,
    required String href,
  }) = _SpotifyArtist;

  factory SpotifyArtist.fromJson(Map<String, dynamic> json) => _$SpotifyArtistFromJson(json);
}

@freezed
class SpotifyAlbum with _$SpotifyAlbum {
  const factory SpotifyAlbum({
    required String id,
    required String name,
    required String uri,
    required List<SpotifyImage> images,
  }) = _SpotifyAlbum;

  factory SpotifyAlbum.fromJson(Map<String, dynamic> json) => _$SpotifyAlbumFromJson(json);
}

@freezed
class SpotifyImage with _$SpotifyImage {
  const factory SpotifyImage({
    required int height,
    required int width,
    required String url,
  }) = _SpotifyImage;

  factory SpotifyImage.fromJson(Map<String, dynamic> json) => _$SpotifyImageFromJson(json);
}
