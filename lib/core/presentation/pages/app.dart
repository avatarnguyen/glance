import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:glance/core/glance_core.dart';
import 'package:glance/core/styles/theme/app_theme_data.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class MyApp extends HookConsumerWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _router = ref.read(routerProvider);
    return AppTheme(
      data: AppThemeData.regular(
        appLogo: ExactAssetPicture(
          SvgPicture.svgStringDecoderBuilder,
          'assets/images/logo.svg',
        ),
      ),
      child: PlatformWidget(
        cupertino: (_, __) => IosAppWidget(router: _router),
        material: (_, __) => AndroidAppWidget(router: _router),
      ),
    );
  }
}

class AndroidAppWidget extends StatelessWidget {
  const AndroidAppWidget({
    Key? key,
    required this.router,
  }) : super(key: key);

  final GoRouter router;

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Glance',
      routerDelegate: router.routerDelegate,
      routeInformationParser: router.routeInformationParser,
      theme: glanceLightThemeData(context),
    );
  }
}

class IosAppWidget extends StatelessWidget {
  const IosAppWidget({
    Key? key,
    required this.router,
  }) : super(key: key);

  final GoRouter router;
  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);
    return CupertinoApp.router(
      title: 'Glance',
      routerDelegate: router.routerDelegate,
      routeInformationParser: router.routeInformationParser,
      theme: CupertinoThemeData(
        primaryColor: theme.colors.accent,
        scaffoldBackgroundColor: theme.colors.primary,
      ),
    );
  }
}
