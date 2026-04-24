import 'package:flutter/material.dart';
import 'package:session5_flutter_project/core/themes/styles.dart';

class NumberOfQuesiton extends StatelessWidget {
  final int currentQuestion;
  final int totalQuestions;

  const NumberOfQuesiton({
    super.key,
    required this.currentQuestion,
    required this.totalQuestions,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: const Color(0xff8e84ff),
      ),
      width: 130,
      height: 34,
      child: Padding(
        padding: const EdgeInsets.all(6),
        child: Row(
          children: [
            const Icon(
              Icons.access_alarm_rounded,
              color: Colors.white,
              size: 18,
            ),
            const SizedBox(width: 3),
            Text(
              'Question $currentQuestion/$totalQuestions',
              style: TextStyles.font12WhiteRegular,
            ),
          ],
        ),
      ),
    );
  }
}
