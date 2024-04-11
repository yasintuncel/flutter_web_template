import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../pages/export.dart';

List<StatefulShellBranch> appRoutes = [
  StatefulShellBranch(
    routes: [
      GoRoute(
        name: 'root',
        path: '/',
        pageBuilder: (context, state) {
          return const MaterialPage(child: DashboardScreen());
        },
      ),
    ],
  ),
  StatefulShellBranch(
    routes: [
      GoRoute(
        name: 'products',
        path: '/products',
        pageBuilder: (context, state) {
          return const MaterialPage(child: ProductListScreen());
        },
        routes: [
          GoRoute(
            path: ':id',
            builder: (context, state) => ProductDetailScreen(id: state.pathParameters['id']!),
          ),
        ],
      ),
    ],
  ),
  StatefulShellBranch(
    routes: [
      GoRoute(
        name: 'About',
        path: '/about',
        pageBuilder: (context, state) {
          return const MaterialPage(child: AboutScreen());
        },
      ),
    ],
  ),
];
