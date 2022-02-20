import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:glance/core/config/router.dart';
import 'package:glance/core/presentation/pages/home_page.dart';
import 'package:glance/core/styles/styles.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return AppTheme(
      data: AppThemeData.regular(
        appLogo: ExactAssetPicture(
          SvgPicture.svgStringDecoderBuilder,
          'assets/images/logo.svg',
        ),
      ),
      child: Platform.isIOS ? const IosAppWidget() : const AndroidAppWidget(),
    );
  }
}

class AndroidAppWidget extends StatelessWidget {
  const AndroidAppWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);
    final _appRouter = AppRouter(context);
    final _router = _appRouter.router;
    return MaterialApp.router(
      title: 'Glance',
      routerDelegate: _router.routerDelegate,
      routeInformationParser: _router.routeInformationParser,
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
    );
  }
}

class IosAppWidget extends StatelessWidget {
  const IosAppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _appRouter = AppRouter(context);
    final _router = _appRouter.router;
    return CupertinoApp.router(
      title: 'Glance',
      routerDelegate: _router.routerDelegate,
      routeInformationParser: _router.routeInformationParser,
    );
  }
}
