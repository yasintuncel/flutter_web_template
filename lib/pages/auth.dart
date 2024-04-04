import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AuthView extends StatefulWidget {
  const AuthView({super.key});

  @override
  State<AuthView> createState() => _AuthViewState();
}

class _AuthViewState extends State<AuthView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text('Auth'),
            ElevatedButton(
              onPressed: () => context.go('/'),
              child: const Text('Back'),
            ),
          ],
        ),
      ),
    );
  }
}
