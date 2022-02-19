import 'package:equatable/equatable.dart';
import 'package:flutter/rendering.dart';
import 'package:glance/core/utils/named.dart';

const kFontFamily = "Inter";

class AppTypographyData extends Equatable {
  const AppTypographyData({
    required this.paragraph1,
    required this.paragraph2,
    required this.title1,
    required this.title2,
    required this.title3,
    required this.title4,
  });

  factory AppTypographyData.regular() => const AppTypographyData(
        paragraph1: TextStyle(
          fontFamily: kFontFamily,
          fontWeight: FontWeight.w400,
          fontSize: 12,
          decoration: TextDecoration.none,
        ),
        paragraph2: TextStyle(
          fontFamily: kFontFamily,
          fontWeight: FontWeight.w400,
          fontSize: 10,
          decoration: TextDecoration.none,
        ),
        title1: TextStyle(
          fontFamily: kFontFamily,
          fontSize: 28,
          fontWeight: FontWeight.bold,
          decoration: TextDecoration.none,
        ),
        title2: TextStyle(
          fontFamily: kFontFamily,
          fontSize: 18,
          fontWeight: FontWeight.bold,
          decoration: TextDecoration.none,
        ),
        title3: TextStyle(
          fontFamily: kFontFamily,
          fontSize: 14,
          fontWeight: FontWeight.bold,
          decoration: TextDecoration.none,
        ),
        title4: TextStyle(
          fontFamily: kFontFamily,
          fontSize: 14,
          fontWeight: FontWeight.w600,
          decoration: TextDecoration.none,
        ),
      );

  factory AppTypographyData.small() => const AppTypographyData(
        paragraph1: TextStyle(
          fontFamily: kFontFamily,
          fontWeight: FontWeight.w400,
          fontSize: 10,
          decoration: TextDecoration.none,
        ),
        paragraph2: TextStyle(
          fontFamily: kFontFamily,
          fontWeight: FontWeight.w400,
          fontSize: 9,
          decoration: TextDecoration.none,
        ),
        title1: TextStyle(
          fontFamily: kFontFamily,
          fontSize: 20,
          fontWeight: FontWeight.bold,
          decoration: TextDecoration.none,
        ),
        title2: TextStyle(
          fontFamily: kFontFamily,
          fontSize: 14,
          fontWeight: FontWeight.bold,
          decoration: TextDecoration.none,
        ),
        title3: TextStyle(
          fontFamily: kFontFamily,
          fontSize: 12,
          fontWeight: FontWeight.bold,
          decoration: TextDecoration.none,
        ),
        title4: TextStyle(
          fontFamily: kFontFamily,
          fontSize: 12,
          fontWeight: FontWeight.w600,
          decoration: TextDecoration.none,
        ),
      );

  final TextStyle paragraph1;
  final TextStyle paragraph2;
  final TextStyle title1;
  final TextStyle title2;
  final TextStyle title3;
  final TextStyle title4;

  @override
  List<Object?> get props => [
        title1.named('title1'),
        title2.named('title2'),
        title3.named('title3'),
        title4.named('title4'),
        paragraph1.named('paragraph1'),
        paragraph2.named('paragraph2'),
      ];
}
