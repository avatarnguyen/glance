import 'package:flutter/material.dart';
import 'package:glance/core/glance_core.dart';
import 'package:glance/features/calendar/presentation/widgets/details/event_item_widget.dart';
import 'package:glance/features/calendar/presentation/widgets/details/task_item_widget.dart';

class AlldayEventWidget extends StatelessWidget {
  const AlldayEventWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: kSizeTimeWidth,
          child: Text(
            'all day',
            textAlign: TextAlign.right,
            style: theme.typography.paragraph1.copyWith(
              color: theme.colors.accent1,
            ),
          ),
        ),
        const AppGap.small(),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            EventItemWidget(
              color: Colors.blue,
              text: 'Checking Inbox',
            ),
            EventItemWidget(
              color: Colors.green,
              text: 'Design New App',
            ),
            TaskItemWidget(
              color: Colors.blue,
              text: 'Coding Side Project',
            ),
          ],
        ).expanded(),
      ],
    );
  }
}
