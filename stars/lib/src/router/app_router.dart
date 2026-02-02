import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:stars/src/features/auth/presentation/login_screen.dart';
import 'package:stars/src/features/feed/presentation/feed_screen.dart';
import 'package:stars/src/features/profile/presentation/profile_screen.dart';
import 'package:stars/src/features/create_post/presentation/upload_screen.dart';
import 'package:stars/src/router/scaffold_with_nav_bar.dart';
import 'package:stars/src/features/settings/presentation/settings_screen.dart';

part 'app_router.g.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();

@riverpod
GoRouter goRouter(Ref ref) {
  return GoRouter(
    initialLocation: '/app/feed',
    navigatorKey: _rootNavigatorKey,
    debugLogDiagnostics: true,
    routes: [
      GoRoute(
        path: '/login',
        builder: (context, state) => const LoginScreen(),
      ),
      StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) {
          return ScaffoldWithNavBar(navigationShell: navigationShell);
        },
        branches: [
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/app/feed',
                pageBuilder: (context, state) => const NoTransitionPage(child: FeedScreen()),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/app/explore',
                pageBuilder: (context, state) => const NoTransitionPage(child: Scaffold(body: Center(child: Text('Explore')))),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/app/upload',
                pageBuilder: (context, state) => const NoTransitionPage(child: UploadScreen()),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/app/profile',
                pageBuilder: (context, state) => const NoTransitionPage(child: ProfileScreen()),
              ),
            ],
          ),
        ],
      ),
      GoRoute(
        path: '/settings',
        parentNavigatorKey: _rootNavigatorKey,
        builder: (context, state) => const SettingsScreen(),
      ),
    ],
  );
}
