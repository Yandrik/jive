import 'package:catppuccin_flutter/catppuccin_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jive_app/constants/prefs.dart';
import 'package:jive_app/constants/style.dart';
import 'package:jive_app/provider/prefs.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'theme.g.dart';

@riverpod
ThemeData darkTheme(Ref ref) {
  final flavor = Style.catppuccinFlavor;
  return ThemeData.from(
    colorScheme: getColorScheme(ThemeMode.dark, flavor),
    textTheme: getTextTheme(ThemeMode.light, flavor),
    useMaterial3: true,
  );
}

@riverpod
ThemeData lightTheme(Ref ref) {
  final flavor = Style.catppuccinFlavor;
  return ThemeData.from(
    colorScheme: getColorScheme(ThemeMode.light, flavor),
    textTheme: getTextTheme(ThemeMode.light, flavor),
    useMaterial3: true,
  );
}

ColorScheme getColorScheme(ThemeMode themeMode, Flavor flavor) {
  final flavor = Style.catppuccinFlavor;
  return ColorScheme(
    brightness: themeMode == ThemeMode.light ? Brightness.light : Brightness.dark,
    error: flavor.surface2,
    onError: flavor.red,
    onPrimary: flavor.lavender,
    onSecondary: flavor.teal,
    onSurface: flavor.text,
    primary: flavor.crust,
    secondary: flavor.mantle,
    surface: flavor.surface0,
  );
}

TextTheme getTextTheme(ThemeMode themeMode, Flavor flavor) {
  return TextTheme().apply(
    bodyColor: flavor.text,
    displayColor: flavor.crust,
  );
}

ThemeData copyWithComponentThemes(ThemeData theme, ThemeMode themeMode, Flavor flavor) {
  return theme.copyWith(
    appBarTheme: AppBarTheme(
      elevation: 0,
      titleTextStyle: TextStyle(color: flavor.text, fontSize: 20, fontWeight: FontWeight.bold),
      backgroundColor: flavor.crust,
      foregroundColor: flavor.mantle,
    ),
  );
}

@riverpod
class CurrentThemeMode extends _$CurrentThemeMode {
  @override
  ThemeMode build() {
    final prefs = ref.watch(prefsProvider).requireValue;
    final themeModeIndex = prefs.getInt(PrefsKeys.themeMode);
    return ThemeMode.values.singleWhere(
      (themeMode) => themeMode.index == themeModeIndex,
      orElse: () => ThemeMode.system,
    );
  }

  set(ThemeMode mode) {
    final prefs = ref.read(prefsProvider).requireValue;
    state = mode;
    prefs.setInt(PrefsKeys.themeMode, mode.index);
  }
}
