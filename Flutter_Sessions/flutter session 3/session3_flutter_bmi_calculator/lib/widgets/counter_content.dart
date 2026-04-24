import 'package:bmi_calculator/widgets/round_icon_button.dart';
import 'package:flutter/material.dart';
import '../themeing/text_styles.dart';

class CounterContent extends StatelessWidget {
  final String label;
  final int value;
  final VoidCallback onAdd;
  final VoidCallback onRemove;
  const CounterContent(
      {super.key,
      required this.label,
      required this.value,
      required this.onAdd,
      required this.onRemove});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(label, style: TextStyles.costomAppLabelTextStyle),
        Text('$value', style: TextStyles.costomAppNumberTextStyle),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RoundIconButton(icon: Icons.remove, onPressed: onRemove),
            const SizedBox(width: 15),
            RoundIconButton(icon: Icons.add, onPressed: onAdd),
          ],
        ),
      ],
    );
  }
}
