import 'package:flutter/material.dart';
import '../moduls/models.dart';

class BMIController {
  final ValueNotifier<Gender?> gender = ValueNotifier(null);
  final ValueNotifier<int> height = ValueNotifier(174);
  final ValueNotifier<int> weight = ValueNotifier(60);
  final ValueNotifier<int> age = ValueNotifier(29);

  void dispose() {
    gender.dispose();
    height.dispose();
    weight.dispose();
    age.dispose();
  }
}
