import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jive_app/provider/prefs.dart';
import 'package:jive_app/provider/router.dart';
import 'package:jive_app/provider/theme.dart';
import 'package:jive_app/repositories/search_repository.dart';
import 'package:jive_app/utils/provider_observer.dart';

void main() async {
  // Load environment variables
  await dotenv.load(fileName: ".env");
  runApp(
    ProviderScope(
      observers: [if (kDebugMode) AppProviderObserver()],
      child: const _EagerInitialization(
        child: JiveApp(),
      ),
    ),
  );
}

/// Only returns the [child] when the watched providers are initialized
class _EagerInitialization extends ConsumerWidget {
  const _EagerInitialization({required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Providers that are initialized eagerly
    final values = [
      ref.watch(prefsProvider),
      ref.watch(searchRepositoryProvider),
    ];

    if (values.every((value) => value is AsyncValue && value.hasValue)) {
      return child;
    }
    return const SizedBox();
  }
}

class JiveApp extends ConsumerWidget {
  const JiveApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp.router(
      title: 'Jive App',
      theme: ref.watch(lightThemeProvider),
      darkTheme: ref.watch(darkThemeProvider),
      themeMode: ref.watch(currentThemeModeProvider),
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
