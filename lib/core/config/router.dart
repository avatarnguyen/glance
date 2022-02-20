import 'package:flutter/material.dart';
import 'package:glance/core/presentation/pages/home_page.dart';
import 'package:go_router/go_router.dart';

const kRouteAppLoader = 'app_loader';
const kRouteHome = 'home';
const kRouteLogin = 'login';
const kRouteConfirmation = 'confirmation';
const kRouteCreate = 'create';

class AppRouter {
  AppRouter(this.appContext);

  final BuildContext appContext;

  // final _projectBloc = getIt<ProjectBloc>();

  late final router = GoRouter(
    routes: [
      GoRoute(
        name: kRouteAppLoader,
        path: '/',
        builder: (context, state) => const HomePage(),
      ),
      // GoRoute(
      //   name: kRouteConfirmation,
      //   path: '/confirmation',
      //   builder: (context, state) => const ConfirmationPage(),
      // ),
      // GoRoute(
      //   name: kRouteLogin,
      //   path: '/login',
      //   builder: (context, state) => const LoginPage(),
      // ),
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
