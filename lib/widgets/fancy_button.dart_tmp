import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/scheduler/ticker.dart';

//FancyButton Extende o Stateless pq um botão é um elemento que não deve ser estado mesmo
class FancyButton extends StatelessWidget {
  FancyButton({@required this.onPressed});

  // A callback chamada depois do click (é recebida no contrutor)
  final GestureTapCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: () {},
      fillColor: Colors.deepOrange,
      splashColor: Colors.orange,
      shape: const StadiumBorder(),
      child: Padding(
        padding:
            const EdgeInsets.symmetric(vertical: 8.0, horizontal: 20.0),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: const <Widget>[
            RotatedBox(
              quarterTurns: 1,
              child: Icon(
                Icons.explore,
                color: Colors.amber,
              ), 
            )
            SizedBox(width: 8.0),
            PulseAnimator(
              child: Text(
                "Search",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            )
          ],
        )
      )
    );
  }
}

class PulseAnimator extends StatefulWidget {
  final Widget child;

  const PulseAnimator(Text text, {Key key, this.child}) : super(key: key);

  @override
  State createState() => _PulseAnimatorState();
}

class _PulseAnimatorState extends State<PulseAnimator>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    )..repeat();
  }

  noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}
