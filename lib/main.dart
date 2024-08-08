import 'package:flutter/material.dart';
import 'package:islami/moduls/splash/splash_view.dart';

import 'core/theme/application_theme_data.dart';
import 'layout/layout_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Islami App',
      theme: ApplicationThemeManager.lightTheme,
      debugShowCheckedModeBanner: false,
      initialRoute: SplashView.routeName,
      routes: {
        SplashView.routeName: (context) => const SplashView(),
        LayoutView.routeName: (context) => LayoutView(),
      },
    );
  }
}
