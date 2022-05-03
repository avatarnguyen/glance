import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:glance/core/glance_core.dart';
import 'package:glance/core/styles/theme/app_theme_data.dart';
import 'package:glance/features/calendar/presentation/widgets/details/dot_painter.dart';

class EventItemWidget extends StatelessWidget {
  const EventItemWidget({
    Key? key,
    required this.color,
    required this.text,
  }) : super(key: key);

  final Color color;
  final String text;

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const AppGap.regular(),
        CustomPaint(painter: DotPainter(color, radius: 5.0)),
        const Gap(16.0),
        AppText.title4(
          text,
          color: theme.colors.textSecondary,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ).flexible(),
      ],
    );
  }
}
