import 'dart:async';

import 'package:flutter/material.dart';

class JournalingVoicePage extends StatefulWidget {
  @override
  _JournalingVoicePageState createState() => _JournalingVoicePageState();
}

class _JournalingVoicePageState extends State<JournalingVoicePage> {
  bool isPlaying = false;
  double seconds = 0.0;
  double minutes = 0.0;
  double hours = 0.0;
  Timer? timer;

  void startTimer() {
    timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        seconds++;
        if (seconds >= 60) {
          minutes++;
          seconds = 0;
        }
        if (minutes >= 60) {
          hours++;
          minutes = 0;
        }
      });
    });
  }

  void stopTimer() {
    timer?.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          'Journaling',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20.0,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.check, color: Colors.black),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              hours.toStringAsFixed(0) + ':' + minutes.toStringAsFixed(0) + ':' + seconds.toStringAsFixed(0),
              style: TextStyle(fontSize: 50 , fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            isPlaying = !isPlaying;
            if (isPlaying) {
              startTimer();
            } else {
              stopTimer();
            }
          });
        },
        child: Icon(isPlaying ? Icons.stop : Icons.play_arrow),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }
}