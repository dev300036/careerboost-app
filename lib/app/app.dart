import 'package:flutter/material.dart';

import 'theme/app_theme.dart';

// Splash
import '../features/splash/presentation/splash_screen.dart';

// Home (future use)
import '../features/home/presentation/pages/home_screen.dart';

class CareerBoostApp extends StatelessWidget {
  const CareerBoostApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CareerBoost',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      home: const SplashScreen(),
    );
  }
}