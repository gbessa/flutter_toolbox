import 'package:flutter/material.dart';
import 'package:flutter_toolbox/state_management/bloc_screen.dart';
import 'package:flutter_toolbox/state_management/provider_screen.dart';
import 'package:flutter_toolbox/state_management/state_mobx_screen.dart';
import 'package:flutter_toolbox/state_management/state_mobx_simple_screen_.dart';

void main() {
  runApp(
    StateManagementScreen(),
  );
}

class StateManagementScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('State Management')),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(top: 20.0),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('UDEMY (Angela)',
                      style: TextStyle(color: Colors.white, fontSize: 20.0)),
                  RaisedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => BlocScreen()),
                      );
                    },
                    child: Text('Bloc'),
                    color: Colors.redAccent,
                    splashColor: Colors.red,
                  ),
                  RaisedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ProviderScreen()),
                      );
                    },
                    child: Text('Provider'),
                    color: Colors.orangeAccent,
                    splashColor: Colors.orange,
                  ),
                  RaisedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => StateMobxScreen()),
                      );
                    },
                    child: Text('MobX'),
                    color: Colors.blueAccent,
                    splashColor: Colors.blue,
                  ),
                  RaisedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => StateMobxSimpleScreen()),
                      );
                    },
                    child: Text('MobX Simple'),
                    color: Colors.lightBlue,
                    splashColor: Colors.blue,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
