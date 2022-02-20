import 'package:flutter/material.dart';
import 'package:glance/core/glance_core.dart';
import 'package:glance/core/utils/custom_date_format.dart';
import 'package:glance/features/calendar/presentation/widgets/details/allday_event_widget.dart';
import 'package:glance/features/calendar/presentation/widgets/details/time_event_widget.dart';

class OverviewPage extends StatelessWidget {
  const OverviewPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);
    final query = MediaQuery.of(context);
    final today = DateTime.now();

    return Container(
      padding: EdgeInsets.all(theme.spacing.big),
      width: query.size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppText.title1(
            _getCurrentGreeting(today),
            color: theme.colors.accent,
          ),
          const AppGap.regular(),
          AppText.title2(
            CustomDateUtils.returnDateWithDay(today),
            color: theme.colors.accent,
          ),
          const AppGap.large(),
          const AlldayEventWidget(),
          TimeEventWidget(
            color: Colors.orange,
            time: DateTime(2022, 2, 20, 10, 30),
            text: 'Finishing Project',
            subtitle: '30min',
            isEvent: true,
          ),
          const AppGap.small(),
          TimeEventWidget(
            color: Colors.purple,
            time: DateTime.now(),
            text: 'Coding Side Project',
            subtitle: '1h 30m',
            isEvent: false,
          ),
          const AppGap.small(),
          TimeEventWidget(
            color: Colors.purple,
            time: DateTime.now(),
            text: 'Coding Side Project',
            subtitle: '2h',
            isEvent: false,
          ),
          const AppGap.small(),
          TimeEventWidget(
            color: Colors.green,
            time: DateTime.now(),
            text: 'Get some shit done, without distraction',
            subtitle: '4h',
            isEvent: false,
          ),
        ],
      ),
    ).safeArea();
  }

  String _getCurrentGreeting(DateTime date) {
    final _currentHour = date.hour;
    if (_currentHour > 11 && _currentHour < 18) {
      return 'Good Afternoon!';
    } else if (_currentHour > 5 && _currentHour < 12) {
      return 'Good Morning!';
    } else if (_currentHour > 17 && _currentHour < 22) {
      return 'Good Evening!';
    } else {
      return 'Good Night!';
    }
  }
}
