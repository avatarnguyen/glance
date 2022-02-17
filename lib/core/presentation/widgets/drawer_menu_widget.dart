import 'package:flutter/material.dart';

class DrawerMenuWidget extends StatelessWidget {
  const DrawerMenuWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Material(
        color: Colors.deepPurpleAccent,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ListTile(
              title: Text('Dashboard'),
            ),
            ListTile(
              title: Text('Projects'),
            ),
          ],
        ),
      ),
    );
  }
}
