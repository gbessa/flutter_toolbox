import 'package:flutter/material.dart';
import 'package:flutter_toolbox/screens/clone_messenger.dart';

import 'app_dicee.dart';

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
          body: Column(
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
                        builder: (context) => CloneMessengerScreen()),
                  );
                },
                child: Text('Messenger'),
                color: Colors.blue,
                splashColor: Colors.redAccent,
              ),
            ],
          ),
          backgroundColor: Colors.teal),
    );
  }
}
