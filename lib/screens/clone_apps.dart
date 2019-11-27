import 'package:flutter/material.dart';
import 'package:flutter_toolbox/screens/clone_messenger.dart';

import 'app_dicee.dart';

void main() {
  runApp(
    CloneAppsScreen(),
  );
}

class CloneAppsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(title: const Text('Clones of Apps from web')),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
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
          ),
          backgroundColor: Colors.redAccent),
    );
  }
}
