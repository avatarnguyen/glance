import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:glance/core/glance_core.dart';

class AppIconButton extends StatelessWidget {
  const AppIconButton(
    this.data, {
    Key? key,
    this.color,
    this.onPressed,
    this.size = AppIconSize.regular,
  }) : super(key: key);

  const AppIconButton.small(
    this.data, {
    Key? key,
    this.color,
    this.onPressed,
  })  : size = AppIconSize.small,
        super(key: key);

  const AppIconButton.semiSmall(
    this.data, {
    Key? key,
    this.color,
    this.onPressed,
  })  : size = AppIconSize.semiSmall,
        super(key: key);

  const AppIconButton.regular(
    this.data, {
    Key? key,
    this.color,
    this.onPressed,
  })  : size = AppIconSize.regular,
        super(key: key);

  const AppIconButton.big(
    this.data, {
    Key? key,
    this.color,
    this.onPressed,
  })  : size = AppIconSize.big,
        super(key: key);

  final IconData data;
  final Color? color;
  final AppIconSize size;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);
    final color = this.color ?? theme.colors.primary1;
    final _icon = FaIcon(
      data,
      color: color,
      size: theme.icons.sizes.resolve(size),
    );
    return Platform.isIOS
        ? CupertinoButton(
            // padding: EdgeInsets.zero,
            child: _icon,
            onPressed: onPressed,
          )
        : IconButton(
            onPressed: onPressed,
            icon: _icon,
          );
  }
}
