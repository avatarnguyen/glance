part of '../pages/create_page.dart';

class _ProjectSelectionWidget extends StatelessWidget {
  const _ProjectSelectionWidget({
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
              color: theme.colors.primary1, width: kBorderWidthButton),
        ),
        child: const AppText.title2('Project ABC'),
      ),
    );
  }
}
