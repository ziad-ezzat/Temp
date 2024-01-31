import 'package:flutter/material.dart';

class AssesmetFourthRate extends StatefulWidget {
  const AssesmetFourthRate({super.key});

  @override
  State<AssesmetFourthRate> createState() => _AssesmetFourthRateState();
}

class _AssesmetFourthRateState extends State<AssesmetFourthRate> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Container(
      padding: EdgeInsets.fromLTRB(screenWidth * 0.0, 0, screenWidth * 0.02, 0),
      margin: EdgeInsets.fromLTRB(screenWidth * 0.05, 0, screenWidth * 0.05, 0),
      height: screenHeight * 0.1,
      width: screenWidth * 0.6,
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 242, 241, 241),
        borderRadius: BorderRadius.circular(40),
      ),
      child: Padding(
        padding: EdgeInsets.fromLTRB(
            screenHeight * 0.045, screenHeight * 0.036, 0, 0),
        child: Row(
          children: [
            Column(
              children: [
                Row(
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding:
                              EdgeInsets.fromLTRB(0, 0, screenWidth * 0.04, 0),
                          child: Container(
                            child: Text("Low",
                                style: TextStyle(
                                  fontSize: screenWidth * 0.045,
                                  fontWeight: FontWeight.w600,
                                )),
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Padding(
                          padding:
                              EdgeInsets.fromLTRB(0, 0, screenWidth * 0.037, 0),
                          child: Text("Medium",
                              style: TextStyle(
                                fontSize: screenWidth * 0.045,
                                fontWeight: FontWeight.w600,
                              )),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(
                              screenWidth * 0.02, 0, screenWidth * 0.02, 0),
                          child: Text("High",
                              style: TextStyle(
                                fontSize: screenWidth * 0.045,
                                fontWeight: FontWeight.w600,
                              )),
                        )
                      ],
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
