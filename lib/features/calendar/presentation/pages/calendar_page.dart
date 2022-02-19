import 'package:flutter/material.dart';
import 'package:glance/core/glance_core.dart';

class CalendarPage extends StatelessWidget {
  const CalendarPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);

    return Container(
      color: theme.colors.lighBackground,
      child: AppText.title3(
        "Title",
        color: theme.colors.accent,
      ),
    );
  }
}
