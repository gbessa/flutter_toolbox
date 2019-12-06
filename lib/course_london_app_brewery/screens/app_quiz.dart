//Source and credits: https://github.com/londonappbrewery

import 'package:flutter/material.dart';
import 'package:flutter_toolbox/course_london_app_brewery/models/question.dart';

import 'package:flutter_toolbox/course_london_app_brewery/models/quiz_brain.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

void main() => runApp(Quizzler());

class Quizzler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          child: QuizPage(),
        ),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<Icon> scoreKeeper = [];

  QuizBrain quizBrain = QuizBrain();

  Color questionColor = Colors.white;

  void updateQuestionColor() {
    switch (quizBrain.getDifficulty()) {
      case QuestionDifficulty.EASY:
        {
          questionColor = Colors.blue;
          break;
        }

      case QuestionDifficulty.MEDIUM:
        {
          questionColor = Colors.yellow;
          break;
        }

      case QuestionDifficulty.HARD:
        {
          questionColor = Colors.red;
          break;
        }
    }
  }

  void answerQuestion(bool answer) {
    (answer == quizBrain.getAnswer())
        ? scoreKeeper.add(Icon(Icons.check, color: Colors.green))
        : scoreKeeper.add(Icon(Icons.close, color: Colors.red));
    if (quizBrain.nextQuestion() == false) {
      Alert(
        context: context,
        title: 'Finished!',
        desc: 'You\'ve reached the end of the quiz.',
      ).show();
      quizBrain.reset();
      scoreKeeper.clear();
    }
  }

  @override
  Widget build(BuildContext context) {
    updateQuestionColor();

    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                quizBrain.getQuestionText(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25.0,
                  color: questionColor,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: FlatButton(
              textColor: Colors.white,
              color: Colors.green,
              child: Text(
                'True',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
              onPressed: () {
                setState(() {
                  answerQuestion(true);
                });
              },
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: FlatButton(
              color: Colors.red,
              child: Text(
                'False',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                setState(() {
                  answerQuestion(false);
                });
              },
            ),
          ),
        ),
        Row(
          children: scoreKeeper,
        )
      ],
    );
  }
}
