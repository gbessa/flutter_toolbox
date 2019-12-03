import 'package:flutter/material.dart';

void main() {
  runApp(new NewWidget());
}

class NewWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Scaffold > AppBar'),
      ),
      body: Center(
        child: Text('Scaffold > Body'),
      ),
    );
  }
}
