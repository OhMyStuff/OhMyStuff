import 'package:flutter/material.dart';

ThemeData getTheme(ColorScheme? dynamicColor, Brightness brightness) {
  final colorScheme = ColorScheme.fromSeed(
    seedColor: dynamicColor?.primary ?? Colors.teal,
    brightness: brightness,
  );

  return ThemeData(
    colorScheme: colorScheme,
    useMaterial3: true,
  );
}
