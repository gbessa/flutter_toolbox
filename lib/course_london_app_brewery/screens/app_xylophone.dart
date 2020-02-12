//Source and credits: https://github.com/londonappbrewery

import 'package:flutter/material.dart';

void main() => runApp(XylophoneScreen());

void playSound({int soundNumber}) {
  print('Playing:$soundNumber');
}

Expanded buildKey({Color color, int soundNumber}) {
  return Expanded(
      child: FlatButton(
          color: color,
          onPressed: () {
            playSound(soundNumber: soundNumber);
          },
          child: null));
}

class XylophoneScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(color: Colors.red, soundNumber: 1),
              buildKey(color: Colors.orange, soundNumber: 2),
              buildKey(color: Colors.yellow, soundNumber: 3),
              buildKey(color: Colors.green, soundNumber: 4),
              buildKey(color: Colors.teal, soundNumber: 5),
              buildKey(color: Colors.blue, soundNumber: 6),
              buildKey(color: Colors.purple, soundNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
