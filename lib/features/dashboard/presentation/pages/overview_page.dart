import 'package:flutter/material.dart';
import 'package:glance/core/glance_core.dart';

class OverviewPage extends StatelessWidget {
  const OverviewPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);

    return Container(
      color: theme.colors.lighBackground,
      child: Center(
        child: AppText.title1(
          "Title",
          color: theme.colors.secondary,
        ),
      ),
    );
  }
}
