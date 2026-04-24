import 'package:flutter/material.dart';
import '../themeing/text_styles.dart';

class GenderContent extends StatelessWidget {
  final IconData icon;
  final String label;
  const GenderContent({super.key, required this.icon, required this.label});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, size: 85),
        const SizedBox(height: 10),
        Text(label, style: TextStyles.costomAppLabelTextStyle),
      ],
    );
  }
}
