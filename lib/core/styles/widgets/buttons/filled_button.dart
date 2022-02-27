import 'package:flutter/material.dart';
import 'package:glance/core/styles/widgets/buttons/base_button.dart';

import '../../theme/theme.dart';

class AppFilledButton extends StatelessWidget {
  const AppFilledButton({
    Key? key,
    required this.onPressed,
    this.child,
    this.data,
    this.size,
    this.backgroundColor,
    this.foregroundColor,
    this.radius,
    this.padding,
    this.density,
  }) : super(key: key);

  const AppFilledButton.small({
    Key? key,
    required this.onPressed,
    this.child,
    this.data,
    this.backgroundColor,
    this.foregroundColor,
    this.radius,
    this.padding,
    this.density,
  })  : size = ButtonSize.small,
        super(key: key);

  const AppFilledButton.regular({
    Key? key,
    required this.onPressed,
    this.child,
    this.data,
    this.backgroundColor,
    this.foregroundColor,
    this.radius,
    this.padding,
    this.density,
  })  : size = ButtonSize.regular,
        super(key: key);

  const AppFilledButton.big({
    Key? key,
    required this.onPressed,
    this.child,
    this.data,
    this.backgroundColor,
    this.foregroundColor,
    this.radius,
    this.padding,
    this.density,
  })  : size = ButtonSize.big,
        super(key: key);

  final void Function() onPressed;
  final Widget? child;
  final String? data;
  final ButtonSize? size;
  final Color? backgroundColor;
  final Color? foregroundColor;
  final double? radius;
  final EdgeInsets? padding;
  final VisualDensity? density;

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);
    final _color = backgroundColor ?? theme.colors.primary1;
    final _foregroundColor = foregroundColor ?? theme.colors.accent2;

    return AppButton.filled(
      onPressed: onPressed,
      size: size,
      child: child ?? Text(data ?? ''),
      color: _color,
      foregroundColor: _foregroundColor,
      padding: padding,
      radius: radius,
      density: density,
    );
  }
}
