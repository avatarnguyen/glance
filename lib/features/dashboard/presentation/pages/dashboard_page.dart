import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:glance/core/glance_core.dart';
import 'package:glance/features/calendar/presentation/pages/calendar_page.dart';
import 'package:glance/features/create/presentation/pages/create_page.dart';
import 'package:glance/features/dashboard/presentation/pages/overview_page.dart';

class DashboardPage extends HookWidget {
  const DashboardPage({
    Key? key,
    required this.openDrawer,
  }) : super(key: key);

  final void Function() openDrawer;

  @override
  Widget build(BuildContext context) {
    final _pageControler = usePageController(initialPage: 1);
    final theme = AppTheme.of(context);
    return Scaffold(
      backgroundColor: theme.colors.lighBackground,
      floatingActionButton: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          FloatingActionButton.small(
            heroTag: null,
            foregroundColor: theme.colors.accent3,
            backgroundColor: theme.colors.primary1,
            child: const Icon(Icons.menu),
            onPressed: openDrawer,
          ),
          const AppGap.small(),
          FloatingActionButton.small(
            // heroTag: CreatePage.heroTag(),
            foregroundColor: theme.colors.accent3,
            backgroundColor: theme.colors.primary1,
            child: const Icon(Icons.add),
            onPressed: () {
              context.pushNamed(kRouteCreate);
            },
          ),
          const AppGap.small(),
        ],
      ),
      body: PageView(
        physics: const ClampingScrollPhysics(),
        scrollDirection: Axis.vertical,
        controller: _pageControler,
        children: const [
          CalendarPage(),
          OverviewPage(),
        ],
      ),
    );
  }
}
