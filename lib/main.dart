import 'package:flutter/material.dart';
import 'package:gr_project/Views/Pages/approved_screen.dart';
import 'package:gr_project/Views/Pages/forgot_password_screen/email_screen.dart';
import 'package:gr_project/Views/Pages/login_screen.dart';
import 'package:gr_project/Views/Pages/pending_screen.dart';
import 'package:gr_project/Views/Pages/rejection_screen.dart';
import 'package:gr_project/Views/Pages/start_screen.dart';
import 'Views/Pages/assessment_screen/assessment_first.dart';
import 'Views/Pages/assessment_screen/assessment_seventh.dart';
import 'Views/Pages/assessment_screen/assessment_sixth.dart';
import 'Views/Pages/onBoarding_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  bool seenOnboarding = prefs.getBool('seen_onboarding') ?? false;
  bool seenStartScreen = prefs.getBool('seen_start_screen') ?? false;
  Widget _defaultHome = seenOnboarding
      ? (seenStartScreen ? LoginScreen() : StartScreen())
      : OnboardingScreen();
  runApp(MainApp(_defaultHome));
}

class MainApp extends StatelessWidget {
  final Widget defaultHome;

  MainApp(this.defaultHome);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AssessmentSeventh(), //defaultHome,
    );
  }
}
