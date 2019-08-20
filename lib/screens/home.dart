import 'package:flutter/material.dart';
import 'package:flutter_toolbox/widgets/new_widget.dart';
import 'package:flutter_toolbox/widgets/screen_widget.dart';
import 'package:flutter_toolbox/widgets/search_bar.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Widget _buildCard() {
    return Center(
      child: Column(
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
            onPressed: search(),
            child: Text('Search'),
            color: Colors.blueGrey,
            splashColor: Colors.blue,
          ),
          SizedBox(height: 8.0),
          RaisedButton(
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
          RaisedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ScreenWidget()),
              );
            },
            child: Text('Screed Widget'),
            color: Colors.blueAccent,
            splashColor: Colors.blue,
          ),
          SizedBox(height: 8.0),
        ],
      )
    );
  }

  _search(){print("------ Search !! ------");}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home of Flutter Tools')),
      body: Center(
        child: _buildCard(),
      ),
      floatingActionButton : FloatingActionButton.extended(
          heroTag: "add", // Serve para usar mais de 1 floatingActionButton na tela
          label: Text('Add'),
          icon: Icon(Icons.add),
          backgroundColor: Colors.blueAccent, onPressed: () {},
        )
    );
  }

  search() {}
}
