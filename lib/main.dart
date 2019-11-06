import 'package:flutter/material.dart';
//mport 'package:audioplayers/audioplayers.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

void SoundPlayFunction(int SoundNo) {
  final play = new AudioCache();
  play.play('note$SoundNo.wav');
}

Expanded KeyPointFunction({Color color, int soundNo}) {
  return Expanded(
    child: FlatButton(
      color: color,
      onPressed: () {
        SoundPlayFunction(soundNo);
      },
    ),
  );
}

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: Scaffold(
        backgroundColor: Colors.black,

        appBar: AppBar(
          title: Center(
            child: Text('Music App'),
          ),
        ),
        body: SafeArea(
          minimum: const EdgeInsets.only(top: 12),
          child: Column(

            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              KeyPointFunction(color: Colors.green, soundNo: 1),
              KeyPointFunction(color: Colors.teal, soundNo: 2),
              KeyPointFunction(color: Colors.redAccent, soundNo: 3),
              KeyPointFunction(color: Colors.yellowAccent, soundNo: 4),
              KeyPointFunction(color: Colors.cyan, soundNo: 5),
              KeyPointFunction(color: Colors.greenAccent, soundNo: 6),
              KeyPointFunction(color: Colors.orangeAccent, soundNo: 7),
            ],
          ),
        ),
      ),
    );
  }
}
