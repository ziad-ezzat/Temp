import 'package:flutter/material.dart';
import 'package:gr_project/Views/Components/assessment_bar.dart';
import 'package:gr_project/Views/Components/assessment_btn.dart';

class AssessmentSecond extends StatefulWidget {
  const AssessmentSecond({super.key});

  @override
  State<AssessmentSecond> createState() => _AssessmentSecondState();
}

class _AssessmentSecondState extends State<AssessmentSecond> {
  double _value = 0;
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
                padding: EdgeInsets.fromLTRB(
                    screenWidth * 0.06, 0, screenWidth * 0.06, 0),
                child: buildBar(
                    screenWidth, screenHeight, "Assessment", "2 of 7"),
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
                "sleep quality?",
                style: TextStyle(
                  fontSize: screenWidth * 0.06,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: screenHeight * 0.1,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    flex: 1,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        buildColumn("Excellent", "7-9 hours",
                            "assets/images/small_clock.png"),
                        buildColumn("Good", "6-7 hours",
                            "assets/images/small_clock.png"),
                        buildColumn("Fair", "5 hours",
                            "assets/images/small_clock.png"),
                        buildColumn("Poor", "3-4 hours",
                            "assets/images/small_clock.png"),
                        buildColumn("Worst", "<3 hours",
                            "assets/images/small_clock.png"),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: RotatedBox(
                      quarterTurns: 3,
                      child: SliderTheme(
                        data: SliderTheme.of(context).copyWith(
                          trackShape: const RoundedRectSliderTrackShape(),
                          thumbShape: const RoundSliderThumbShape(
                              enabledThumbRadius: 20.0),
                          overlayShape: const RoundSliderOverlayShape(
                              overlayRadius: 28.0),
                        ),
                        child: Slider(
                          min: 0,
                          max: 4,
                          divisions: 4,
                          onChanged: (double value) {
                            setState(() {
                              _value = value;
                              print(_value);
                            });
                          },
                          value: _value,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset('assets/images/Solid mood overjoyed.png'),
                        Image.asset('assets/images/Solid mood happy.png'),
                        Image.asset('assets/images/Solid mood neutral.png'),
                        Image.asset('assets/images/Solid mood sad.png'),
                        Image.asset('assets/images/Solid mood depressed.png'),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: screenHeight * 0.15,
              ),
              buildContinueButton(),
            ],
          ),
        );
      },
    ),
  );
}

  Column buildColumn(String text1, String text2, String image) {
    return Column(
      children: [
        Text(
          text1,
          style: const TextStyle(
            color: Color(0xFF9E9E9E),
            fontSize: 16,
            fontFamily: 'Roboto',
            fontWeight: FontWeight.w600,
            height: 0,
          ),
        ),
        Row(
          children: [
            Image(
              image: AssetImage(image),
            ),
            Text(
              text2,
              style: const TextStyle(
                color: Color(0xFF9E9E9E),
                fontSize: 16,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w600,
                height: 0,
              ),
            )
          ],
        )
      ],
    );
  }
}
