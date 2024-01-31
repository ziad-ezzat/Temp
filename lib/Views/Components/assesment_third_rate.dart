import 'package:flutter/material.dart';

class AssesmetThirdRate extends StatefulWidget {
  const AssesmetThirdRate({super.key});

  @override
  State<AssesmetThirdRate> createState() => _AssesmetFourthRateState();
}

class _AssesmetFourthRateState extends State<AssesmetThirdRate> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Container(
      padding: EdgeInsets.fromLTRB(screenWidth * 0.0, 0, screenWidth * 0.02, 0),
      margin: EdgeInsets.fromLTRB(screenWidth * 0.05, 0, screenWidth * 0.05, 0),
      height: screenHeight * 0.1,
      width: screenWidth * 0.77,
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 242, 241, 241),
        borderRadius: BorderRadius.circular(40),
      ),
      child: Padding(
        padding:
            EdgeInsets.fromLTRB(screenHeight * 0.05, screenHeight * 0.03, 0, 0),
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
                              EdgeInsets.fromLTRB(0, 0, screenWidth * 0.093, 0),
                          child: Container(
                            child: Text("1",
                                style: TextStyle(
                                  fontSize: screenWidth * 0.065,
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
                              EdgeInsets.fromLTRB(0, 0, screenWidth * 0.093, 0),
                          child: Text("2",
                              style: TextStyle(
                                fontSize: screenWidth * 0.065,
                                fontWeight: FontWeight.w600,
                              )),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Padding(
                          padding:
                              EdgeInsets.fromLTRB(0, 0, screenWidth * 0.093, 0),
                          child: Text("3",
                              style: TextStyle(
                                fontSize: screenWidth * 0.065,
                                fontWeight: FontWeight.w600,
                              )),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Padding(
                          padding:
                              EdgeInsets.fromLTRB(0, 0, screenWidth * 0.093, 0),
                          child: Text("4",
                              style: TextStyle(
                                fontSize: screenWidth * 0.065,
                                fontWeight: FontWeight.w600,
                              )),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Padding(
                          padding:
                              EdgeInsets.fromLTRB(0, 0, screenWidth * 0.093, 0),
                          child: Text("5",
                              style: TextStyle(
                                fontSize: screenWidth * 0.065,
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
