import 'package:flutter/material.dart';

class HandleCalculator with ChangeNotifier {
  String input = '';
  String output = '';
  double a = 0, b = 0;
  double result = 0;
  String ope = '';
  HandleCalculator();
  void inputNumberTap({required int n}) {
    input += n.toString();
    output += n.toString();
    notifyListeners();
  }

  void operatorTap(String operator) {
    output += operator;
    ope = operator;
    a = double.parse(input);
    input = '';
    notifyListeners();
  }

  void cancelTap() {
    output = '';
    input = '';
    notifyListeners();
  }

  void calc() {
    b = double.parse(input);
    if (ope == '+') {
      result = a + b;
    }
    if (ope == '-') {
      result = a - b;
    }
    if (ope == '*') {
      result = a * b;
    }
    if (ope == '/') {
      result = a / b;
    }
    output = result.toString();
    notifyListeners();
  }
}
