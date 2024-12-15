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
  final theme = ThemeData.from(
    colorScheme: getColorScheme(ThemeMode.dark, flavor),
    textTheme: getTextTheme(ThemeMode.dark, flavor),
    useMaterial3: true,
  ).copyWith(scaffoldBackgroundColor: flavor.mantle);
  return copyWithComponentThemes(theme, ThemeMode.dark, flavor);
}

@riverpod
ThemeData lightTheme(Ref ref) {
  final flavor = Style.catppuccinFlavor;
  final theme = ThemeData.from(
    colorScheme: getColorScheme(ThemeMode.light, flavor),
    textTheme: getTextTheme(ThemeMode.light, flavor),
    useMaterial3: true,
  );
  return copyWithComponentThemes(theme, ThemeMode.light, flavor);
}

ColorScheme getColorScheme(ThemeMode themeMode, Flavor flavor) {
  final flavor = Style.catppuccinFlavor;
  return ColorScheme(
    brightness:
        themeMode == ThemeMode.light ? Brightness.light : Brightness.dark,
    error: flavor.surface2,
    onError: flavor.red,
    onPrimary: flavor.lavender,
    onSecondary: flavor.teal,
    onSurface: flavor.text,
    primary: flavor.crust,
    secondary: flavor.mantle,
    surface: flavor.base,
    surfaceContainerLowest: flavor.base,
    surfaceContainerLow: flavor.mantle,
    surfaceContainer: flavor.surface0,
    surfaceContainerHigh: flavor.surface1,
    surfaceContainerHighest: flavor.surface2,
    outline: flavor.subtext0,
  );
}

TextTheme getTextTheme(ThemeMode themeMode, Flavor flavor) {
  return TextTheme().apply(
    bodyColor: flavor.text,
    displayColor: flavor.crust,
  );
}

ThemeData copyWithComponentThemes(
    ThemeData theme, ThemeMode themeMode, Flavor flavor) {
  return theme.copyWith(
    appBarTheme: AppBarTheme(
      backgroundColor: flavor.mantle,
    ),
    bottomSheetTheme: BottomSheetThemeData(
      dragHandleColor: Colors.white,
      dragHandleSize: Size(60, 4),
      elevation: 0,
      showDragHandle: true,
    ),
    sliderTheme: SliderThemeData(thumbColor: Colors.white),
    textSelectionTheme: TextSelectionThemeData(
      cursorColor: Colors.white,
      selectionColor: flavor.blue.withAlpha(200),
      selectionHandleColor: flavor.blue.withAlpha(200),
    ),
    iconTheme: IconThemeData(color: Colors.white),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: flavor.maroon,
        foregroundColor: flavor.crust,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      enabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: flavor.subtext0),
      ),
      focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: flavor.flamingo),
      ),
      labelStyle: TextStyle(color: flavor.subtext0),
      floatingLabelStyle: TextStyle(color: flavor.flamingo),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: flavor.flamingo,
      ),
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
