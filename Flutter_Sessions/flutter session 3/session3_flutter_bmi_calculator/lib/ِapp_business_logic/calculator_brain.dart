import 'package:flutter/material.dart';
import 'dart:math';
import '../moduls/models.dart';

class CalculatorBrain {
  final Gender selectedGender;
  final int height;
  final int weight;
  late double _bmi;

  CalculatorBrain(
      {required this.selectedGender,
      required this.height,
      required this.weight}) {
    _bmi = weight / pow(height / 100, 2);
  }

  String calculateBMI() => _bmi.toStringAsFixed(1);

  String getResult() {
    if (_bmi >= 25) return 'Overweight';
    if (_bmi > 18.5) return 'Normal';
    return 'Underweight';
  }

  String getInterpretation() {
    if (selectedGender == Gender.male) {
      if (_bmi >= 25) {
        return 'You have a higher than normal body weight. Try to exercise more.';
      }
      if (_bmi > 18.5) return 'You have a normal body weight. Good job!';
      return 'You have a lower than normal body weight. You can eat a bit more.';
    } else {
      if (_bmi >= 25) {
        return 'Your weight is above the average. Focus on balanced nutrition and cardio.';
      }
      if (_bmi > 18.5) {
        return 'Great! You are in the ideal range for a healthy female body.';
      }
      return 'Your weight is below the average. Ensure you get enough essential nutrients.';
    }
  }

  Color getTextColor() => _bmi >= 25
      ? Colors.redAccent
      : (_bmi > 18.5 ? const Color(0xFF24D876) : Colors.orangeAccent);
}
