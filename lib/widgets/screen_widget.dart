import 'package:flutter/material.dart';

void main() {
  runApp(new ScreenWidget());
}

class ScreenWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Screen Widget',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Scaffold > AppBar'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MyPanel(name: 'MyPanel TapMe for Counter'),
              SizedBox(height: 8.0),
              MyBox('Scaffold > Body > MyBox > Hello 01 !!'),
              SizedBox(height: 8.0),
              MyBox('Scaffold > Body > MyBox > Hello 02 !!'),
              SizedBox(height: 8.0),
              MyBox('Scaffold > Body > MyBox > Hello 03 !!'),
            ]
          )
        ),
      ),
    );
  }

}

class MyBox extends StatelessWidget {
  final String name;

  const MyBox(this.name);

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(color: Colors.lightBlueAccent),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Text(name)
      ),  
   );
  }

}

class MyPanel extends StatefulWidget {
  final String name;

  const MyPanel({this.name});

  @override
  _MyPanelState createState() => _MyPanelState();
}

class _MyPanelState extends State<MyPanel> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          count++;
        });
      },
      child: MyBox('${widget.name}: $count'),
    );
  }
}