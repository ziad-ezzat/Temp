import 'package:flutter/material.dart';
import 'package:gr_project/Views/Pages/approved_screen.dart';
import 'package:gr_project/Views/Pages/login_screen.dart';
import 'package:gr_project/Views/Pages/pending_screen.dart';
import 'package:gr_project/Views/Pages/rejection_screen.dart';
import 'package:gr_project/Views/Pages/start_screen.dart';
import 'Views/Pages/onBoarding_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: StartScreen(),
    );
  }
}
