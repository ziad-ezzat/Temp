import 'package:flutter/material.dart';

Widget buildBar(double screenWidth,double  screenHeight,String text, String text2) {
  return Row(
    children: [
      Image.asset(
        "assets/images/Vector.png",
        width: screenWidth * 0.03,
        height: screenHeight * 0.02,
      ),
      Padding(
        padding: EdgeInsets.fromLTRB(screenWidth * 0.27, 0, 0, 0),
        child: Text(
          text,
          style: TextStyle(
            fontSize: screenWidth * 0.04,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.fromLTRB(screenWidth * 0.25, 0, 0, 0),
        child: Container(
          padding: EdgeInsets.fromLTRB(
            screenWidth * 0.02,
            0,
            screenWidth * 0.02,
            0,
          ),
          margin: EdgeInsets.fromLTRB(screenWidth * 0.01, 0, 0, 0),
          height: screenHeight * 0.03,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 240, 239, 239),
            borderRadius: BorderRadius.circular(25),
          ),
          child: Center(
            child: Text(
              text2,
              style: TextStyle(
                fontSize: screenWidth * 0.03,
                fontWeight: FontWeight.w600,
                color: Colors.blue,
              ),
            ),
          ),
        ),
      ),
    ],
  );
}