import 'package:flutter/material.dart';
import 'package:flutter_toolbox/screens/clones/clone_messenger.dart';
import 'package:flutter_toolbox/screens/course/app_BMI_calculator.dart';

import 'app_destini.dart';
import 'app_dicee.dart';
import 'app_quiz.dart';
import 'app_xylophone.dart';

void main() {
  runApp(
    CourseAppsScreen(),
  );
}

class CourseAppsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('App from courses')),
      backgroundColor: Colors.greenAccent,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            RaisedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AppDiceeScreen()),
                );
              },
              child: Text('Dicee'),
              color: Colors.red,
              splashColor: Colors.redAccent,
            ),
            RaisedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => XylophoneScreen()),
                );
              },
              child: Text('Xylophone'),
              color: Colors.blue,
              splashColor: Colors.blueGrey,
            ),
            RaisedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Quizzler()),
                );
              },
              child: Text('Quiz'),
              color: Colors.yellow,
              splashColor: Colors.blueGrey,
            ),
            RaisedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Destini()),
                );
              },
              child: Text(
                'Destini',
                style: TextStyle(
                    color: Colors.white70, fontWeight: FontWeight.bold),
              ),
              color: Colors.black,
              splashColor: Colors.blueGrey,
            ),
            RaisedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BMICalculator()),
                );
              },
              child: Text(
                'BMI Calculator',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
              color: Colors.purple,
              splashColor: Colors.blueGrey,
            ),
          ],
        ),
      ),
    );
  }
}
