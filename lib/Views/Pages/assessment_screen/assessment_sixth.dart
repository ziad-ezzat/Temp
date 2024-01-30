import 'package:flutter/material.dart';

import '../../Components/assessment_bar.dart';
import '../../Components/assessment_btn.dart';
import '../../Components/assessment_sixth_questions.dart';

class AssessmentSixth extends StatefulWidget {
  const AssessmentSixth({Key? key}) : super(key: key);

  @override
  State<AssessmentSixth> createState() => _AssessmentSixthState();
}

class _AssessmentSixthState extends State<AssessmentSixth> {
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          final double screenWidth = constraints.maxWidth;
          final double screenHeight = constraints.maxHeight;

          return SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: screenHeight * 0.06,
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(screenWidth * 0.06, 0, 0, 0),
                  child: buildBar(
                      screenWidth, screenHeight, "Assessment", "6 of 7"),
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
                const AssessmentSixthQuestions(),
                SizedBox(
                  height: screenHeight * 0.37,
                ),
                buildContinueButton(),
              ],
            ),
          );
        },
      ),
    );
  }
}
