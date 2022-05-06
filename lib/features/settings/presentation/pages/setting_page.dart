import 'package:flutter/material.dart';
import 'package:glance/core/dependency_injection/auth_dependency.dart';
import 'package:glance/core/glance_core.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SettingPage extends HookConsumerWidget {
  const SettingPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBarCustom(
        titleText: 'Setting',
        actions: [
          PlatformIconButton(
            onPressed: () {
              ref.read(authDatasourceProvider).signOut();
              ref.read(googleSignInProvider).signOut();
            },
            icon: const Icon(Icons.logout),
          )
        ],
      ),
      body: Container(
        color: Colors.blue,
        child: null,
      ),
    );
  }
}
