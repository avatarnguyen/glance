import 'package:firebase_auth/firebase_auth.dart';
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
  void initState() {
    super.initState();
    // signIn();
  }

  Future<bool> signIn() async {
    final creds = await FirebaseAuth.instance.signInAnonymously();
    debugPrint(creds.user?.uid);
    if (creds.user != null) {
      return true;
    }
    return false;
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    final theme = AppTheme.of(context);
    return Material(
      child: Scaffold(
        floatingActionButton: Padding(
          padding: EdgeInsets.only(
            top: theme.spacing.semiBig,
          ),
          child: FloatingActionButton(
            child: Icon(
              Icons.add,
              color: theme.colors.textAccent,
            ),
            backgroundColor: theme.colors.accent,
            onPressed: () {},
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: Material(
          child: BottomNavigationBar(
            currentIndex: viewIndex,
            onTap: (index) {
              setState(() {
                viewIndex = index;
              });
            },
            elevation: 0.0,
            backgroundColor: theme.colors.primary,
            unselectedItemColor: theme.colors.secondary,
            selectedItemColor: theme.colors.accent,
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
