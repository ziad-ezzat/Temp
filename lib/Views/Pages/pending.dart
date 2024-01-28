import 'package:flutter/material.dart';

class Pending extends StatelessWidget {
  const Pending({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: const [
        SizedBox(
          height: 70,
        ),
        Align(
            alignment: Alignment.center,
            child: Text("Pending !",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                ))),
        SizedBox(
          height: 40,
        ),
        Image(
          image: AssetImage(
              "assets/images/Hourglass character checking the time.png"),
          width: 150,
          height: 200,
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: EdgeInsets.only(left: 25, top: 10, right: 25, bottom: 0),
          child: Text("Thank you for your request! Your submission ",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
              )),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Text("is currently pending approval from our admin.",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
              )),
        )
      ],
    ));
  }
}
