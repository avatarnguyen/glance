import 'package:flutter/material.dart';
import 'package:glance/core/glance_core.dart';

class DrawerMenuWidget extends StatelessWidget {
  const DrawerMenuWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);

    return SafeArea(
      child: Material(
        color: theme.colors.background,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            buildListTitle(theme, 'Dashboard'),
            buildListTitle(theme, 'Project'),
            buildListTitle(theme, 'Import'),
            buildListTitle(theme, 'Setting'),
          ],
        ),
      ),
    );
  }

  Widget buildListTitle(
    AppThemeData theme,
    String text,
  ) =>
      ListTile(
        title: AppText.title2(
          text,
          color: theme.colors.primary1,
        ),
      );
}
