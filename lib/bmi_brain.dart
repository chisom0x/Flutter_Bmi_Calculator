import 'dart:math';

class Bmibrain {
  final int height;
  final int weight;
  Bmibrain({required this.height, required this.weight});

  late double _bmi;

  String calculatebmi() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return ' Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

   String getinterpertation() {
    if (_bmi >= 25) {
      return ' Your body weight is higher than normal. Try to excerise more! ';
    } else if (_bmi > 18.5) {
      return 'You have a normal body weight. Keep up the good Work!';
    } else {
      return 'Your body weight is lower than normal. You can eat a bit more!';
    }
  }

  
}
