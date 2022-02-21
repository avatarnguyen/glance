import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:glance/core/config/router.dart';
import 'package:glance/core/styles/styles.dart';
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
    final theme = AppTheme.of(context);
    Map<int, Color> color = const {
      50: Color(0xFF9EA7B2),
      100: Color(0xFF8A96A3),
      200: Color(0xFF778493),
      300: Color(0xFF637284),
      400: Color(0xFF506175),
      500: Color(0xFF3D5066), // Base: primary1 color in theme
      600: Color(0xFF36485b),
      700: Color(0xFF304051),
      800: Color(0xFF2a3847),
      900: Color(0xFF24303d),
    };
    MaterialColor customPrimary = MaterialColor(0xFF3D5066, color);
    return MaterialApp.router(
      title: 'Glance',
      routerDelegate: router.routerDelegate,
      routeInformationParser: router.routeInformationParser,
      theme: ThemeData(
        primarySwatch: customPrimary,
        primaryColor: theme.colors.primary1,
      ),
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
        primaryColor: theme.colors.primary1,
        scaffoldBackgroundColor: theme.colors.lighBackground,
      ),
    );
  }
}
