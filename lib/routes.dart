import 'package:go_router/go_router.dart';
import 'pages/dashboard.dart';
import 'pages/auth.dart';
import 'pages/product_detail_view.dart';
import 'pages/product_list_view.dart';

bool isLoggedIn = true;

final GoRouter appRoutes = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      redirect: (context, state) {
        if (isLoggedIn) {
          return '/dashboard';
        }
        return '/auth';
      },
    ),
    GoRoute(
      path: '/auth',
      builder: (context, state) => const AuthView(),
    ),
    GoRoute(
      path: '/dashboard',
      builder: (c, s) => const DashboardView(),
    ),
    GoRoute(
      path: '/products',
      builder: (context, state) => const ProductListView(),
      routes: [
        GoRoute(
          path: ':id',
          builder: (context, state) => ProductDetailView(unitId: state.pathParameters['id']!),
        ),
      ],
    )
  ],
);
