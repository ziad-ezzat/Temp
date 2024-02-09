import 'package:flutter/material.dart';
import 'package:gr_project/Views/Pages/assessment_screen/assesment_fourth.dart';
import 'package:gr_project/Views/Pages/assessment_screen/assesment_third.dart';
import 'package:gr_project/Views/Pages/edit_profile_screen.dart';

import 'package:gr_project/Views/Pages/login_screen.dart';
import 'package:gr_project/Views/Pages/main_screens/Nav_screen.dart';
import 'package:gr_project/Views/Pages/main_screens/home_screen.dart';
import 'package:gr_project/Views/Pages/start_screen.dart';
import 'Views/Pages/notifications_screen.dart';
import 'Views/Pages/onBoarding_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  bool seenOnboarding = prefs.getBool('seen_onboarding') ?? false;
  bool seenStartScreen = prefs.getBool('seen_start_screen') ?? false;
  Widget _defaultHome = seenOnboarding
      ? (seenStartScreen ? const LoginScreen() : const StartScreen())
      : const OnboardingScreen();
  runApp(MainApp(_defaultHome));
}

class MainApp extends StatelessWidget {
  final Widget defaultHome;

  const MainApp(this.defaultHome, {super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: defaultHome,
    );
  }
}
