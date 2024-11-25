import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../ui/page/login/login_page.dart';
import '../ui/page/page.dart';

class RouterApp {
  static final GoRouter router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: '/',
        builder: (context, state) => const PageHome(),
      ),
      GoRoute(
        path: '/login',
        builder: (context, state) => const LoginPage(),
      ),
      GoRoute(
        path: '/createLogin',
        builder: (context, state) {
          return Container(
            color: Colors.blue,
          );
        },
      )
    ],
  );
}
