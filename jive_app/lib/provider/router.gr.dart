// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i5;
import 'package:jive_app/ui/pages/entry_page.dart' as _i1;
import 'package:jive_app/ui/pages/home_page%20copy.dart' as _i2;
import 'package:jive_app/ui/pages/people_page.dart' as _i3;
import 'package:jive_app/ui/pages/settings_page.dart' as _i4;

/// generated route for
/// [_i1.EntryPage]
class EntryRoute extends _i5.PageRouteInfo<void> {
  const EntryRoute({List<_i5.PageRouteInfo>? children})
      : super(
          EntryRoute.name,
          initialChildren: children,
        );

  static const String name = 'EntryRoute';

  static _i5.PageInfo page = _i5.PageInfo(
    name,
    builder: (data) {
      return const _i1.EntryPage();
    },
  );
}

/// generated route for
/// [_i2.HomePage]
class HomeRoute extends _i5.PageRouteInfo<void> {
  const HomeRoute({List<_i5.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static _i5.PageInfo page = _i5.PageInfo(
    name,
    builder: (data) {
      return const _i2.HomePage();
    },
  );
}

/// generated route for
/// [_i3.PeoplePage]
class PeopleRoute extends _i5.PageRouteInfo<void> {
  const PeopleRoute({List<_i5.PageRouteInfo>? children})
      : super(
          PeopleRoute.name,
          initialChildren: children,
        );

  static const String name = 'PeopleRoute';

  static _i5.PageInfo page = _i5.PageInfo(
    name,
    builder: (data) {
      return const _i3.PeoplePage();
    },
  );
}

/// generated route for
/// [_i4.SettingsPage]
class SettingsRoute extends _i5.PageRouteInfo<void> {
  const SettingsRoute({List<_i5.PageRouteInfo>? children})
      : super(
          SettingsRoute.name,
          initialChildren: children,
        );

  static const String name = 'SettingsRoute';

  static _i5.PageInfo page = _i5.PageInfo(
    name,
    builder: (data) {
      return const _i4.SettingsPage();
    },
  );
}
