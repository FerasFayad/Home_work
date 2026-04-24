import 'package:flutter/material.dart';
import 'package:session3_flutter_project/widgets/cardcounter.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFF0A0E21),
        appBar: AppBar(
          centerTitle: false,
          title: const Text(
            'BMI CALCULATOR',
            style: TextStyle(
                fontSize: 22, color: Colors.white, fontWeight: FontWeight.w900),
          ),
          backgroundColor: const Color(0xFF0A0E21),
        ),
        body: const BmiCalculator());
  }
}

class BmiCalculator extends StatelessWidget {
  const BmiCalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Row(
          children: [
            Expanded(
                child: CardCounter(
              cardName: 'WEIGHT',
              cardValue: "60",
            )),
            SizedBox(
              width: 10,
            ),
            Expanded(
                child: CardCounter(
              cardName: 'AGE',
              cardValue: "29",
            )),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          color: const Color(0xFFEB1555),
          width: double.infinity,
          height: 75,
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFEB1555)),
              onPressed: () {},
              child: const Text(
                'CALCULATE',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.bold),
              )),
        )
      ],
    );
  }
}
