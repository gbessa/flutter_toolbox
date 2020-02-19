import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(ProviderScreen());

class ProviderScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      builder: (context) => Data(), //Com provider versão 3 (já muda na 4)
      child: MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: MyText(),
          ),
          body: Level1(),
        ),
      ),
    );
  }
}

class Level1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Level2(),
    );
  }
}

class Level2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        MyTextField(),
        Level3(),
      ],
    );
  }
}

class Level3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Level 3 => ${Provider.of<Data>(context).data}'),
    );
  }
}

class MyText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(Provider.of<Data>(context, listen: false).data);
  }
}

class MyTextField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: (newValue) {
        print(newValue);
        Provider.of<Data>(context).changeString(newValue);
      },
      textAlign: TextAlign.center,
    );
  }
}

class Data extends ChangeNotifier {
  String data = 'Data to provide 01';

  void changeString(String newString) {
    data = newString;
    notifyListeners();
  }
}
