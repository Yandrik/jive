import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jive_app/comm/device_comm.dart';
import 'package:jive_app/constants/env.dart';
import 'package:jive_app/logger.dart';
import 'package:jive_app/provider/dio.dart';
import 'package:jive_app/repositories/datasources/models/spotify.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:spotify_sdk/spotify_sdk.dart';

part 'spotify_datasource.g.dart';

class SpotifyDatasource {
  final Dio dio;
  SpotifyDatasource(this.dio);

  String accessToken = AppEnvironment.spotifyAccessToken;

  Future<List<SongMeta>> search(String searchQuery, [int offset = 0]) async {
    if (AppEnvironment.spotifyClientId.isEmpty ||
        AppEnvironment.spotifyRedirectUrl.isEmpty ||
        searchQuery.trim().isEmpty) {
      return [];
    }

    try {
      if (accessToken.isEmpty) {
        accessToken = await SpotifySdk.getAccessToken(
          clientId: AppEnvironment.spotifyClientId,
          redirectUrl: AppEnvironment.spotifyRedirectUrl,
        );
        logger.i("Received new access token for the Spotify web api");
      }
    } catch (e, stacktrace) {
      logger.e("Could not authenticate to Spotify Web api", error: e, stackTrace: stacktrace);
      return [];
    }

    try {
      final result = await dio.get(
        "https://api.spotify.com/v1/search",
        options: Options(
          headers: {"Authorization": "Bearer $accessToken"},
        ),
        queryParameters: {
          "q": searchQuery,
          "type": "track",
          "market": "DE",
          "offset": offset,
        },
      );

      final Map<String, dynamic> data = result.data;
      final items = data["tracks"]["items"] as List;
      return items.map((item) {
        final track = SpotifyTrack.fromJson(item);
        return SongMeta(
          id: track.id,
          title: track.name,
          artist: track.artists.map((artist) => artist.name).toList(),
          album: track.album.name,
          albumArtUrl: track.album.images.firstOrNull?.url,
          duration: Duration(milliseconds: track.durationMs),
          reference: SpotifySong(track.id),
        );
      }).toList();
    } catch (e, stacktrace) {
      logger.e("Failed to search '$searchQuery' in Spotify web api",
          error: e, stackTrace: stacktrace);
    }
    return [];
  }
}

@riverpod
SpotifyDatasource spotifyDatasource(Ref ref) => SpotifyDatasource(ref.watch(dioProvider));
