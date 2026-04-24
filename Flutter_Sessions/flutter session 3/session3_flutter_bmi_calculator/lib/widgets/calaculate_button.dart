import 'package:flutter/material.dart';
import '../screens/result_page.dart';
import '../ِapp_business_logic/bmi_controller.dart';
import '../ِapp_business_logic/calculator_brain.dart';
import 'bottom_button.dart';

class CalaculateButton extends StatelessWidget {
  final BMIController controller;

  const CalaculateButton({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return BottomButton(
      title: 'CALCULATE',
      onTap: () {
        if (controller.gender.value == null) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Please select your gender first!'),
            ),
          );
          return;
        }

        final calc = CalculatorBrain(
          selectedGender: controller.gender.value!,
          height: controller.height.value,
          weight: controller.weight.value,
        );

        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ResultsPage(
              bmiResult: calc.calculateBMI(),
              resultText: calc.getResult(),
              interpretation: calc.getInterpretation(),
              statusColor: calc.getTextColor(),
            ),
          ),
        );
      },
    );
  }
}
