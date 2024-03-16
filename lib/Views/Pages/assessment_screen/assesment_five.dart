import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gr_project/Views/Components/assessment_bar.dart';
import 'package:gr_project/Views/Components/assessment_btn.dart';
import 'package:gr_project/Views/Pages/assessment_screen/assessment_sixth.dart';

class AssesmentFive extends StatefulWidget {
  const AssesmentFive({super.key});

  @override
  State<AssesmentFive> createState() => _AssesmentFiveState();
}

class _AssesmentFiveState extends State<AssesmentFive> {
  double _value = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppBar(context, "Assessment", "5 of 7"),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          final double screenWidth = constraints.maxWidth;
          final double screenHeight = constraints.maxHeight;
          return Column(
            children: [
              SizedBox(
                height: screenHeight * 0.07,
              ),
              Text(
                "How would you describe",
                style: TextStyle(
                  fontSize: screenWidth * 0.06,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                "your mood?",
                style: TextStyle(
                  fontSize: screenWidth * 0.06,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: screenHeight * 0.1,
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.fromLTRB(screenWidth * 0.08, 0, 0, 0),
                  child: Row(
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
                        child: Padding(
                          padding:
                              EdgeInsets.fromLTRB(0, 0, screenWidth * 0.1, 0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset(
                                  'assets/images/Solid mood overjoyed.png'),
                              Image.asset('assets/images/Solid mood happy.png'),
                              Image.asset(
                                  'assets/images/Solid mood neutral.png'),
                              Image.asset('assets/images/Solid mood sad.png'),
                              Image.asset(
                                  'assets/images/Solid mood depressed.png'),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: screenHeight * 0.15,
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, screenWidth * 0.06),
                child: buildContinueButton(
                  () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => AssessmentSixth()));
                  },
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  Column buildColumn(String text1, String text2, String image) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text1,
          style: TextStyle(
            color: Color(0xFF9E9E9E),
            fontSize: MediaQuery.of(context).size.width * 0.04,
            fontFamily: 'Roboto',
            fontWeight: FontWeight.w600,
            height: 0,
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(
              0, MediaQuery.of(context).size.width * 0.01, 0, 0),
          child: Row(
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(
                    MediaQuery.of(context).size.width * 0.005, 0, 0, 0),
                child: Image(
                  image: AssetImage(image),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(
                    MediaQuery.of(context).size.width * 0.005, 0, 0, 0),
                child: Text(
                  text2,
                  style: TextStyle(
                    color: Color(0xFF9E9E9E),
                    fontSize: MediaQuery.of(context).size.width * 0.04,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w600,
                    height: 0,
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
