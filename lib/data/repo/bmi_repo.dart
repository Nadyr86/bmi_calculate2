import 'package:bmi_calculate/data/services/bmi_services.dart';

class BmiRepo {
  double calculateBmi(int weight, double height) {
    return bmiServices.calculateBmi(weight, height);
  }

  String getResult(double _bmi) {
    return bmiServices.getResult(_bmi);
  }

  String getInterpretation(double _bmi) {
    return bmiServices.getInterpretation(_bmi);
  }
}

BmiRepo bmiRepo = BmiRepo();
