import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:glance/core/styles/styles.dart';

enum AppIconSize {
  small,
  semiSmall,
  regular,
  big,
}

extension AppIconSizeExtension on AppIconSizesData {
  double resolve(AppIconSize size) {
    switch (size) {
      case AppIconSize.small:
        return small;
      case AppIconSize.semiSmall:
        return semiSmall;
      case AppIconSize.regular:
        return regular;
      case AppIconSize.big:
        return big;
    }
  }
}

class AppIcon extends StatelessWidget {
  const AppIcon(
    this.data, {
    Key? key,
    this.color,
    this.size = AppIconSize.regular,
  }) : super(key: key);

  const AppIcon.small(
    this.data, {
    Key? key,
    this.color,
  })  : size = AppIconSize.small,
        super(key: key);

  const AppIcon.semiSmall(
    this.data, {
    Key? key,
    this.color,
  })  : size = AppIconSize.semiSmall,
        super(key: key);
  const AppIcon.regular(
    this.data, {
    Key? key,
    this.color,
  })  : size = AppIconSize.regular,
        super(key: key);

  const AppIcon.big(
    this.data, {
    Key? key,
    this.color,
  })  : size = AppIconSize.big,
        super(key: key);

  final IconData data;
  final Color? color;
  final AppIconSize size;

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);
    final color = this.color ?? theme.colors.accent;
    return FaIcon(
      data,
      color: color,
      size: theme.icons.sizes.resolve(size),
    );
  }
}

/* class AppAnimatedIcon extends StatelessWidget {
  const AppAnimatedIcon(
    this.data, {
    Key? key,
    this.color,
    this.size = AppIconSize.small,
    this.duration = const Duration(milliseconds: 200),
  }) : super(key: key);

  final IconData data;
  final Color? color;
  final AppIconSize size;
  final Duration duration;

  bool get isAnimated => duration.inMilliseconds > 0;

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);
    final color = this.color ?? theme.colors.primary3;
    if (!isAnimated) {
      return AppIcon(
        data,
        key: key,
        color: color,
        size: size,
      );
    }
    return AnimatedIcon(
      icon:Icon(
        data,
        color: color,
        size: theme.icons.sizes.resolve(size),
      ),
,
      // child:       // duration: duration,
    );
  }
} */
