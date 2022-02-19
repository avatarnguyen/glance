import 'package:equatable/equatable.dart';
import 'package:flutter/rendering.dart';
import 'package:glance/core/utils/named.dart';

class AppColorsData extends Equatable {
  const AppColorsData({
    required this.primary,
    required this.secondary,
    required this.accent,
    required this.foreground,
    required this.lighBackground,
    required this.background,
  });

// #3d5066

  factory AppColorsData.light() => const AppColorsData(
        primary: Color(0xFFEDD5AD), // #edd5ad
        secondary: Color(0xFF19869C), // #19869c
        accent: Color(0xFFF0E0BB), // #f0e0bb
        foreground: Color(0xFFF2E8D0), // #f2e8d0
        lighBackground: Color(0xFFFBFCFE), // #FBFCFE
        background: Color(0xFF011640), // #011640
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

  // factory AppColorsData.highContrast() => const AppColorsData(
  //       accent: Color(0xFF000000),
  //       accentOpposite: Color(0xFFFFFFFF),
  //       accentHighlight: Color(0xFF000000),
  //       accentHighlight2: Color(0xFF000000),
  //       foreground: Color(0xFF222222),
  //       background: Color(0xFFFFFFFF),
  //       actionBarBackground: Color(0xFFDDDDDD),
  //       actionBarForeground: Color(0xFF222222),
  //     );

  final Color primary;
  final Color secondary;
  final Color accent;
  final Color foreground;
  final Color lighBackground;
  final Color background;

  @override
  List<Object?> get props => [
        primary.named('primary'),
        secondary.named('secondary'),
        accent.named('accent'),
        foreground.named('foreground'),
        lighBackground.named('lighBackground'),
        background.named('background'),
      ];
}
