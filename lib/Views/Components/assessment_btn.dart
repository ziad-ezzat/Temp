import 'package:flutter/material.dart';

Widget buildContinueButton(VoidCallback onPressed) {
  return Container(
    width: double.infinity,
    padding: const EdgeInsets.symmetric(horizontal: 20),
    height: 50,
    child: ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        primary: Colors.blue,
        onPrimary: Colors.white,
      ),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Continue",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
            child: Icon(
              Icons.arrow_forward,
              size: 20,
            ),
          )
        ],
      ),
    ),
  );
}
