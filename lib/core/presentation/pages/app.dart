import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:glance/core/config/router.dart';
import 'package:glance/core/styles/styles.dart';
import 'package:glance/core/styles/theme/app_theme_data.dart';
import 'package:go_router/go_router.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    final _router = _appRouter.router;
    return AppTheme(
      data: AppThemeData.regular(
        appLogo: ExactAssetPicture(
          SvgPicture.svgStringDecoderBuilder,
          'assets/images/logo.svg',
        ),
      ),
      child: AndroidAppWidget(
        router: _router,
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
        primaryColor: theme.colors.accent1,
        scaffoldBackgroundColor: theme.colors.primary1,
      ),
    );
  }
}
