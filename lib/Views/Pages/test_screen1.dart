import 'package:flutter/material.dart';
import 'package:gr_project/Views/Components/test_btn.dart';

class TestPage1 extends StatefulWidget {
  const TestPage1({super.key});

  @override
  State<TestPage1> createState() => _TestPage1State();
}

class _TestPage1State extends State<TestPage1> {
  int _value = 0;
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
                      margin: EdgeInsets.fromLTRB(screenWidth * 0.01, 0, 0, 0),
                      height: screenHeight * 0.03,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 240, 239, 239),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Center(
                        child: Text("1 of 7",
                            style: TextStyle(
                              fontSize: screenWidth * 0.03,
                              fontWeight: FontWeight.w600,
                              color: Colors.blue,
                            )),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: screenHeight * 0.07,
            ),
            Text(
              "What’s your health goal ",
              style: TextStyle(
                fontSize: screenWidth * 0.06,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              "today?",
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
                      screenWidth * 0.08, 0, 0, screenWidth * 0.02),
                  child: Container(
                    margin: EdgeInsets.fromLTRB(0, 0, screenWidth * 0.07, 0),
                    padding: EdgeInsets.fromLTRB(screenWidth * 0.001,
                        screenWidth * 0.001, screenWidth * 0.001, 0),
                    height: screenHeight * 0.07,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(
                              screenWidth * 0.02, 0, screenWidth * 0.01, 0),
                          child: Image.asset(
                            "assets/images/Solid heart.png",
                            width: screenHeight * 0.03,
                            height: screenHeight * 0.05,
                          ),
                        ),
                        Padding(
                          padding:
                              EdgeInsets.fromLTRB(screenWidth * 0.04, 0, 0, 0),
                          child: Text(
                            "I wanna reduce stress",
                            style: TextStyle(
                              fontSize: screenWidth * 0.04,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        Padding(
                          padding:
                              EdgeInsets.fromLTRB(screenWidth * 0.18, 0, 0, 0),
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
                  padding: EdgeInsets.fromLTRB(
                      screenWidth * 0.08, 0, 0, screenWidth * 0.02),
                  child: Container(
                    margin: EdgeInsets.fromLTRB(0, 0, screenWidth * 0.07, 0),
                    padding: EdgeInsets.fromLTRB(screenWidth * 0.001,
                        screenWidth * 0.001, screenWidth * 0.001, 0),
                    height: screenHeight * 0.07,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(
                              screenWidth * 0.02, 0, screenWidth * 0.01, 0),
                          child: Image.asset(
                            "assets/images/Solid robot.png",
                            width: screenHeight * 0.03,
                            height: screenHeight * 0.05,
                            color: Colors.black,
                          ),
                        ),
                        Padding(
                          padding:
                              EdgeInsets.fromLTRB(screenWidth * 0.02, 0, 0, 0),
                          child: Text(
                            "I wanna try AI Therapy",
                            style: TextStyle(
                              fontSize: screenWidth * 0.04,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        Padding(
                          padding:
                              EdgeInsets.fromLTRB(screenWidth * 0.2, 0, 0, 0),
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
                Padding(
                  padding: EdgeInsets.fromLTRB(
                      screenWidth * 0.08, 0, 0, screenWidth * 0.02),
                  child: Container(
                    margin: EdgeInsets.fromLTRB(0, 0, screenWidth * 0.07, 0),
                    padding: EdgeInsets.fromLTRB(screenWidth * 0.001,
                        screenWidth * 0.001, screenWidth * 0.001, 0),
                    height: screenHeight * 0.07,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(
                              screenWidth * 0.02, 0, screenWidth * 0.01, 0),
                          child: Image.asset(
                            "assets/images/Solid flag.png",
                            width: screenHeight * 0.03,
                            height: screenHeight * 0.05,
                          ),
                        ),
                        Padding(
                          padding:
                              EdgeInsets.fromLTRB(screenWidth * 0.02, 0, 0, 0),
                          child: Text(
                            "I want to cope with trauma",
                            style: TextStyle(
                              fontSize: screenWidth * 0.04,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        Padding(
                          padding:
                              EdgeInsets.fromLTRB(screenWidth * 0.125, 0, 0, 0),
                          child: Radio(
                              value: 3,
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
                  padding: EdgeInsets.fromLTRB(
                      screenWidth * 0.08, 0, 0, screenWidth * 0.02),
                  child: Container(
                    margin: EdgeInsets.fromLTRB(0, 0, screenWidth * 0.07, 0),
                    padding: EdgeInsets.fromLTRB(screenWidth * 0.001,
                        screenWidth * 0.001, screenWidth * 0.001, 0),
                    height: screenHeight * 0.07,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(
                              screenWidth * 0.02, 0, screenWidth * 0.01, 0),
                          child: Image.asset(
                            "assets/images/Solid mood happy.png",
                            width: screenHeight * 0.03,
                            height: screenHeight * 0.05,
                          ),
                        ),
                        Padding(
                          padding:
                              EdgeInsets.fromLTRB(screenWidth * 0.02, 0, 0, 0),
                          child: Text(
                            "I want to be a better person",
                            style: TextStyle(
                              fontSize: screenWidth * 0.04,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        Padding(
                          padding:
                              EdgeInsets.fromLTRB(screenWidth * 0.11, 0, 0, 0),
                          child: Radio(
                              value: 4,
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
                  padding: EdgeInsets.fromLTRB(
                      screenWidth * 0.08, 0, 0, screenWidth * 0.02),
                  child: Container(
                    margin: EdgeInsets.fromLTRB(0, 0, screenWidth * 0.07, 0),
                    padding: EdgeInsets.fromLTRB(screenWidth * 0.001,
                        screenWidth * 0.001, screenWidth * 0.001, 0),
                    height: screenHeight * 0.07,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(
                              screenWidth * 0.02, 0, screenWidth * 0.01, 0),
                          child: Image.asset(
                            "assets/images/Solid mobile.png",
                            width: screenHeight * 0.03,
                            height: screenHeight * 0.05,
                          ),
                        ),
                        Padding(
                          padding:
                              EdgeInsets.fromLTRB(screenWidth * 0.02, 0, 0, 0),
                          child: Text(
                            "Just trying out the app, mate!",
                            style: TextStyle(
                              fontSize: screenWidth * 0.04,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        Padding(
                          padding:
                              EdgeInsets.fromLTRB(screenWidth * 0.08, 0, 0, 0),
                          child: Radio(
                              value: 5,
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
              height: screenHeight * 0.15,
            ),
            buildContinueButton(),
          ],
        );
      }),
    );
  }
}
