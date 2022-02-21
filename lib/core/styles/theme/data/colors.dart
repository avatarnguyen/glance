import 'package:equatable/equatable.dart';
import 'package:flutter/rendering.dart';
import 'package:glance/core/utils/named.dart';

class AppColorsData extends Equatable {
  const AppColorsData({
    required this.primary1,
    required this.primary2,
    required this.accent1,
    required this.accent2,
    required this.accent3,
    required this.accent4,
    required this.secondary,
    required this.lighBackground,
    required this.background,
  });

  factory AppColorsData.light() => const AppColorsData(
        primary1: Color(0xFF3d5066), // #3d5066
        primary2: Color(0xFF0c1014), // alternative #182028
        accent1: Color(0xFFBF9663), // #BF9663
        accent2: Color(0xFFEDD5AD), // #edd5ad
        accent3: Color(0xFFF0E0BB), // #f0e0bb
        accent4: Color(0xFFF2E8D0), // #f2e8d0
        secondary: Color(0xFF19869C), // #19869c
        lighBackground: Color(0xFFFDFCF8), // #FDFCF8
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

  final Color primary1;
  final Color primary2;
  final Color accent1;
  final Color accent2;
  final Color accent3;
  final Color accent4;
  final Color secondary;
  final Color lighBackground;
  final Color background;

  @override
  List<Object?> get props => [
        primary1.named('primary1'),
        primary2.named('primary2'),
        accent1.named('accent1'),
        accent2.named('accent2'),
        accent3.named('accent3'),
        accent4.named('accent4'),
        secondary.named('secondary'),
        lighBackground.named('lighBackground'),
        background.named('background'),
      ];
}
