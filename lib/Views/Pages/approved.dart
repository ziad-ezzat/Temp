import 'package:flutter/material.dart';

class Approved extends StatelessWidget {
  const Approved({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        SizedBox(
          height: 70,
        ),
        Align(
          alignment: Alignment.center,
          child: Text(
            "Approved !",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        SizedBox(
          height: 40,
        ),
        Image(
          image:
              AssetImage("assets/images/check mark in box side view blue.png"),
          width: 199.122802734375,
          height: 200,
        ),
        SizedBox(
          height: 40,
        ),
        Text(
          "Great news! Your request has been successfully",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
        ),
        Text(
          "approved by the admin. We appreciate your",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
        ),
        Text(
          "patience and cooperation.",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
        ),
        SizedBox(
          height: 40,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Container(
            width: double.infinity,
            height: 50,
            child: MaterialButton(
              onPressed: () {},
              color: Color(0xFF2196F3),
              child: const Text(
                'Go to home page',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
