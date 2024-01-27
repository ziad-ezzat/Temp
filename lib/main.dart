import 'package:flutter/material.dart';
import 'package:gr_project/modules/login_screen.dart';
import 'package:gr_project/modules/onBoarding_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OnboardingScreen(),
    );
  }
}
