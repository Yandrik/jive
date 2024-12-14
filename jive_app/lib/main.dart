import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jive_app/provider/router.dart';
import 'package:jive_app/utils/provider_observer.dart';

void main() {
  runApp(
    ProviderScope(
      observers: [if (kDebugMode) AppProviderObserver()],
      child: JiveApp(),
    ),
  );
}

class JiveApp extends ConsumerWidget {
  const JiveApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp.router(
      title: 'Jive App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      routerConfig: ref.watch(routerProvider).config(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text("Jive App"),
    );
  }
}
