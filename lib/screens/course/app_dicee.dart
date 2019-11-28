import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      title: 'Dicee',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
        ),
        body: AppDiceeScreen(),
      ),
    ),
  );
}

class AppDiceeScreen extends StatefulWidget {
  @override
  _AppDiceeScreenState createState() => _AppDiceeScreenState();
}

class _AppDiceeScreenState extends State<AppDiceeScreen> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  void _rollDices() {
    setState(() {
      leftDiceNumber = getRandonDiceNumber();
      rightDiceNumber = getRandonDiceNumber();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                _rollDices();
              },
              child: Image.asset('assets/images/dice$leftDiceNumber.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                _rollDices();
              },
              child: Image.asset('assets/images/dice$rightDiceNumber.png'),
            ),
          )
        ],
      ),
    );
  }
}

int getRandonDiceNumber() {
  return Random().nextInt(6) + 1;
}
