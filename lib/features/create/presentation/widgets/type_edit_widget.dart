import 'package:flutter/cupertino.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:glance/core/glance_core.dart';

class TypeEditWidget extends HookWidget {
  const TypeEditWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);
    final _currentIndex = useState(0);
    return CupertinoSegmentedControl<int>(
      padding: theme.spacing.asInsets().semiSmall,
      groupValue: _currentIndex.value,
      children: {
        0: _buildSegment(theme, 'Task', _currentIndex.value == 0),
        1: _buildSegment(theme, 'Event', _currentIndex.value == 1),
      },
      onValueChanged: (value) {
        _currentIndex.value = value;
      },
    );
  }

  Widget _buildSegment(
    AppThemeData theme,
    String text,
    bool isActive,
  ) =>
      AppText.title3(
        text,
        color: isActive ? theme.colors.textAccent : theme.colors.secondary,
      );
}
