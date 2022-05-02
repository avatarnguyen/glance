import 'package:flutter/material.dart';
import 'package:glance/core/glance_core.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarCustom(
        titleText: 'Setting',
      ),
      body: Container(
        color: Colors.blue,
        child: null,
      ),
    );
  }
}
