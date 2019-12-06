import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_toolbox/ideas/ideas.dart';
import 'package:flutter_toolbox/screens/bloc_screen.dart';
import 'package:flutter_toolbox/widgets/new_widget.dart';
import 'package:flutter_toolbox/widgets/screen_widget.dart';
import 'package:flutter_toolbox/widgets/search_bar.dart';

import 'my_card.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Widget _buildCard() {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        SizedBox(height: 30),
        Padding(
            padding: EdgeInsets.symmetric(horizontal: 28),
            child: Text(
              "Welcome to the\nFlutter Tools",
              style: TextStyle(
                fontSize: 30,
                height: 0.9,
                fontWeight: FontWeight.w900,
              ),
            )),
        SizedBox(height: 8.0),
        SearchBar(),
        SizedBox(height: 8.0),
        RaisedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MyCardScreen()),
            );
          },
          child: Text('My Card'),
          color: Colors.blue,
          splashColor: Colors.blue,
        ),
        SizedBox(height: 8.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            RaisedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/course');
              },
              child: Text('Course Apps'),
              color: Colors.teal,
              splashColor: Colors.greenAccent,
            ),
            RaisedButton(
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  '/clone',
                );
              },
              child: Text('Clone Apps'),
              color: Colors.red,
              splashColor: Colors.blue,
            ),
            RaisedButton(
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  '/utils',
                );
              },
              child: Text('Utils'),
              color: Colors.blue,
              splashColor: Colors.blue,
            ),
          ],
        ),
        SizedBox(height: 8.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            RaisedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => IdeasScreen()),
                );
              },
              child: Text('Ideas'),
              color: Colors.lightBlue,
              splashColor: Colors.blue,
            ),
            RaisedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BlocScreen()),
                );
              },
              child: Text('Bloc'),
              color: Colors.orange,
              splashColor: Colors.orangeAccent,
            ),
          ],
        ),
        SizedBox(height: 8.0),
        AbsorbPointer(
          absorbing: false, //true to deactivate the poiter events
          child: RaisedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => NewWidget()),
              );
            },
            child: Text('New Widget'),
            color: Colors.blueAccent,
            splashColor: Colors.blue,
          ),
        ),
        SizedBox(height: 28.0),
        Tooltip(
          message: 'Go to the Screen Widget', //Apears when long pressed
          child: Transform.rotate(
              angle: pi / 4,
              child: RaisedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ScreenWidget()),
                  );
                },
                child: Text('Screen Widget'),
                color: Colors.purpleAccent,
                splashColor: Colors.blue,
              )),
        ),
        SizedBox(height: 8.0),
      ],
    );
  }

  _search() {
    print("------ Search !! ------");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(title: Text('Home of Flutter Tools')),
        body: Center(
          child: _buildCard(),
        ),
        floatingActionButton: FloatingActionButton.extended(
          heroTag:
              "add", // Serve para usar mais de 1 floatingActionButton na tela
          label: Text('Add'),
          icon: Icon(Icons.add),
          backgroundColor: Colors.blueAccent, onPressed: () {},
        ));
  }
}
