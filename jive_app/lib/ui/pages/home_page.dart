import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:jive_app/provider/router.gr.dart';
import 'package:jive_app/ui/widgets/player.dart';
import 'package:jive_app/ui/widgets/search_song_delegate.dart';
import 'package:jive_app/ui/widgets/song_queue.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        leading: Column(
          children: [
            IconButton(
              onPressed: () {
                _showExitDialog(context);
              },
              icon: Icon(Icons.exit_to_app),
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {
              context.navigateTo(SettingsRoute());
            },
            icon: Icon(Icons.settings),
          ),
          IconButton(
              onPressed: () {
                showSearch(
                  context: context,
                  delegate: SearchSongDelegate(),
                );
              },
              icon: Icon(Icons.search))
        ],
      ),
      body: Center(
        child: Column(
          children: [
            Player(),
            SizedBox(height: 18),
            Expanded(child: SongQueue()),
          ],
        ),
      ),
    );
  }

  void _showExitDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('End Jive Session?'),
          content: Text('Are you sure you want to end your jive session?'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                context.replaceRoute(EntryRoute());
              },
              child: Text('End Session'),
            ),
          ],
        );
      },
    );
  }
}
