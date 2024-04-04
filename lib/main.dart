import 'package:flutter/material.dart';
import 'package:flutter_web_plugins/url_strategy.dart'; // add this import
import 'routes.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  usePathUrlStrategy();
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Web Template',
      routerConfig: appRoutes,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
        useMaterial3: true,
        // pageTransitionsTheme: const PageTransitionsTheme(
        //   builders: <TargetPlatform, PageTransitionsBuilder>{
        //     TargetPlatform.android: FadeUpwardsPageTransitionsBuilder(), // Apply this to every platforms you need.
        //   },
        // ),
      ),
    );
  }
}
