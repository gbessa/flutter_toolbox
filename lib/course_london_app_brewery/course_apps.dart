import 'package:flutter/material.dart';
import 'package:flutter_toolbox/course_london_app_brewery/screens/app_CHAT.dart';
import 'package:flutter_toolbox/course_london_app_brewery/screens/app_TODOEY.dart';
import 'package:flutter_toolbox/course_london_app_brewery/screens/app_bitcoin.dart';
import 'package:flutter_toolbox/course_london_app_brewery/screens/app_clima.dart';

import 'screens/app_destini.dart';
import 'screens/app_dicee.dart';
import 'screens/app_quiz.dart';
import 'screens/app_xylophone.dart';
import 'screens/app_BMI_calculator.dart';

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
            RaisedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ClimaApp()),
                );
              },
              child: Text(
                'CLIMA',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
              color: Colors.lightBlueAccent,
              splashColor: Colors.blueGrey,
            ),
            RaisedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BitcoinApp()),
                );
              },
              child: Text(
                'Bitcoin Ticker',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
              color: Colors.green,
              splashColor: Colors.greenAccent,
            ),
            RaisedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FlashChat()),
                );
              },
              child: Text(
                'Chat',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
              color: Colors.grey,
              splashColor: Colors.black,
            ),
            RaisedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Todoey()),
                );
              },
              child: Text(
                'TODOey',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
              color: Colors.orange,
              splashColor: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}
