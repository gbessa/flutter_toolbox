import 'dart:core';
import 'dart:math';

class CalculatorBrain {
  final int height;
  final int weight;
  double _bmi;

  CalculatorBrain({this.height, this.weight});

  final interpretations = {
    'Overweight': 'You should stop eating right now.',
    'Normal': 'Congratulations.',
    'Underweight': 'You look too weak. I think you should eat more.'
  };

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    return interpretations[getResult()];
  }
}
