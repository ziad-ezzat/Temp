// ignore_for_file: file_names
import 'package:flutter/material.dart';

import '../Pages/login_screen.dart';

Widget buildSkipButton(BuildContext context) {
  return TextButton(
    child: const Text('Skip',
        style: TextStyle(color: Colors.white, fontSize: 18)),
    onPressed: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => LoginScreen()),
      );
    },
  );
}
