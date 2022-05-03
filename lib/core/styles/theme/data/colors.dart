import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:glance/core/utils/named.dart';

class AppColorsData extends Equatable {
  const AppColorsData({
    required this.primary,
    required this.accent,
    required this.secondary,
    required this.textPrimary,
    required this.textAccent,
    required this.textSecondary,
  });

  factory AppColorsData.light() => const AppColorsData(
        primary: Color(0xFFeff2f9),
        accent: Color(0xFF2f41cb),
        secondary: Color(0xFFb4c6e3),
        textPrimary: Color(0xFF090d16),
        textSecondary: Color(0xFF121a2c),
        textAccent: Color(0xFFeaecf1),
      );

  // factory AppColorsData.dark() => const AppColorsData(
  //       accent: Color(0xFF454CFF),
  //       accentOpposite: Color(0xFFFFFFFF),
  //       accentHighlight: Color(0xFF2D33B9),
  //       accentHighlight2: Color(0xFF272C9A),
  //       foreground: Color(0xFFFFFFFF),
  //       background: Color(0xFF111111),
  //       actionBarBackground: Color(0xFF000000),
  //       actionBarForeground: Color(0xFFFFFFFF),
  //     );

  final Color primary;
  final Color accent;
  final Color secondary;
  final Color textPrimary;
  final Color textAccent;
  final Color textSecondary;

  @override
  List<Object?> get props => [
        primary.named('primary'),
        accent.named('accent'),
        secondary.named('secondary'),
        textPrimary.named('textPrimary'),
        textAccent.named('textAccent'),
        textSecondary.named('textSecondary'),
      ];
}
