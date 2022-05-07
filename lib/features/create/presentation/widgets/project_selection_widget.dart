import 'package:flutter/material.dart';
import 'package:glance/core/glance_core.dart';

class ProjectSelectionWidget extends StatelessWidget {
  const ProjectSelectionWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);
    return GestureDetector(
      onTap: () {
        debugPrint("Pick Project");
      },
      child: Container(
        padding: theme.spacing.asInsets().regular,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: theme.radius.asBorderRadius().medium,
          border: Border.all(
              color: theme.colors.primary, width: kBorderWidthButton),
        ),
        child: const AppText.title2('Project ABC'),
      ),
    );
  }
}
