import 'package:flutter/material.dart';
import 'package:gr_project/Views/Pages/login_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

Widget buildStartButton(bool isUserSelected, BuildContext context) {
  return Container(
    width: double.infinity,
    padding: const EdgeInsets.symmetric(horizontal: 20),
    margin: const EdgeInsets.symmetric(vertical: 50),
    height: 50,
    child: ElevatedButton(
      onPressed: () async {
        if (isUserSelected) {
          print('User');
          SharedPreferences prefs = await SharedPreferences.getInstance();
          prefs.setBool('seen_start_screen', true);
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const LoginScreen()),
          );
        } else {
          print('Doctor');
          SharedPreferences prefs = await SharedPreferences.getInstance();
          prefs.setBool('seen_start_screen', true);
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const LoginScreen()),
          );
        }
      },
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
      ),
      child: const Text(
        "Get started",
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),
      ),
    ),
  );
}
