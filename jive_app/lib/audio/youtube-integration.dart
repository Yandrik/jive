import 'package:jive_app/logger.dart';
import 'package:youtube_explode_dart/youtube_explode_dart.dart';

Future<VideoSearchList> searchYouTube(var searchQuery) async {
  var yt = YoutubeExplode();
  var searchResults = await yt.search.search(searchQuery, filter: SortFilters.viewCount);
  yt.close();
  logger.i("Found ${searchResults.length} results for '$searchQuery'");
  return searchResults;
}
