import 'package:flutter/material.dart';

void main() => runApp(SovinaScreen());

class SovinaScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Sovina'),
      ),
      body: SafeArea(
        child: Text('Sovina'),
      ),
    );
  }
}
