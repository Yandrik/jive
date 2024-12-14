import 'package:flutter_dotenv/flutter_dotenv.dart';

/// Environment variables of the app.
///
/// Can be set through a `.env` file.
class AppEnvironment {
  static String get spotifyClientId => dotenv.get('SPOTIFY_CLIENT_ID');
  static String get spotifyRedirectUrl => dotenv.get('SPOTIFY_REDIRECT_URL');
}
