import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';
import 'package:flutter_toolbox/increment/increment_controller.dart';

class IncrementWidget extends StatefulWidget {
  @override
  _IncrementWidgetState createState() => _IncrementWidgetState();
}

class _IncrementWidgetState extends State<IncrementWidget> {
  @override
  Widget build(BuildContext context) {
    print('Contruindo o widget');
    final IncrementController bloc =
        BlocProvider.getBloc<IncrementController>();

    return Scaffold(
      appBar: AppBar(
        title: Text('Bloc Pattern'),
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.add,
                color: Colors.white,
              ),
              onPressed: () {
                bloc.increment();
              })
        ],
      ),
      body: Center(
        child: StreamBuilder(
            stream: bloc.outCounter,
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              return Text('Tocou no botão ${snapshot.data} vezes.');
            }),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          bloc.increment();
        },
        child: Icon(Icons.access_alarm),
      ),
    );
  }
}
