import 'package:flutter/material.dart';
import 'package:gr_project/Views/Components/assessment_bar.dart';
import 'package:gr_project/Views/Components/assessment_btn.dart';

import '../../Components/assessment_first_questions.dart';

class AssessmentFirst extends StatefulWidget {
  const AssessmentFirst({super.key});

  @override
  State<AssessmentFirst> createState() => _AssessmentFirstState();
}

class _AssessmentFirstState extends State<AssessmentFirst> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          final double screenWidth = constraints.maxWidth;
          final double screenHeight = constraints.maxHeight;

          return Expanded( // Wrap the Column widget with Expanded
            child: SingleChildScrollView( // Wrap the Column widget with SingleChildScrollView
              child: Column(
                children: [
                  SizedBox(
                    height: screenHeight * 0.06,
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(screenWidth * 0.06, 0, 0, 0),
                    child: buildBar(screenWidth, screenHeight, "Assessment", "1 of 7"),
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
                  AssessmentFirstQuestions(),
                  SizedBox(
                    height: screenHeight * 0.15,
                  ),
                  buildContinueButton(),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}