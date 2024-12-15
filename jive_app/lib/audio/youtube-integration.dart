import 'package:youtube_explode_dart/youtube_explode_dart.dart';

Future<VideoSearchList> searchYouTube(var searchQuery) async {
  var yt = YoutubeExplode();
  var searchResults = await yt.search.search(searchQuery);
  yt.close();
  return searchResults;
}
