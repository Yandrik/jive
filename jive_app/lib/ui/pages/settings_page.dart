import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:jive_app/platforms/KotlinPlatform.dart';

@RoutePage()
class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key, required this.kotlinPlatform});
  final KotlinPlatform kotlinPlatform;

  @override
  Widget build(BuildContext context) {
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
            SizedBox(height: 16),
            ElevatedButton.icon(
              onPressed: () {
                kotlinPlatform.playExample();
              },
              icon: Icon(
                Icons.settings,
                color: Colors.white,
              ),
              label: Text('Another Button'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
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
