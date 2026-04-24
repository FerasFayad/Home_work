import 'package:flutter/material.dart';

class CoustmAppThemeCard extends StatelessWidget {
  final Widget? child;
  final Color color;
  final VoidCallback? onPress;

  const CoustmAppThemeCard(
      {super.key, this.child, required this.color, this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        margin: const EdgeInsets.all(12),
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(10)),
        child: child,
      ),
    );
  }
}
