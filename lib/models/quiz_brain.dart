import 'package:flutter_toolbox/models/question.dart';

class QuizBrain {
  int _questionNumber = 0;

  List<Question> _questionsBank = [
    Question('You can lead a cow down stairs but not up stairs.', false),
    Question('The Earth is flat.', false),
    Question('Approximately one quarter of human bones are in the feet.', true),
    Question('A slug\'s blood is green.', true)
  ];

  void nextQuestion() {
    if (_questionNumber < (_questionsBank.length - 1)) {
      _questionNumber++;
    }
  }

  String getQuestionText() {
    return _questionsBank[_questionNumber].getQuestion();
  }

  bool getAnswer() {
    return _questionsBank[_questionNumber].getAnswer();
  }
}
