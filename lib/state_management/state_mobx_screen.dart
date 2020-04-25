import 'package:flutter/material.dart';
import 'counter_mobx.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

void main() => runApp(StateMobxScreen());

class StateMobxScreen extends StatefulWidget {
  @override
  _StateMobxScreenState createState() => _StateMobxScreenState();
}

class _StateMobxScreenState extends State<StateMobxScreen> {
  Counter counter = Counter();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mobx'),
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
