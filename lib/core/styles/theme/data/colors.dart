import 'package:equatable/equatable.dart';
import 'package:flutter/rendering.dart';
import 'package:glance/core/utils/named.dart';

class AppColorsData extends Equatable {
  const AppColorsData({
    required this.primary1,
    required this.primary2,
    required this.primary3,
    required this.primary4,
    required this.secondary,
    required this.accent,
    required this.lighBackground,
    required this.background,
  });

  factory AppColorsData.light() => const AppColorsData(
        primary1: Color(0xFFBF9663), // #BF9663
        primary2: Color(0xFFEDD5AD), // #edd5ad
        primary3: Color(0xFFF0E0BB), // #f0e0bb
        primary4: Color(0xFFF2E8D0), // #f2e8d0
        secondary: Color(0xFF19869C), // #19869c
        accent: Color(0xFF3d5066), // #3d5066
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

  final Color primary1;
  final Color primary2;
  final Color primary3;
  final Color primary4;
  final Color secondary;
  final Color accent;
  final Color lighBackground;
  final Color background;

  @override
  List<Object?> get props => [
        primary1.named('primary1'),
        primary2.named('primary2'),
        primary3.named('primary3'),
        primary4.named('primary4'),
        secondary.named('secondary'),
        accent.named('accent'),
        lighBackground.named('lighBackground'),
        background.named('background'),
      ];
}
