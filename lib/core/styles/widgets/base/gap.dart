import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';
import 'package:glance/core/styles/theme/theme.dart';

enum AppGapSize {
  none,
  small,
  semiSmall,
  regular,
  medium,
  semiBig,
  big,
  large,
  massive,
}

extension AppGapSizeExtension on AppGapSize {
  double getSpacing(AppThemeData theme) {
    switch (this) {
      case AppGapSize.none:
        return 0;
      case AppGapSize.small:
        return theme.spacing.small;
      case AppGapSize.semiSmall:
        return theme.spacing.semiSmall;
      case AppGapSize.regular:
        return theme.spacing.regular;
      case AppGapSize.medium:
        return theme.spacing.medium;
      case AppGapSize.semiBig:
        return theme.spacing.semiBig;
      case AppGapSize.big:
        return theme.spacing.big;
      case AppGapSize.large:
        return theme.spacing.large;
      case AppGapSize.massive:
        return theme.spacing.massive;
    }
  }
}

class AppGap extends StatelessWidget {
  const AppGap(
    this.size, {
    Key? key,
  }) : super(key: key);

  const AppGap.small({
    Key? key,
  })  : size = AppGapSize.small,
        super(key: key);

  const AppGap.semiSmall({
    Key? key,
  })  : size = AppGapSize.semiSmall,
        super(key: key);

  const AppGap.regular({
    Key? key,
  })  : size = AppGapSize.regular,
        super(key: key);

  const AppGap.medium({
    Key? key,
  })  : size = AppGapSize.medium,
        super(key: key);

  const AppGap.semiBig({
    Key? key,
  })  : size = AppGapSize.semiBig,
        super(key: key);

  const AppGap.big({
    Key? key,
  })  : size = AppGapSize.big,
        super(key: key);

  const AppGap.large({
    Key? key,
  })  : size = AppGapSize.large,
        super(key: key);

  const AppGap.massive({
    Key? key,
  })  : size = AppGapSize.massive,
        super(key: key);

  final AppGapSize size;

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);
    return Gap(size.getSpacing(theme));
  }
}
