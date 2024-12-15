import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:jive_app/provider/router.gr.dart';
import 'package:jive_app/ui/widgets/custom_network_image.dart';
import 'package:jive_app/ui/widgets/player.dart';
import 'package:jive_app/ui/widgets/search_song_delegate.dart';
import 'package:jive_app/ui/widgets/song_queue.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
      body: CustomScrollView(
        controller: ScrollController(),
        slivers: [
          SliverAppBar(
            floating: false,
            pinned: true,
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
                  child: const CustomNetworkImage(imageUrl: "https://placehold.co/512x512.png"),
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
