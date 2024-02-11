import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_sound/flutter_sound.dart';
import 'package:path_provider/path_provider.dart';

import '../journaling_text.dart';
import '../journaling_voice.dart';

class MySpacePage extends StatefulWidget {
  const MySpacePage({super.key});

  @override
  _MySpaceState createState() => _MySpaceState();
}

class _MySpaceState extends State<MySpacePage> {
  bool isExpandedYourJournaling = false;
  bool isExpandedYourReports = false;
  final player = FlutterSoundPlayer();

  @override
  void initState() {
    super.initState();
    initPlayer();
  }

  Future<void> initPlayer() async {
    await player.openPlayer();
  }

  Future<void> playAudio() async {

    // Get the directory where the app can store files.
    final Directory? appDocDir = await getExternalStorageDirectory();

    // Create a file path under the app directory.
    final String filePath = '${appDocDir?.path}/audio.aac';

    await player.startPlayer(
      fromURI: filePath,
    );

    print('Playing' + filePath);
  }

  @override
  void dispose() {
    player.closePlayer();
    super.dispose();
  }

  void toggleExpand() {
    setState(() {
      isExpandedYourJournaling = !isExpandedYourJournaling;
    });
  }

  void toggleExpandR() {
    setState(() {
      isExpandedYourReports = !isExpandedYourReports;
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
        appBar: AppBar(
          title: Text(
            "My Space",
            style: TextStyle(
              fontSize: screenWidth * 0.05,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        body: SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              maxHeight: MediaQuery.of(context).size.height,
            ),
            child: LayoutBuilder(
              builder: (context, constraints) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: double.infinity,
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(screenWidth * 0.03, 0,
                            screenWidth * 0.03, screenWidth * 0.02),
                        child: Container(
                          height: screenHeight * 0.23,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(3),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(
                                        screenWidth * 0.04,
                                        screenWidth * 0.03,
                                        0,
                                        0),
                                    child: Text(
                                      "How are you feeling today ?",
                                      style: TextStyle(
                                        fontSize: screenWidth * 0.04,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: screenWidth * 0.045,
                                        vertical: screenHeight * 0.03),
                                    child: Column(
                                      children: [
                                        Image(
                                          image: const AssetImage(
                                            "assets/images/Solid mood overjoyed.png",
                                          ),
                                          width: screenWidth * 0.09,
                                        ),
                                        Padding(
                                          padding: EdgeInsets.symmetric(
                                              vertical: screenHeight * 0.01),
                                          child: Text(
                                            "Happy",
                                            style: TextStyle(
                                              fontSize: screenWidth * 0.035,
                                              fontWeight: FontWeight.w400,
                                              color: const Color.fromARGB(
                                                  255, 140, 140, 140),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: screenWidth * 0.045,
                                        vertical: screenHeight * 0.03),
                                    child: Column(
                                      children: [
                                        Image(
                                          image: const AssetImage(
                                            "assets/images/Solid mood neutral.png",
                                          ),
                                          width: screenWidth * 0.09,
                                        ),
                                        Padding(
                                          padding: EdgeInsets.symmetric(
                                              vertical: screenHeight * 0.01),
                                          child: Text(
                                            "Manic",
                                            style: TextStyle(
                                              fontSize: screenWidth * 0.035,
                                              fontWeight: FontWeight.w400,
                                              color: const Color.fromARGB(
                                                  255, 140, 140, 140),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: screenWidth * 0.045,
                                        vertical: screenHeight * 0.03),
                                    child: Column(
                                      children: [
                                        Image(
                                          image: const AssetImage(
                                            "assets/images/Solid mood sad.png",
                                          ),
                                          width: screenWidth * 0.09,
                                        ),
                                        Padding(
                                          padding: EdgeInsets.symmetric(
                                              vertical: screenHeight * 0.01),
                                          child: Text(
                                            "Angry",
                                            style: TextStyle(
                                              fontSize: screenWidth * 0.035,
                                              fontWeight: FontWeight.w400,
                                              color: const Color.fromARGB(
                                                  255, 140, 140, 140),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: screenWidth * 0.045,
                                        vertical: screenHeight * 0.001),
                                    child: Column(
                                      children: [
                                        Image(
                                          image: const AssetImage(
                                            "assets/images/Solid mood depressed.png",
                                          ),
                                          width: screenWidth * 0.09,
                                        ),
                                        Padding(
                                          padding: EdgeInsets.symmetric(
                                              vertical: screenHeight * 0.01),
                                          child: Text(
                                            "Sad",
                                            style: TextStyle(
                                              fontSize: screenWidth * 0.035,
                                              fontWeight: FontWeight.w400,
                                              color: const Color.fromARGB(
                                                  255, 140, 140, 140),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: screenWidth * 0.045,
                                        vertical: screenHeight * 0.03),
                                    child: Column(
                                      children: [
                                        Image(
                                          image: const AssetImage(
                                            "assets/images/Solid mood happy.png",
                                          ),
                                          width: screenWidth * 0.09,
                                        ),
                                        Padding(
                                          padding: EdgeInsets.symmetric(
                                              vertical: screenHeight * 0.01),
                                          child: Text(
                                            "Calm",
                                            style: TextStyle(
                                              fontSize: screenWidth * 0.035,
                                              fontWeight: FontWeight.w400,
                                              color: const Color.fromARGB(
                                                  255, 140, 140, 140),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Center(
                                child: Text(
                                  "Start Your test now",
                                  style: TextStyle(
                                    fontSize: screenWidth * 0.043,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.blue,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.03),
                    GestureDetector(
                      onTap: toggleExpand,
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: screenWidth * 0.05,
                            ),
                            child: Text(
                              "Your Journaling",
                              style: TextStyle(
                                fontSize: screenWidth * 0.04,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          Icon(
                            isExpandedYourJournaling
                                ? Icons.arrow_drop_up
                                : Icons.arrow_drop_down,
                          ),
                        ],
                      ),
                    ),
                    if (isExpandedYourJournaling) ...[
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: screenWidth * 0.05,
                          vertical: screenHeight * 0.01,
                        ),
                        child: Text(
                          "Text Journaling",
                          style: TextStyle(
                            fontSize: screenWidth * 0.035,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: screenWidth * 0.05,
                          vertical: screenHeight * 0.01,
                        ),
                        child: Text(
                          "Voices Journaling",
                          style: TextStyle(
                            fontSize: screenWidth * 0.035,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                    SizedBox(height: screenHeight * 0.03),
                    GestureDetector(
                      onTap: toggleExpandR,
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: screenWidth * 0.05,
                            ),
                            child: ElevatedButton(
                              onPressed: playAudio,
                              child: Text('Play Audio'),
                            )
                          ),
                          Icon(
                            isExpandedYourReports
                                ? Icons.arrow_drop_up
                                : Icons.arrow_drop_down,
                          ),
                        ],
                      ),
                    ),
                    if (isExpandedYourReports) ...[
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: screenWidth * 0.05,
                          vertical: screenHeight * 0.01,
                        ),
                        child: Text(
                          "Text Journaling",
                          style: TextStyle(
                            fontSize: screenWidth * 0.035,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: screenWidth * 0.05,
                          vertical: screenHeight * 0.01,
                        ),
                        child: Text(
                          "Voices Journaling",
                          style: TextStyle(
                            fontSize: screenWidth * 0.035,
                            fontWeight: FontWeight.w400,
                          ),
                        )
                      ),
                    ],
                  ],
                );
              },
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
              context: context,
              builder: (context) {
                return Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    ListTile(
                      leading: Icon(Icons.mic),
                      title: Text('Voice Journaling'),
                      onTap: () {
                        Navigator.pop(context);
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => JournalingVoicePage(),
                          ),
                        );
                      },
                    ),
                    ListTile(
                      leading: Icon(Icons.text_fields),
                      title: Text('Text Journaling'),
                      onTap: () {
                        Navigator.pop(context);
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => JournalingTextPage(),
                          ),
                        );
                      },
                    ),
                  ],
                );
              },
            );
          },
          child: Icon(
            Icons.add,
            color: Colors.white,
          ),
          backgroundColor: Colors.blue,
        ));
  }
}
