import 'package:flutter/material.dart';
import '../moduls/models.dart';
import '../themeing/colors.dart';
import '../ِapp_business_logic/bmi_controller.dart';
import 'coustm_app_theme_card.dart';
import 'gnder_content.dart';

class SelectorGenderCard extends StatelessWidget {
  final BMIController controller;
  const SelectorGenderCard({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: ValueListenableBuilder<Gender?>(
            valueListenable: controller.gender,
            builder: (context, selectedGender, child) {
              return CoustmAppThemeCard(
                onPress: () => controller.gender.value = Gender.male,
                color: selectedGender == Gender.male
                    ? MyColors.activeCardColor
                    : MyColors.inactiveCardColor,
                child: const GenderContent(
                  icon: Icons.male,
                  label: 'MALE',
                ),
              );
            },
          ),
        ),
        Expanded(
          child: ValueListenableBuilder<Gender?>(
            valueListenable: controller.gender,
            builder: (context, selectedGender, child) {
              return CoustmAppThemeCard(
                onPress: () => controller.gender.value = Gender.female,
                color: selectedGender == Gender.female
                    ? MyColors.activeCardColor
                    : MyColors.inactiveCardColor,
                child: const GenderContent(
                  icon: Icons.female,
                  label: 'FEMALE',
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
