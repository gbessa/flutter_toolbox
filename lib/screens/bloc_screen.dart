import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';
import 'package:flutter_toolbox/increment/increment_controller.dart';
import 'package:flutter_toolbox/increment/increment_widget.dart';

void main() => runApp(BlocScreen());

class BlocScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      child: IncrementWidget(),
      blocs: [
        Bloc((i) => IncrementController()),
      ],
    );
  }
}
