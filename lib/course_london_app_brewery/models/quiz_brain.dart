import 'package:flutter_toolbox/course_london_app_brewery/models/question.dart';

class QuizBrain {
  int _questionNumber = 0;

  List<Question> _questionsBank = [
    Question('You can lead a cow down stairs but not up stairs.', false,
        QuestionDifficulty.EASY),
    Question('The Earth is flat.', false, QuestionDifficulty.MEDIUM),
    Question('Approximately one quarter of human bones are in the feet.', true,
        QuestionDifficulty.HARD),
    Question('A slug\'s blood is green.', true, QuestionDifficulty.HARD)
  ];

  bool nextQuestion() {
    if (_questionNumber < (_questionsBank.length - 1)) {
      _questionNumber++;
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    _questionNumber = 0;
  }

  String getQuestionText() {
    return _questionsBank[_questionNumber].getQuestion();
  }

  bool getAnswer() {
    return _questionsBank[_questionNumber].getAnswer();
  }

  QuestionDifficulty getDifficulty() {
    return _questionsBank[_questionNumber].getDifficulty();
  }
}
