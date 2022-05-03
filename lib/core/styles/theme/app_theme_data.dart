import 'package:flutter/material.dart';
import 'package:glance/core/styles/theme/theme.dart';

ThemeData glanceLightThemeData(BuildContext context) {
  final theme = AppTheme.of(context);
  Map<int, Color> color = const {
    50: Color(0xFFe8eafa),
    100: Color(0xFFc6c9f3),
    200: Color(0xFF9fa6eb),
    300: Color(0xFF7783e4),
    400: Color(0xFF5766de),
    500: Color(0xFF344ad6),
    600: Color(0xFF2f41cb), // Base color accent1
    700: Color(0xFF2436bf),
    800: Color(0xFF192bb3),
    900: Color(0xFF0013a1),
  };
  MaterialColor customPrimary = MaterialColor(0xFF2f41cb, color);
  return ThemeData(
      primarySwatch: customPrimary,
      primaryColor: theme.colors.accent1,
      textTheme: TextTheme(
        headlineLarge: theme.typography.title1,
        headlineMedium: theme.typography.title2,
        headlineSmall: theme.typography.title3,
        bodyLarge: theme.typography.paragraph1,
        bodySmall: theme.typography.paragraph2,
      ),
      colorScheme: ColorScheme.light(
        primary: theme.colors.accent1,
        secondary: theme.colors.primary1,
      ));
}
