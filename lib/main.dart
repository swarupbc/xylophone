import 'package:flutter/material.dart';
// import 'package:audioplayers/audioplayers.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playMusic(int musicNumber) {
    final player = AudioCache();
    player.play('note$musicNumber.wav');
  }

  Expanded musicButton({Color color, int numb}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playMusic(numb);
        },
        child: Text(''),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              musicButton(color: Colors.blue, numb: 1),
              musicButton(color: Colors.red, numb: 2),
              musicButton(color: Colors.yellow, numb: 3),
              musicButton(color: Colors.purple, numb: 4),
              musicButton(color: Colors.green[900], numb: 5),
              musicButton(color: Colors.orange, numb: 6),
              musicButton(color: Colors.grey[700], numb: 7),
            ],
          ),
        ),
      ),
    );
  }
}
