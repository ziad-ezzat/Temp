import 'package:flutter/material.dart';

class Rejection extends StatelessWidget {
  const Rejection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 70,
          ),
          Align(
              alignment: Alignment.center,
              child: Text("Rejection !",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                  ))),
          SizedBox(
            height: 40,
          ),
          Image(
            image: AssetImage("assets/images/prohibition sign.png"),
            width: 199.122802734375,
            height: 200,
          ),
          SizedBox(
            height: 40,
          ),
          Text(
            "We appreciate your request, but unfortunately,",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          ),
          Text(
            "it didn't align with our current criteria. Please",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          ),
          Text(
            "read the rejection reason and try again.",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(20, 0, 180, 10),
            child: Text("The rejection reasons are: ",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                )),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 240, 5),
            child: Text("Unclear ID ",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                )),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 240, 5),
            child: Text("Unclear ID ",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                )),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 240, 5),
            child: Text("Unclear ID ",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                )),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 240, 5),
            child: Text("Unclear ID ",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                )),
          ),
        ],
      ),
    );
  }
}
