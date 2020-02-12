import 'package:flutter/material.dart';

void main() => runApp(BlancScreen());

class BlancScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Text('BLANC'),
      ),
    );
  }
}
