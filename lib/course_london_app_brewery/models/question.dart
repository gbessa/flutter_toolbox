class Question {
  String _question;
  bool _answer;
  QuestionDifficulty _difficulty;

  Question(this._question, this._answer, this._difficulty);

  String getQuestion() {
    return _question;
  }

  bool getAnswer() {
    return _answer;
  }

  QuestionDifficulty getDifficulty() {
    return _difficulty;
  }
}

enum QuestionDifficulty { EASY, MEDIUM, HARD }
