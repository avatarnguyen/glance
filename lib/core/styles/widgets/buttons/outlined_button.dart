import 'package:flutter/material.dart';
import 'package:glance/core/styles/theme/theme.dart';
import 'package:glance/core/styles/widgets/buttons/base_button.dart';

class AppOutlinedButton extends StatelessWidget {
  const AppOutlinedButton({
    Key? key,
    required this.onPressed,
    this.child,
    this.data,
    this.color,
    required this.size,
    this.padding,
    this.radius,
    this.density,
  }) : super(key: key);

  const AppOutlinedButton.small({
    Key? key,
    required this.onPressed,
    this.child,
    this.color,
    this.data,
    this.padding,
    this.radius,
    this.density,
  })  : size = ButtonSize.small,
        super(key: key);

  const AppOutlinedButton.regular({
    Key? key,
    required this.onPressed,
    this.child,
    this.color,
    this.data,
    this.padding,
    this.radius,
    this.density,
  })  : size = ButtonSize.regular,
        super(key: key);

  const AppOutlinedButton.big({
    Key? key,
    required this.onPressed,
    this.child,
    this.color,
    this.data,
    this.padding,
    this.radius,
    this.density,
  })  : size = ButtonSize.big,
        super(key: key);

  const AppOutlinedButton.rounded({
    Key? key,
    required this.onPressed,
    this.child,
    this.color,
    this.data,
  })  : size = ButtonSize.big,
        padding = const EdgeInsets.all(12.0),
        density = const VisualDensity(
          vertical: 0.0,
          horizontal: VisualDensity.minimumDensity,
        ),
        radius = 48.0,
        super(key: key);

  final void Function() onPressed;
  final Widget? child;
  final String? data;
  final Color? color;
  final ButtonSize size;
  final EdgeInsets? padding;
  final VisualDensity? density;
  final double? radius;

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);
    final _color = color ?? theme.colors.primary1;
    return AppButton.outlined(
      size: size,
      child: child ?? Text(data ?? ''),
      onPressed: onPressed,
      color: _color,
      foregroundColor: _color,
      padding: padding,
      radius: radius,
      density: density,
    );
  }
}
