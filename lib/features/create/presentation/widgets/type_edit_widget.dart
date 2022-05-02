part of '../pages/create_page.dart';

class _TypeEditWidget extends HookWidget {
  const _TypeEditWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);
    final _currentIndex = useState(0);
    return ClipRRect(
      borderRadius: theme.radius.asBorderRadius().medium,
      child: CupertinoSlidingSegmentedControl<int>(
        padding: theme.spacing.asInsets().semiSmall,
        groupValue: _currentIndex.value,
        thumbColor: theme.colors.primary2,
        backgroundColor: theme.colors.primary1,
        children: {
          0: _buildSegment(theme, 'Task', _currentIndex.value == 0),
          1: _buildSegment(theme, 'Event', _currentIndex.value == 1),
        },
        onValueChanged: (value) {
          _currentIndex.value = value ?? 0;
        },
      ),
    );
  }

  Widget _buildSegment(
    AppThemeData theme,
    String text,
    bool isActive,
  ) =>
      AppText.title3(
        text,
        color: theme.colors.accent4,
      );
}
