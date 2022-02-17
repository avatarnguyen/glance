import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class DashboardPage extends HookWidget {
  const DashboardPage({
    Key? key,
    required this.openDrawer,
  }) : super(key: key);

  final void Function() openDrawer;

  @override
  Widget build(BuildContext context) {
    final _pageControler = usePageController(initialPage: 1);
    return Scaffold(
      floatingActionButton: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          FloatingActionButton.small(
            child: const Icon(Icons.menu),
            onPressed: openDrawer,
          ),
          FloatingActionButton.small(
            backgroundColor: Colors.blue,
            child: const Icon(Icons.add),
            onPressed: () {},
          ),
        ],
      ),
      body: PageView(
        scrollDirection: Axis.vertical,
        controller: _pageControler,
        children: [
          Container(
            color: Colors.deepPurpleAccent,
          ),
          Container(
            color: Colors.grey.shade100,
          ),
        ],
      ),
    );
  }
}
