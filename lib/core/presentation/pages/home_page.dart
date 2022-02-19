import 'package:flutter/material.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';
import 'package:glance/core/presentation/widgets/drawer_menu_widget.dart';
import 'package:glance/features/dashboard/presentation/pages/dashboard_page.dart';
import 'package:glance/core/glance_core.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _drawerController = AdvancedDrawerController();

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);
    return AdvancedDrawer(
      controller: _drawerController,
      backdropColor: theme.colors.background,
      openRatio: 0.7,
      // animationCurve: Curves.easeInOut,
      // animationDuration: const Duration(milliseconds: 300),
      animateChildDecoration: true,
      childDecoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(32),
        ),
      ),
      rtlOpening: true,
      drawer: const DrawerMenuWidget(),
      child: DashboardPage(
        openDrawer: _handleMenuButtonPressed,
      ),
    );
  }

  void _handleMenuButtonPressed() {
    _drawerController.showDrawer();
  }
}
