import 'package:flutter/material.dart';
import 'package:glance/core/glance_core.dart';
import 'package:glance/core/utils/custom_date_format.dart';
import 'package:glance/features/calendar/presentation/widgets/details/event_item_widget.dart';
import 'package:glance/features/calendar/presentation/widgets/details/task_item_widget.dart';

class TimeEventWidget extends StatelessWidget {
  const TimeEventWidget({
    Key? key,
    required this.color,
    required this.time,
    required this.text,
    this.subtitle,
    required this.isEvent,
    this.textWidth,
  }) : super(key: key);

  final Color color;
  final DateTime time;
  final String text;
  final String? subtitle;
  final bool isEvent;
  final double? textWidth;

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);
    return LayoutBuilder(builder: (context, constraints) {
      return SizedBox(
        width: constraints.maxWidth,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              width: kSizeTimeWidth,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    CustomDateUtils.returnTime(time),
                    textAlign: TextAlign.right,
                    maxLines: 2,
                    style: theme.typography.paragraph1.copyWith(
                      color: theme.colors.accent,
                    ),
                  ),
                  if (subtitle != null)
                    AppText.paragraph2(
                      subtitle!,
                      maxLines: 1,
                      color: theme.colors.secondary,
                    ),
                ],
              ),
            ),
            const AppGap.semiSmall(),
            SizedBox(
              child: isEvent
                  ? EventItemWidget(
                      color: color,
                      text: text,
                    )
                  : TaskItemWidget(
                      color: color,
                      text: text,
                    ),
            ).expanded(),
          ],
        ),
      );
    });
  }
}
