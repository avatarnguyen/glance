import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:glance/core/glance_core.dart';
import 'package:glance/core/styles/theme/app_theme_data.dart';
import 'package:glance/features/create/presentation/logic/create_provider.dart';
import 'package:glance/features/dashboard/presentation/logic/dashboard_provider.dart';
import 'package:glance/features/dashboard/presentation/pages/overview_page.dart';
import 'package:glance/features/project/presentation/pages/project_page.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomePage extends StatefulHookConsumerWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  ConsumerState<HomePage> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  int viewIndex = 0;
  final today = DateTime.now();

  @override
  void initState() {
    super.initState();
    if (mounted) {
      ref.read(dashboardNotifierProvider.notifier).getEventsByDate(today);
    }
  }

  @override
  void dispose() {
    ref.read(dashboardNotifierProvider.notifier).dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);
    return PlatformWidget(
      cupertino: (_, __) => Theme(
        data: glanceLightThemeData(context),
        child: _buildScaffoldWidget(theme),
      ),
      material: (_, __) => _buildScaffoldWidget(theme),
    );
  }

  Scaffold _buildScaffoldWidget(AppThemeData theme) {
    const bottomNavBarItems = [
      BottomNavigationBarItem(
        icon: Icon(Icons.home),
        label: 'Dashboard',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.folder),
        label: 'Projects',
      )
    ];
    return Scaffold(
      floatingActionButton: const AppFloatingButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: PlatformWidget(
        material: (_, __) => BottomNavigationBar(
          currentIndex: viewIndex,
          onTap: (index) => _updateIndex(index),
          elevation: 0.0,
          backgroundColor: theme.colors.primary,
          unselectedItemColor: theme.colors.secondary,
          selectedItemColor: theme.colors.accent,
          type: BottomNavigationBarType.fixed,
          items: bottomNavBarItems,
        ),
        cupertino: (_, __) => CupertinoTabBar(
          items: bottomNavBarItems,
          inactiveColor: theme.colors.secondary,
          activeColor: theme.colors.accent,
          backgroundColor: theme.colors.primary,
          border: null,
          currentIndex: viewIndex,
          onTap: (index) => _updateIndex(index),
        ),
      ),
      body: _getCurrentView(viewIndex),
    );
  }

  void _updateIndex(int index) {
    setState(() {
      viewIndex = index;
    });
  }

  Widget _getCurrentView(int index) {
    switch (index) {
      case 0:
        return const OverviewPage();
      case 1:
        return const ProjectPage();
      default:
        return Container(color: Colors.blue);
    }
  }
}

class AppFloatingButton extends HookConsumerWidget {
  const AppFloatingButton({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = AppTheme.of(context);
    final _isCreateViewOpen = ref.watch(openCreateViewProvider.state).state;
    return Padding(
      padding: EdgeInsets.only(
        top: theme.spacing.semiBig,
      ),
      child: FloatingActionButton(
        child: Icon(
          _isCreateViewOpen ? Icons.close : Icons.add,
          color: theme.colors.textAccent,
        ),
        backgroundColor: theme.colors.accent,
        onPressed: () {
          ref.read(openCreateViewProvider.state).state =
              !ref.read(openCreateViewProvider.state).state;
        },
      ),
    );
  }
}
