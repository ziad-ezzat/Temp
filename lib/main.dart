import 'package:flutter/material.dart';
import 'package:gr_project/Views/Pages/approved.dart';
import 'package:gr_project/Views/Pages/login_screen.dart';
import 'package:gr_project/Views/Pages/pending.dart';
import 'package:gr_project/Views/Pages/rejection.dart';
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
      home: Approved(),
    );
  }
}
