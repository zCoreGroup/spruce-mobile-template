// Routes
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:spruceTesting/components/menu_scaffold.dart';
import 'package:spruceTesting/screens/home/home_controller.dart';

class AppRoutes {
  static const home = 'home';

  static const List<String> routes = [home];
}

final router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const MenuScaffold(
          routeNames: AppRoutes.routes,
          child: HomeController(),
        );
      },
    ),
    GoRoute(
      path: '/${AppRoutes.home}',
      builder: (BuildContext context, GoRouterState state) {
        return const MenuScaffold(
          routeNames: AppRoutes.routes,
          child: HomeController(),
        );
      },
    ),
  ],
);
