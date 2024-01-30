import 'package:flutter/material.dart';
import 'package:gr_project/Views/Components/rejection_btn.dart';

import '../Components/test_btn.dart';

class TestPage6 extends StatefulWidget {
  const TestPage6({super.key});

  @override
  State<TestPage6> createState() => _TestPage6State();
}

class _TestPage6State extends State<TestPage6> {
  int _value = 0;
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          final double screenWidth = constraints.maxWidth;
          final double screenHeight = constraints.maxHeight;

          return Column(
            children: [
              SizedBox(
                height: screenHeight * 0.06,
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(screenWidth * 0.06, 0, 0, 0),
                child: Row(
                  children: [
                    Image.asset(
                      "assets/images/Vector.png",
                      width: screenWidth * 0.03,
                      height: screenHeight * 0.02,
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(screenWidth * 0.27, 0, 0, 0),
                      child: Text(
                        "Assessment",
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
                            screenWidth * 0.02, 0, screenWidth * 0.02, 0),
                        margin:
                            EdgeInsets.fromLTRB(screenWidth * 0.01, 0, 0, 0),
                        height: screenHeight * 0.03,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 240, 239, 239),
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: Center(
                          child: Text("6 of 7",
                              style: TextStyle(
                                fontSize: screenWidth * 0.03,
                                fontWeight: FontWeight.w600,
                                color: Colors.blue,
                              )),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: screenHeight * 0.07,
              ),
              Text(
                "Have you sought ",
                style: TextStyle(
                  fontSize: screenWidth * 0.06,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                "professional help before?",
                style: TextStyle(
                  fontSize: screenWidth * 0.06,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: screenHeight * 0.1,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(
                        screenWidth * 0.15, 0, 0, screenWidth * 0.02),
                    child: Container(
                      margin: EdgeInsets.fromLTRB(0, 0, screenWidth * 0.07, 0),
                      padding: EdgeInsets.fromLTRB(screenWidth * 0.001,
                          screenWidth * 0.001, screenWidth * 0.001, 0),
                      height: screenHeight * 0.08,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(
                                screenWidth * 0.03, 0, 0, 0),
                            child: Text(
                              "Yes",
                              style: TextStyle(
                                fontSize: screenWidth * 0.04,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsets.fromLTRB(screenWidth * 0.5, 0, 0, 0),
                            child: Radio(
                                value: 1,
                                groupValue: _value,
                                onChanged: (value) {
                                  setState(() {
                                    _value = value!;
                                  });
                                  print(_value);
                                }),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(screenWidth * 0.15, 0, 0, 0),
                    child: Container(
                      margin: EdgeInsets.fromLTRB(0, 0, screenWidth * 0.07, 0),
                      padding: EdgeInsets.fromLTRB(screenWidth * 0.001,
                          screenWidth * 0.001, screenWidth * 0.001, 0),
                      height: screenHeight * 0.08,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(
                                screenWidth * 0.03, 0, 0, 0),
                            child: Text(
                              "No",
                              style: TextStyle(
                                fontSize: screenWidth * 0.04,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsets.fromLTRB(screenWidth * 0.5, 0, 0, 0),
                            child: Radio(
                                value: 2,
                                groupValue: _value,
                                onChanged: (value) {
                                  setState(() {
                                    _value = value!;
                                  });
                                  print(_value);
                                }),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: screenHeight * 0.37,
              ),
              buildContinueButton(),
            ],
          );
        },
      ),
    );
  }
}
