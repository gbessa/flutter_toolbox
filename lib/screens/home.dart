import 'package:flutter/material.dart';
import 'package:flutter_toolbox/widgets/custom_container.dart';
import 'package:flutter_toolbox/widgets/new_widget.dart';
import 'package:flutter_toolbox/widgets/screen_widget.dart';
import 'package:flutter_toolbox/widgets/search_bar.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Widget _buildCard() {
    return CustomContainer(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(bottom: Radius.circular(30)),
      ),
      children: <Widget>[
        SizedBox(height: 117),
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
        SizedBox(height: 40),
        SearchBar(),
        SizedBox(height: 42),
        FloatingActionButton.extended(
          heroTag: "search",
          onPressed: search(),
          label: Text('Search'),
          icon: Icon(Icons.search),
          backgroundColor: Colors.blueAccent,
        ),
        SizedBox(height: 8.0),
        FloatingActionButton.extended(
          heroTag: "new_widget",
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => NewWidget()),
            );
          },
          label: Text('New Widget'),
          backgroundColor: Colors.blueGrey,
        ),
        SizedBox(height: 8.0),
        FloatingActionButton.extended(
          heroTag: "screen_widget",
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ScreenWidget()),
            );
          },
          label: Text('Screen Widget'),
          backgroundColor: Colors.blueGrey,
        )
      ],
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
    );
  }

  search() {}
}
