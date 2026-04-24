import 'package:flutter/material.dart';
import '../widgets/calaculate_button.dart';
import '../widgets/conter_card.dart';
import '../widgets/hight_slider.dart';
import '../widgets/selecteor_gender_card.dart';
import '../ِapp_business_logic/bmi_controller.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final BMIController controller = BMIController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
              child: SelectorGenderCard(
            controller: controller,
          )),
          HightSlider(heightNotifier: controller.height),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: CounterCard(
                    label: 'WEIGHT',
                    notifier: controller.weight,
                  ),
                ),
                Expanded(
                  child: CounterCard(
                    label: 'AGE',
                    notifier: controller.age,
                  ),
                ),
              ],
            ),
          ),
          CalaculateButton(controller: controller),
        ],
      ),
    );
  }
}
