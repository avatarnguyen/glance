import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:glance/core/presentation/pages/home_page.dart';
import 'package:glance/features/create/presentation/pages/create_page.dart';
import 'package:glance/features/settings/presentation/pages/setting_page.dart';
import 'package:go_router/go_router.dart';

const kRouteAppLoader = 'app_loader';
const kRouteHome = 'home';
const kRouteLogin = 'login';
const kRouteConfirmation = 'confirmation';
const kRouteCreate = 'create';
const kRouteSetting = 'setting';

class AppRouter {
  // final _projectBloc = getIt<ProjectBloc>();

  Page<void> getPlatformApp({
    LocalKey? key,
    bool? fullscreen,
    required Widget child,
  }) {
    return Platform.isIOS
        ? CupertinoPage(
            key: key,
            child: child,
            fullscreenDialog: fullscreen ?? false,
          )
        : MaterialPage(
            key: key,
            child: child,
            fullscreenDialog: fullscreen ?? false,
          );
  }

  late final router = GoRouter(
    routes: [
      GoRoute(
        name: kRouteHome,
        path: '/',
        builder: (context, state) => const HomePage(),
      ),
      GoRoute(
        name: kRouteSetting,
        path: '/setting',
        pageBuilder: (context, state) => getPlatformApp(
          key: state.pageKey,
          fullscreen: true,
          child: const SettingPage(),
        ),
      ),
      GoRoute(
        name: kRouteCreate,
        path: '/create',
        pageBuilder: (context, state) => getPlatformApp(
          key: state.pageKey,
          fullscreen: true,
          child: const CreatePage(),
        ),

        /* CustomTransitionPage<void>(
          key: state.pageKey,
          child: const CreatePage(),
          fullscreenDialog: true,
          transitionsBuilder: (context, animation, secondaryAnimation, child) => SlideTransition(
            position: animation.drive(
              Tween<Offset>(
                begin: const Offset(0, 0.8),
                end: Offset.zero,
              ).chain(CurveTween(curve: Curves.easeInOut)),
            ),
            child: child,
          ),
        ), */
      ),
    ],
    redirect: (state) {
      // final _authState = appContext.read<AuthBloc>().state;
      // final _isLogginIn = state.location == '/login';
      // print("Current Location: ${state.location}");

      // final loginloc = state.namedLocation('login');
      // return _authState.maybeWhen(
      //   // authenticated: (_) => null,
      //   unauthenticated: () => _isLogginIn ? null : '/login',
      //   confirmationRequired: () => '/confirmation',
      //   orElse: () => null,
      // );
      return null;
    },
    // refreshListenable: GoRouterRefreshStream(appContext.read<AuthBloc>().stream),
    debugLogDiagnostics: true,
    errorPageBuilder: (context, state) => MaterialPage(
      key: state.pageKey,
      child: Scaffold(
        body: Center(
          child: Text(state.error.toString()),
        ),
      ),
    ),
  );
}
