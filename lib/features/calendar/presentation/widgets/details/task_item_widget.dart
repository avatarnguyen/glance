import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:glance/core/glance_core.dart';

class TaskItemWidget extends HookWidget {
  const TaskItemWidget({
    Key? key,
    required this.color,
    required this.text,
  }) : super(key: key);

  final Color color;
  final String text;

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);
    Color getColor(Set<MaterialState> states) {
      return color;
    }

    final _checkState = useState(false);

    return Padding(
      padding: EdgeInsets.symmetric(vertical: theme.spacing.small),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Material(
            color: Colors.transparent,
            child: Checkbox(
              checkColor: theme.colors.accent,
              fillColor: MaterialStateProperty.resolveWith(getColor),
              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              visualDensity: const VisualDensity(
                horizontal: VisualDensity.minimumDensity,
                vertical: VisualDensity.minimumDensity,
              ),
              shape: StadiumBorder(
                side: BorderSide(
                  color: color,
                ),
              ),
              value: _checkState.value,
              onChanged: (value) => _checkState.value = value ?? false,
            ),
          ),
          const AppGap.small(),
          AppText.title4(
            text,
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
          ).flexible(),
        ],
      ),
    );
  }
}
