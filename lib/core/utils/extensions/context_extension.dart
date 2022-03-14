import 'package:flutter/material.dart';
import 'package:glance/core/glance_core.dart';

extension GlanceBuildContext on BuildContext {
  AppThemeData gTheme() => AppTheme.of(this);
  AppColorsData gColor() => AppTheme.of(this).colors;
  AppSpacingData gSpacing() => AppTheme.of(this).spacing;
  AppRadiusData gRadius() => AppTheme.of(this).radius;
}
