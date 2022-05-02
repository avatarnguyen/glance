import 'package:flutter/material.dart';
import 'package:glance/core/styles/theme/theme.dart';

ThemeData glanceLightThemeData(BuildContext context) {
  final theme = AppTheme.of(context);
  // Map<int, Color> color = const {
  //   50: Color(0xFF9EA7B2),
  //   100: Color(0xFF8A96A3),
  //   200: Color(0xFF778493),
  //   300: Color(0xFF637284),
  //   400: Color(0xFF506175),
  //   500: Color(0xFF3D5066), // Base: primary1 color in theme
  //   600: Color(0xFF36485b),
  //   700: Color(0xFF304051),
  //   800: Color(0xFF2a3847),
  //   900: Color(0xFF24303d),
  // };
  // MaterialColor customPrimary = MaterialColor(0xFF3D5066, color);
  return ThemeData(
      // primarySwatch: customPrimary,
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
