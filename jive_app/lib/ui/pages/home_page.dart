import 'package:auto_route/auto_route.dart';
import 'package:catppuccin_flutter/catppuccin_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jive_app/audio/grammophone.dart';
import 'package:jive_app/logger.dart';
import 'package:jive_app/provider/comm/client.dart';
import 'package:jive_app/provider/comm/host.dart';
import 'package:jive_app/provider/router.gr.dart';
import 'package:jive_app/ui/widgets/custom_network_image.dart';
import 'package:jive_app/ui/widgets/player.dart';
import 'package:jive_app/ui/widgets/search_song_delegate.dart';
import 'package:jive_app/ui/widgets/song_queue.dart';
import 'package:jive_app/utils/consts.dart';
import 'package:pretty_qr_code/pretty_qr_code.dart';
import 'package:share_plus/share_plus.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Consumer(
      builder: (context, ref, _ignore) {
        ref.listen(deviceCommandsProvider, (prev, now) {
          if (now.hasValue && now.value != null) {
            final name = now.value!.$1.name;
            logger.i("message by $name");
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text("Client '$name' has connected. TODO: only do connects"),
              ),
            );
          }
        });
        return Scaffold(
          body: SafeArea(
            child: CustomScrollView(
              controller: ScrollController(),
              slivers: [
                SliverAppBar(
                  floating: false,
                  pinned: true,
                  leadingWidth: 250,
                  leading: Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          _showExitDialog(context);
                        },
                        icon: Icon(Icons.exit_to_app),
                      ),
                      IconButton(
                        onPressed: () {
                          _showShareDialog(context);
                        },
                        icon: Icon(Icons.share),
                      ),
                      IconButton(
                        onPressed: () => context.navigateTo(PeopleRoute()),
                        icon: Icon(Icons.people),
                      ),
                    ],
                  ),
                  actions: [
                    IconButton(
                      onPressed: () => context.navigateTo(SettingsRoute()),
                      icon: Icon(Icons.settings),
                    ),
                    IconButton(
                      onPressed: () => showSearch(
                        context: context,
                        delegate: SearchSongDelegate(),
                      ),
                      icon: Icon(Icons.search),
                    ),
                  ],
                ),
                SliverToBoxAdapter(
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 12),
                    child: Center(
                      child: Container(
                        width: 180,
                        height: 180,
                        decoration: BoxDecoration(
                          color: theme.cardColor,
                          borderRadius: BorderRadius.circular(12),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withAlpha(120),
                              spreadRadius: 4,
                              blurRadius: 8,
                              offset: const Offset(3, 6),
                            ),
                          ],
                        ),
                        child: CustomNetworkImage(
                          imageUrl: Grammophone.I.currentSong?.albumArtUrl ??
                              "https://placehold.co/512x512.png",
                        ),
                      ),
                    ),
                  ),
                ),
                SliverPersistentHeader(
                  pinned: true,
                  floating: false,
                  delegate: _StickyHeaderDelegate(
                    child: Container(
                      color: theme.colorScheme.surfaceContainerLow,
                      child: Player(),
                    ),
                    height: 180,
                  ),
                ),
                SongQueue()
              ],
            ),
          ),
        );
      },
    );
  }

  void _showExitDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return PopScope(
          canPop: false,
          child: AlertDialog(
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
                  ClientControllerSingleton.I.clear();
                  HostControllerSingleton.I.clear();
                  context.replaceRoute(EntryRoute());
                },
                child: Text('End Session'),
              ),
            ],
          ),
        );
      },
    );
  }
}

class _StickyHeaderDelegate extends SliverPersistentHeaderDelegate {
  final Widget child;
  final double height;

  _StickyHeaderDelegate({
    required this.child,
    required this.height,
  });

  @override
  double get minExtent => height;
  @override
  double get maxExtent => height;

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    return child;
  }

  @override
  bool shouldRebuild(_StickyHeaderDelegate oldDelegate) {
    return false;
  }
}

void _showShareDialog(BuildContext context) {
  logger.i("Showing Share Dialog...");

  final sessionId = HostControllerSingleton.I.controller?.host.id ??
      ClientControllerSingleton.I.controller?.currentHost?.id ??
      'BUG: NO ID';
  final shareUrl = '$SERVER_URI/join/$sessionId';

  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text('Share Session'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            PrettyQrView.data(
                data: shareUrl,
                decoration: PrettyQrDecoration(
                    shape: PrettyQrSmoothSymbol(color: catppuccin.mocha.flamingo))),
            SizedBox(height: 16),
            SelectableText(
              sessionId,
              style: TextStyle(fontSize: 16),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: Icon(Icons.copy),
                  onPressed: () {
                    Clipboard.setData(ClipboardData(text: sessionId));
                  },
                ),
                IconButton(
                  icon: Icon(Icons.share),
                  onPressed: () async {
                    await Share.share(
                      'Join my Jive session!\n$shareUrl',
                      subject: 'Join Jive Session',
                    );
                  },
                )
              ],
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text('Close'),
          ),
        ],
      );
    },
  );
}
