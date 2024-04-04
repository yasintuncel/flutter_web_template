import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({super.key});

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text(
              'Dashboard',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            SizedBox(height: 8),
            ElevatedButton(
              onPressed: () => context.go('/products'),
              child: Text('See Products'),
            ),
          ],
        ),
      ),
    );
  }
}
