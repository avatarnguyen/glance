import 'package:flutter/material.dart';
import 'package:glance/core/styles/theme/app_theme_data.dart';
import 'package:glance/core/glance_core.dart';
import 'package:glance/features/dashboard/presentation/pages/overview_page.dart';
import 'package:glance/features/project/presentation/pages/project_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with AutomaticKeepAliveClientMixin {
  int viewIndex = 0;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    final theme = AppTheme.of(context);
    return Theme(
      data: glanceLightThemeData(context),
      child: Scaffold(
        floatingActionButton: Padding(
          padding: EdgeInsets.only(
            top: theme.spacing.semiBig,
          ),
          child: FloatingActionButton(
            child: Icon(
              Icons.add,
              color: theme.colors.primary1,
            ),
            backgroundColor: theme.colors.accent1,
            onPressed: () {},
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: viewIndex,
          onTap: (index) {
            setState(() {
              viewIndex = index;
            });
          },
          elevation: 0.0,
          backgroundColor: theme.colors.primary1,
          unselectedItemColor: theme.colors.secondary,
          selectedItemColor: theme.colors.accent1,
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Dashboard',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.folder),
              label: 'Projects',
            )
          ],
        ),
        body: _getCurrentView(),
      ),
    );
  }

  Widget _getCurrentView() {
    switch (viewIndex) {
      case 0:
        return const OverviewPage();
      case 1:
        return const ProjectPage();
      default:
        return Container(color: Colors.blue);
    }
  }

  @override
  bool get wantKeepAlive => true;
}
