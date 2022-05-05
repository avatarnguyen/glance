import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:glance/core/presentation/common_widgets/fullscreen_loading_widget.dart';
import 'package:glance/core/presentation/pages/home_page.dart';
import 'package:glance/features/auth/presentation/logic/auth_provider.dart';
import 'package:glance/features/auth/presentation/pages/login_page.dart';
import 'package:glance/features/calendar/presentation/pages/calendar_page.dart';
import 'package:glance/features/create/presentation/pages/create_page.dart';
import 'package:glance/features/settings/presentation/pages/setting_page.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

const kRouteAppLoader = 'app_loader';
const kRouteHome = 'home';
const kRouteLogin = 'login';
const kRouteConfirmation = 'confirmation';
const kRouteCreate = 'create';
const kRouteSetting = 'setting';
const kRouteCalendar = 'calendar';

final routerProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    routes: [
      GoRoute(
        name: kRouteHome,
        path: '/',
        builder: (context, state) => const HomePage(),
      ),
      GoRoute(
        name: kRouteSetting,
        path: '/setting',
        pageBuilder: (context, state) => AppRouterHelper.getPlatformApp(
          key: state.pageKey,
          fullscreen: true,
          child: const SettingPage(),
        ),
      ),
      GoRoute(
        name: kRouteAppLoader,
        path: '/loader',
        pageBuilder: (context, state) => AppRouterHelper.getPlatformApp(
          key: state.pageKey,
          child: const FullScreenLoadingWidget(),
        ),
      ),
      GoRoute(
        name: kRouteLogin,
        path: '/login',
        pageBuilder: (context, state) => AppRouterHelper.getPlatformApp(
          key: state.pageKey,
          child: const LoginPage(),
        ),
      ),
      GoRoute(
        name: kRouteCalendar,
        path: '/calendar',
        pageBuilder: (context, state) => AppRouterHelper.getPlatformApp(
          key: state.pageKey,
          fullscreen: true,
          child: const CalendarPage(),
        ),
      ),
      GoRoute(
        name: kRouteCreate,
        path: '/create',
        pageBuilder: (context, state) => AppRouterHelper.getPlatformApp(
          key: state.pageKey,
          fullscreen: true,
          child: const CreatePage(),
        ),
      ),
    ],
    redirect: (state) {
      final _authState = ref.read(authChangeStreamProvider);
      final _isAtLoginPage = state.location == '/login';
      final _isAtHomePage = state.location == '/';
      debugPrint("Current Location: ${state.location}");
      debugPrint("Auth State: $_authState");

      return _authState.maybeWhen(
        data: (state) {
          debugPrint('Has Data');
          return state.maybeWhen(
            authenticated: () => _isAtHomePage ? null : '/',
            unauthenticated: () => _isAtLoginPage ? null : '/login',
            orElse: () {
              // TODO: here better an error page
              return _isAtLoginPage ? null : '/loading';
            },
          );
        },
        loading: () {
          debugPrint('Is Loading');
          return _isAtLoginPage ? null : '/login';
        },
        orElse: () => null,
      );
    },
    refreshListenable:
        GoRouterRefreshStream(ref.watch(authChangeStreamProvider.stream)),
    // refreshListenable: AuthNotifier(ref),
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
});

class AppRouterHelper {
  static Page<void> getPlatformApp({
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
}
