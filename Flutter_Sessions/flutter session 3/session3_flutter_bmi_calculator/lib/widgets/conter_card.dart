import 'package:bmi_calculator/themeing/colors.dart';
import 'package:bmi_calculator/widgets/counter_content.dart';
import 'package:bmi_calculator/widgets/coustm_app_theme_card.dart';
import 'package:flutter/material.dart';

class CounterCard extends StatelessWidget {
  final String label;
  final ValueNotifier<int> notifier;

  const CounterCard({
    super.key,
    required this.label,
    required this.notifier,
  });

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<int>(
      valueListenable: notifier,
      builder: (context, value, child) {
        return CoustmAppThemeCard(
          color: MyColors.inactiveCardColor,
          child: CounterContent(
            label: label,
            value: value,
            onAdd: () => notifier.value++,
            onRemove: () {
              if (notifier.value > 1) {
                notifier.value--;
              }
            },
          ),
        );
      },
    );
  }
}
