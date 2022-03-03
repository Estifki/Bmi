class CalculateBmi {
  double _bmi = 0.0;
  // CalculateBmi(this._bmi);

  String setBMI(double weight, double height) {
    _bmi = weight / ((height / 100) * (height / 100));
    return _bmi.toStringAsFixed(2);
  }

  String getWeightForm() {
    if (_bmi <= 25.5 && _bmi >= 19.0) {
      return "Normal";
    } else if (_bmi < 19.0) {
      return "Underweight";
    } else {
      return "Overweight";
    }
  }

  String getWeightinterpration() {
    if (_bmi <= 25.5 && _bmi >= 19.0) {
      return "it's best keep it up";
    } else if (_bmi < 19.0) {
      return "You need to start to eat :)";
    } else {
      return "You need to stop eating.";
    }
  }
}
