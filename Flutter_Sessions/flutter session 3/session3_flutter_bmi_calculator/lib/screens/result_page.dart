import 'package:bmi_calculator/themeing/colors.dart';
import 'package:flutter/material.dart';
import '../widgets/bottom_button.dart';
import '../widgets/coustm_app_theme_card.dart';

class ResultsPage extends StatelessWidget {
  final String bmiResult;
  final String resultText;
  final String interpretation;
  final Color statusColor;

  const ResultsPage(
      {super.key,
      required this.bmiResult,
      required this.resultText,
      required this.interpretation,
      required this.statusColor});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('BMI CALCULATOR'), centerTitle: true),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: const Text('Your Result',
                  style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold)),
            ),
          ),
          Expanded(
            flex: 5,
            child: CoustmAppThemeCard(
              color: MyColors.inactiveCardColor,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(resultText.toUpperCase(),
                      style: TextStyle(
                          color: statusColor,
                          fontSize: 22,
                          fontWeight: FontWeight.bold)),
                  Text(bmiResult,
                      style: const TextStyle(
                          fontSize: 100, fontWeight: FontWeight.bold)),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: Text(interpretation,
                        textAlign: TextAlign.center,
                        style: const TextStyle(fontSize: 22)),
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
              title: 'RE-CALCULATE', onTap: () => Navigator.pop(context)),
        ],
      ),
    );
  }
}
