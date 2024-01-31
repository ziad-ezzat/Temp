import 'package:flutter/material.dart';
import 'package:gr_project/Views/Components/assesment_third_rate.dart';

import '../../Components/assessment_bar.dart';
import '../../Components/assessment_btn.dart';

class AssesmentThird extends StatefulWidget {
  const AssesmentThird({super.key});

  @override
  State<AssesmentThird> createState() => _AssesmentFourthState();
}

class _AssesmentFourthState extends State<AssesmentThird> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          final double screenWidth = constraints.maxWidth;
          final double screenHeight = constraints.maxHeight;

          return Expanded(
            child: SingleChildScrollView(
              child: Column(children: [
                SizedBox(
                  height: screenHeight * 0.06,
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(screenWidth * 0.06, 0, 0, 0),
                  child: buildBar(
                      screenWidth, screenHeight, "Assessment", "3 of 7"),
                ),
                SizedBox(
                  height: screenHeight * 0.07,
                ),
                Text(
                  "How would you rate your",
                  style: TextStyle(
                    fontSize: screenWidth * 0.06,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  "overall well-being level?",
                  style: TextStyle(
                    fontSize: screenWidth * 0.06,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: screenHeight * 0.2,
                ),
                AssesmetThirdRate(),
                SizedBox(
                  height: screenHeight * 0.35,
                ),
                buildContinueButton(),
              ]),
            ), // Wrap the Column widget with Expanded
          );
        },
      ),
    );
  }
}
