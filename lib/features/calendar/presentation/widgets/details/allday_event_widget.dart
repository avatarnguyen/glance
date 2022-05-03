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
    return LayoutBuilder(builder: (context, constraints) {
      return SizedBox(
        width: constraints.maxWidth,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: kSizeTimeWidth,
              child: Text(
                'all day',
                textAlign: TextAlign.right,
                style: theme.typography.paragraph1.copyWith(
                  color: theme.colors.accent,
                ),
              ),
            ),
            const AppGap.semiSmall(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                EventItemWidget(
                  color: Colors.blue,
                  text:
                      'Checking Inbox Checking Inbox Checking Inbox Checking Inbox Inbox',
                ),
                AppGap.small(),
                EventItemWidget(
                  color: Colors.green,
                  text: 'Design New App',
                ),
                AppGap.small(),
                TaskItemWidget(
                  color: Colors.blue,
                  text: 'Coding Side Project',
                ),
                AppGap.small(),
              ],
            ).expanded(),
          ],
        ),
      );
    });
  }
}
