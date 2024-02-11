import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_sound/flutter_sound.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:path_provider/path_provider.dart';

class JournalingVoicePage extends StatefulWidget {
  @override
  _JournalingVoicePageState createState() => _JournalingVoicePageState();
}

class _JournalingVoicePageState extends State<JournalingVoicePage> {
  final recorder = FlutterSoundRecorder();
  bool isRecorderReady = false;

  @override
  void initState() {
    super.initState();

    initRecorder();
  }

  @override
  void dispose() {
    recorder.closeRecorder();

    super.dispose();
  }

  Future initRecorder() async {
    final status = await Permission.microphone.request();

    if (status != PermissionStatus.granted) {
      throw RecordingPermissionException('Microphone permission not granted');
    }

    await recorder.openRecorder();

    isRecorderReady = true;

    recorder.setSubscriptionDuration(
      const Duration(milliseconds: 500),
    );
  }

  Future record() async {
    if (!isRecorderReady) {
      return;
    }

    // Get the directory where the app can store files.
    final Directory appDocDir = await getApplicationDocumentsDirectory();

    // Create a file path under the app directory.
    final String filePath = '${appDocDir.path}/audio.aac';
    await recorder.startRecorder(toFile: filePath);

    // await recorder.startRecorder(toFile: 'audio');
  }

  Future stop() async {
    if (!isRecorderReady) {
      return;
    }

    final bath = await recorder.stopRecorder();
    if (bath != null)
    {
      final audioFile = File(bath);
      print('audio file: $audioFile');

      await requestStoragePermission();

      // Get the directory where the app can store files.
      final Directory? appDocDir = await getExternalStorageDirectory();

      // Create a file path under the app directory.
      final String filePath = '${appDocDir?.path}/audio.aac';

      // Copy the audio file to the new path
      await audioFile.copy(filePath);

      print('audio file copied to: $filePath');
    }
  }

  Future<void> requestStoragePermission() async {
    var status = await Permission.storage.status;
    if (!status.isGranted) {
      await Permission.storage.request();
    }
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
            StreamBuilder<RecordingDisposition>(
                stream: recorder.onProgress,
                builder: (context, snapshot) {
                  final duration = snapshot.hasData
                      && snapshot.data != null
                      ? snapshot.data!.duration
                      : Duration.zero;

                  String twoDigits(int n) => n.toString().padLeft(2, '0');
                  final twoDigitMinutes =
                      twoDigits(duration.inMinutes.remainder(60));
                  final twoDigitSeconds =
                      twoDigits(duration.inSeconds.remainder(60));

                  return Text(
                    '$twoDigitMinutes:$twoDigitSeconds',
                    style: TextStyle(fontSize: 40.0),
                  );
                }),
            const SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () async {
                if (recorder.isRecording) {
                  await stop();
                } else {
                  await record();
                }
                setState(() {});
              },
              child: Icon(recorder.isRecording ? Icons.stop : Icons.mic,
                  size: 80.0),
            ),
          ],
        ),
      ),
    );
  }
}
