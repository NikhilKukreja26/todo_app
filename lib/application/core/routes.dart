import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart' show GoRoute, GoRouter, RouteBase;
import 'package:todo_app/application/core/go_route_observer.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey = GlobalKey<NavigatorState>();

final GoRouter router = GoRouter(
  initialLocation: '/home',
  navigatorKey: _rootNavigatorKey,
  observers: [
    GoRouterObserver(),
  ],
  routes: <RouteBase>[
    GoRoute(
      path: '/home/settings',
      builder: (context, state) {
        return Container(
          color: Colors.deepPurple,
        );
      },
    ),
    GoRoute(
      path: '/home/start',
      builder: (context, state) {
        return Container(
          color: Colors.blueGrey,
        );
      },
    ),
  ],
);
