import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jive_app/logger.dart';
import 'package:jive_app/repositories/datasources/spotify_datasource.dart';
import 'package:jive_app/repositories/search_repository.dart';

@RoutePage()
class SettingsPage extends ConsumerWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings"),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton.icon(
              onPressed: () {},
              icon: Image.asset(
                "assets/logos/spotify_logo_transparent.png",
                color: Colors.white,
                height: 24,
                width: 24,
              ),
              label: Text('Connect with Spotify'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF1DB954),
                foregroundColor: Colors.white,
                padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
              ),
            ),
            ElevatedButton.icon(
              onPressed: () async {
                final result = await ref.read(spotifyDatasourceProvider).search("levels");
                logger.i(result);
              },
              icon: Image.asset(
                "assets/logos/spotify_logo_transparent.png",
                color: Colors.white,
                height: 24,
                width: 24,
              ),
              label: Text('Search tracks'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF1DB954),
                foregroundColor: Colors.white,
                padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
