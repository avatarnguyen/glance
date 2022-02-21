part of '../pages/create_page.dart';

class _AdditionalActionWidget extends StatelessWidget {
  const _AdditionalActionWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);
    final _color = theme.colors.primary1;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AppIcon.big(Icons.list, color: _color),
        const AppGap.semiBig(),
        AppIcon.big(Icons.flag, color: _color),
        const AppGap.semiBig(),
        AppIcon.big(Icons.notes_rounded, color: _color),
      ],
    );
  }
}
