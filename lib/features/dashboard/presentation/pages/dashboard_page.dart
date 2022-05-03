import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:glance/core/glance_core.dart';
import 'package:glance/features/calendar/presentation/pages/calendar_page.dart';
import 'package:glance/features/create/presentation/pages/create_page.dart';
import 'package:glance/features/dashboard/presentation/pages/overview_page.dart';

class DashboardPage extends HookWidget {
  const DashboardPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);
    return Scaffold(
      backgroundColor: theme.colors.primary,
      body: PageView(
        physics: const ClampingScrollPhysics(),
        children: const [
          CalendarPage(),
          OverviewPage(),
        ],
      ),
    );
  }
}
