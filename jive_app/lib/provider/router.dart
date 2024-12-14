import 'package:auto_route/auto_route.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jive_app/provider/router.gr.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'router.g.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen|Page,Route')
class AppRouter extends RootStackRouter {
  @override
  RouteType get defaultRouteType => const RouteType.adaptive();

  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          path: "/home",
          page: HomeRoute.page,
          initial: true,
        )
      ];

  @override
  List<AutoRouteGuard> get guards => [];
}

@Riverpod(keepAlive: true)
AppRouter router(Ref ref) {
  return AppRouter();
}