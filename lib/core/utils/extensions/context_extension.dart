import 'package:flutter/material.dart';
import 'package:glance/core/glance_core.dart';

extension GlanceBuildContext on BuildContext {
  AppThemeData get gTheme => AppTheme.of(this);
  AppColorsData get gColor => AppTheme.of(this).colors;
  AppSpacingData get gSpacing => AppTheme.of(this).spacing;
  AppRadiusData get gRadius => AppTheme.of(this).radius;
}
