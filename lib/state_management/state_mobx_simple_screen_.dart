import 'package:flutter/material.dart';
import 'counter_mobx_simple.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

void main() => runApp(StateMobxSimpleScreen());

class StateMobxSimpleScreen extends StatefulWidget {
  @override
  _StateMobxSimpleScreenState createState() => _StateMobxSimpleScreenState();
}

class _StateMobxSimpleScreenState extends State<StateMobxSimpleScreen> {
  CounterSimple counter = CounterSimple();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MobX Simple'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Counter by click.'),
            Observer(
              builder: (_) {
                return Text(
                  '${counter.count}',
                  style: Theme.of(context).textTheme.display1,
                );
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: counter.increment,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
