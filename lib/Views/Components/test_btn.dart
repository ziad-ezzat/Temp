import 'package:flutter/material.dart';

Widget buildContinueButton() {
  return Container(
    width: double.infinity,
    padding: const EdgeInsets.symmetric(horizontal: 20),
    height: 50,
    child: ElevatedButton(
      onPressed: () {
        // Add your logic here
      },
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
      child: Row(
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
            padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
            child: Image.asset(
              "assets/images/chevron-right.png",
              width: 30,
              height: 20,
            ),
          )
        ],
      ),
    ),
  );
}
