import 'package:flutter/material.dart';
import 'package:white_label/client_switch.dart';

class AppDefaultColors {
  static const boredScaffoldGrey = Color(0xFFF4F4F4);
}

ThemeData baseTheme({required Brightness brightness}) {
  final BorderRadius borderRadius = BorderRadius.circular(10);

  final colorScheme = ColorScheme.fromSeed(
    brightness: brightness,
    seedColor: ClientSwitch.current().color,
    surface: brightness == Brightness.light ? Colors.white : Colors.black,
  );

  final cardTheme = CardTheme(
    color: colorScheme.inversePrimary,
    shape: RoundedRectangleBorder(
      borderRadius: borderRadius,
    ),
  );

  final elevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: colorScheme.primary,
      foregroundColor: colorScheme.onPrimary,
      shape: RoundedRectangleBorder(
        borderRadius: borderRadius,
      ),
    ),
  );

  return ThemeData(
    colorScheme: colorScheme,
    scaffoldBackgroundColor: AppDefaultColors.boredScaffoldGrey,
    useMaterial3: true,
    cardTheme: cardTheme,
    elevatedButtonTheme: elevatedButtonTheme,
  );
}
