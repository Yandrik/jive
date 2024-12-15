import 'package:jive_app/logger.dart';
import 'package:path_provider/path_provider.dart';
import 'package:youtube_explode_dart/youtube_explode_dart.dart';

Future<VideoSearchList> searchYouTube(var searchQuery) async {
  var yt = YoutubeExplode();
  var searchResults =
      await yt.search.search(searchQuery, filter: TypeFilters.video);
  yt.close();
  logger.i("Found ${searchResults.length} results for '$searchQuery'");
  return searchResults;
}


/*Future<List<String>> getAutoCompleteSuggestions(String searchQuery) async {
  var yt = YoutubeExplode();
  
  yt.close();
  return suggestions;
}*/
