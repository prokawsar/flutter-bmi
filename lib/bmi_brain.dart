import 'dart:math';

class BMIBrain {
  BMIBrain(this.weight, this.height);

  final int weight;
  final int height;

  double _bmi = 0.0;

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

  String getAdvice() {
    if (_bmi >= 25) {
      return 'You have a higher than normal body weight. Be on diet';
    } else if (_bmi > 18.5) {
      return 'You have normal body weight. Keep it up';
    } else {
      return 'You have underweight, eat a lot';
    }
  }
}
