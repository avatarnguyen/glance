import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:glance/core/utils/named.dart';

class AppColorsData extends Equatable {
  const AppColorsData({
    required this.primary1,
    required this.primary2,
    required this.accent1,
    required this.accent2,
    required this.accent3,
    required this.secondary,
    required this.secondary2,
    required this.secondary3,
  });

  factory AppColorsData.light() => const AppColorsData(
        primary1: Color(0xFFeff2f9),
        primary2: Color(0xFF2f41cb),
        accent1: Color(0xFF2f41cb),
        accent2: Color(0xFFb4c6e3),
        accent3: Color.fromARGB(255, 0, 3, 38),
        secondary: Color(0xFFb4c6e3),
        secondary2: Color(0xFFeff2f9),
        secondary3: Color.fromARGB(255, 0, 3, 38),
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
  final Color secondary;
  final Color secondary2;
  final Color secondary3;

  @override
  List<Object?> get props => [
        primary1.named('primary1'),
        primary2.named('primary2'),
        accent1.named('accent1'),
        accent2.named('accent2'),
        accent3.named('accent3'),
        secondary.named('secondary'),
        secondary2.named('secondary2'),
        secondary3.named('secondary3'),
      ];
}
