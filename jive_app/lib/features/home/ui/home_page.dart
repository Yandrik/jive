import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("title"),
      ),
      body: Center(
          child: Container(
        color: theme.colorScheme.surfaceContainer,
        width: 100,
        height: 100,
        child: Text("Test"),
      )),
    );
  }
}
