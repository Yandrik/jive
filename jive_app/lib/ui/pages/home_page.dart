import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:jive_app/constants/env.dart';
import 'package:jive_app/provider/router.gr.dart';
import 'package:jive_app/ui/pages/widgets/song_queue.dart';
import 'package:jive_app/ui/widgets/player.dart';
import 'package:spotify_sdk/spotify_sdk.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              context.navigateTo(SettingsRoute());
            },
            icon: Icon(Icons.settings),
          ),
        ],
      ),
      body: Center(
          child: Column(
        children: [
          Player(),
          FilledButton(
            child: Text("Spotify Remote"),
            onPressed: () async {
              await SpotifySdk.connectToSpotifyRemote(
                  clientId: AppEnvironment.spotifyClientId,
                  redirectUrl: AppEnvironment.spotifyRedirectUrl);
            },
          ),
          FilledButton(
            child: Text("Spotify Access Token"),
            onPressed: () async {
              await SpotifySdk.getAccessToken(
                clientId: AppEnvironment.spotifyClientId,
                redirectUrl: AppEnvironment.spotifyRedirectUrl,
              );
            },
          ),
          FilledButton(
            child: Text("Play"),
            onPressed: () async {
              await SpotifySdk.play(
                  spotifyUri: "spotify:track:3nwwzrNmmcTt5nSa5xx2S9");
            },
          ),
          SizedBox(height: 22),
          SongQueue(),
        ],
      )),
    );
  }
}
