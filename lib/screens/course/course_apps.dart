import 'package:flutter/material.dart';
import 'package:flutter_toolbox/screens/clones/clone_messenger.dart';

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
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(title: const Text('App from courses')),
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
                      MaterialPageRoute(
                          builder: (context) => XylophoneScreen()),
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
              ],
            ),
          ),
          backgroundColor: Colors.teal),
    );
  }
}
