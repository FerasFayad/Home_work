import 'package:flutter/material.dart';
import 'package:session5_flutter_project/core/themes/colors.dart';
import 'package:session5_flutter_project/features/questions_page/data/model/question_model.dart';
import '../../../../core/themes/styles.dart';

class QuestionTile extends StatelessWidget {
  final QuestionModel question;
  final int? selectedChoiceIndex;
  final Function(int) onChoiceSelected;

  const QuestionTile({
    super.key,
    required this.question,
    required this.selectedChoiceIndex,
    required this.onChoiceSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          question.question,
          style: TextStyles.font24WhiteMedium,
        ),
        const SizedBox(height: 16),
        Expanded(
          child: ListView.separated(
            itemCount: question.choices.length,
            separatorBuilder: (_, __) => const SizedBox(height: 12),
            itemBuilder: (context, index) {
              final isSelected = selectedChoiceIndex == index;

              return Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                  side: BorderSide(
                    color: isSelected
                        ? ColorsManager.secondaryViolet
                        : Colors.transparent,
                    width: 1.5,
                  ),
                ),
                child: ListTile(
                  leading: Icon(
                    isSelected
                        ? Icons.radio_button_checked
                        : Icons.radio_button_off,
                    color: isSelected
                        ? ColorsManager.secondaryViolet
                        : Colors.grey,
                  ),
                  title: Text(
                    question.choices[index],
                    style: TextStyles.font16VioletMedium,
                  ),
                  onTap: () => onChoiceSelected(index),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
