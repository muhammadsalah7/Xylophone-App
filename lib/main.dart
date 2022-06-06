import 'dart:ffi';
import 'package:flutter/material.dart';
import 'package:audioplayers/src/audio_cache.dart' show AudioCache;

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded buildKey({Color color, int soundNumber}) {
    return Expanded(
        child: FlatButton(
      color: color,
      onPressed: () {
        playSound(soundNumber);
      },
    ));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black45,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(
                color: Colors.redAccent,
                soundNumber: 1,
              ),
              buildKey(
                color: Colors.orangeAccent,
                soundNumber: 2,
              ),
              buildKey(
                color: Colors.yellowAccent,
                soundNumber: 3,
              ),
              buildKey(
                color: Colors.greenAccent,
                soundNumber: 4,
              ),
              buildKey(
                color: Colors.pinkAccent,
                soundNumber: 5,
              ),
              buildKey(
                color: Colors.blueAccent,
                soundNumber: 6,
              ),
              buildKey(
                color: Colors.purpleAccent,
                soundNumber: 7,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
