import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:glance/core/dependency_injection/auth_dependency.dart';
import 'package:glance/core/glance_core.dart';
import 'package:glance/core/utils/custom_date_format.dart';
import 'package:glance/features/calendar/presentation/widgets/details/allday_event_widget.dart';
import 'package:glance/features/calendar/presentation/widgets/details/time_event_widget.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class OverviewPage extends HookConsumerWidget {
  const OverviewPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = AppTheme.of(context);
    final today = DateTime.now();

    final iconColor = theme.colors.accent;
    return Scaffold(
      key: const Key("OverviewPage"),
      backgroundColor: theme.colors.primary,
      appBar: AppBarCustom(
        centerTitle: false,
        // title: AppText.title1(
        //   // CustomDateUtils.returnDateWithDay(today),
        //   _getCurrentGreeting(today),
        // ),
        titleText: _getCurrentGreeting(today),
        actions: [
          PlatformIconButton(
            onPressed: () {
              context.push('/$kRouteCalendar');
            },
            cupertinoIcon: const Icon(CupertinoIcons.calendar),
            materialIcon: const Icon(Icons.calendar_month),
          ),
          PlatformIconButton(
            onPressed: () {
              context.push('/$kRouteSetting');
            },
            cupertinoIcon: const Icon(CupertinoIcons.settings),
            materialIcon: const Icon(Icons.settings),
          ),
          // PlatformIconButton(
          //   // color: iconColor,
          //   onPressed: () {
          //     ref.read(authDatasourceProvider).signOut();
          //     ref.read(googleSignInProvider).signOut();
          //   },
          //   icon: const Icon(Icons.logout),
          // )
        ],
      ),
      body: AppPadding(
        padding: const AppEdgeInsets.only(
          bottom: AppGapSize.big,
          top: AppGapSize.medium,
          left: AppGapSize.medium,
          right: AppGapSize.medium,
        ),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              theme.shadow.base,
              theme.shadow.medium,
            ],
            borderRadius: theme.radius.asBorderRadius().medium,
          ),
          width: screenWidth(context) - (2 * theme.spacing.medium),
          padding: EdgeInsets.all(theme.spacing.regular),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppText.title2(
                CustomDateUtils.returnDateWithDay(today),
                color: theme.colors.accent,
              ),
              const AppGap.large(),
              const AlldayEventWidget(),
              const AppGap.medium(),
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
        ),
      ).safeArea(),
    );
  }

  String _getCurrentGreeting(DateTime date) {
    final _currentHour = date.hour;
    if (_currentHour > 11 && _currentHour < 18) {
      return 'Good Afternoon';
    } else if (_currentHour > 5 && _currentHour < 12) {
      return 'Good Morning';
    } else if (_currentHour > 17 && _currentHour < 22) {
      return 'Good Evening';
    } else {
      return 'Good Night';
    }
  }
}
