import 'dart:io';

import 'package:flutter/material.dart';
import 'package:glance/core/glance_core.dart';

enum ButtonSize {
  small,
  regular,
  big,
}

enum ButtonType {
  outlined,
  filled,
  text,
}

class AppButton extends StatelessWidget {
  const AppButton({
    Key? key,
    required this.onPressed,
    required this.child,
    required this.type,
    this.size,
    this.color,
    this.radius,
    this.padding,
    this.density,
    this.foregroundColor,
  }) : super(key: key);

  const AppButton.filled({
    Key? key,
    required this.onPressed,
    required this.child,
    this.size,
    this.color,
    this.radius,
    this.padding,
    this.density,
    this.foregroundColor,
  })  : type = ButtonType.filled,
        super(key: key);

  const AppButton.outlined({
    Key? key,
    required this.onPressed,
    required this.child,
    this.size,
    this.color,
    this.radius,
    this.padding,
    this.density,
    this.foregroundColor,
  })  : type = ButtonType.outlined,
        super(key: key);

  final void Function() onPressed;
  final Widget child;
  final ButtonSize? size;
  final ButtonType type;
  final Color? color;
  final Color? foregroundColor;
  final double? radius;
  final EdgeInsets? padding;
  final VisualDensity? density;

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);
    final textstyle = () {
      switch (size) {
        case ButtonSize.small:
          return theme.typography.paragraph1;
        case ButtonSize.regular:
          return theme.typography.title4;
        case ButtonSize.big:
          return theme.typography.title3;
        default:
          return theme.typography.paragraph1;
      }
    }();
    final color = this.color ?? theme.colors.primary1;

    const Set<MaterialState> interactiveStates = <MaterialState>{
      MaterialState.pressed,
      MaterialState.hovered,
      MaterialState.focused,
    };

    final _hoverColor = color.withOpacity(0.4);
    const _borderWidth = kBorderWidthButton;

    Color getBackgroundColor(Set<MaterialState> states) {
      if (states.any(interactiveStates.contains)) {
        return _hoverColor;
      }
      return color;
    }

    Color getForegroundColor(Set<MaterialState> states) {
      if (states.any(interactiveStates.contains)) {
        final _hoverForegroundColor = foregroundColor?.withOpacity(0.4);
        return _hoverForegroundColor ?? _hoverColor;
      }
      return foregroundColor ?? color;
    }

    TextStyle getTextStyle(Set<MaterialState> states) {
      if (states.any(interactiveStates.contains)) {
        return textstyle.copyWith(color: _hoverColor);
      }
      return textstyle;
    }

    OutlinedBorder getOutlinedBorder(Set<MaterialState> states) {
      if (states.any(interactiveStates.contains)) {
        return radius != null
            ? RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(radius!)),
                side: BorderSide(color: _hoverColor, width: _borderWidth),
              )
            : const StadiumBorder();
      }
      return radius != null
          ? RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(radius!)),
              side: BorderSide(color: color, width: _borderWidth),
            )
          : const StadiumBorder();
    }

    BorderSide getBorderSide(Set<MaterialState> states) {
      if (states.any(interactiveStates.contains)) {
        return BorderSide(color: _hoverColor, width: _borderWidth);
      }
      return BorderSide(color: color, width: _borderWidth);
    }

    return type == ButtonType.outlined
        ? OutlinedButton(
            style: ButtonStyle(
              padding: padding != null ? MaterialStateProperty.all(padding) : null,
              textStyle: MaterialStateProperty.resolveWith(getTextStyle),
              visualDensity: density ?? VisualDensity.adaptivePlatformDensity,
              foregroundColor: MaterialStateProperty.resolveWith(
                getForegroundColor,
              ),
              backgroundColor: MaterialStateProperty.all(Colors.transparent),
              overlayColor: MaterialStateProperty.all(_hoverColor),
              shape: MaterialStateProperty.resolveWith(getOutlinedBorder),
              elevation: MaterialStateProperty.all(
                Platform.isIOS ? 0 : 5,
              ),
              side: MaterialStateProperty.resolveWith(getBorderSide),
              splashFactory: Platform.isIOS ? NoSplash.splashFactory : InkRipple.splashFactory,
            ),
            onPressed: onPressed,
            child: child,
          )
        : ElevatedButton(
            style: ButtonStyle(
              padding: padding != null ? MaterialStateProperty.all(padding) : null,
              textStyle: MaterialStateProperty.resolveWith(getTextStyle),
              visualDensity: density ?? VisualDensity.adaptivePlatformDensity,
              foregroundColor: MaterialStateProperty.resolveWith(
                getForegroundColor,
              ),
              backgroundColor: MaterialStateProperty.resolveWith(
                getBackgroundColor,
              ),
              overlayColor: MaterialStateProperty.all(_hoverColor),
              shape: MaterialStateProperty.resolveWith(getOutlinedBorder),
              elevation: MaterialStateProperty.all(
                Platform.isIOS ? 0 : 5,
              ),
              splashFactory: Platform.isIOS ? NoSplash.splashFactory : InkRipple.splashFactory,
            ),
            onPressed: onPressed,
            child: child,
          );
  }
}
