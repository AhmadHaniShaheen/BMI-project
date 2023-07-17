import 'dart:math';

class BMIBrain {
  final double weight;
  final double height;
  late double result;

  BMIBrain(this.weight, this.height);

  double calculatBMI() {
    result = weight / pow(height / 100, 2);
    return result;
  }

  String checkBMI() {
    if (result > 25.4) {
      return 'Overweight';
    } else if (result >= 18) {
      return 'Normal range';
    } else {
      return 'Underweight';
    }
  }
}
