import 'package:flutter/material.dart';
import 'package:session5_flutter_project/core/themes/colors.dart';
import 'package:session5_flutter_project/core/themes/styles.dart';
import 'package:session5_flutter_project/features/home/ui/widgets/home_title.dart';
import 'package:session5_flutter_project/features/questions_page/ui/question_screen.dart';

import '../../../core/themes/app_theme.dart';

class QuizeHomeScreen extends StatelessWidget {
  const QuizeHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppThemeBackground(
      child: SafeArea(
        child: Container(
          width: double.infinity,
          margin: const EdgeInsets.fromLTRB(20, 50, 20, 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HomeTitle(),
              const Spacer(),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 13, horizontal: 8),
                child: MaterialButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  height: 47,
                  minWidth: double.infinity,
                  color: ColorsManager.appMainWhite,
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const QuestionScreen()));
                  },
                  child: const Text(
                    'Start Quiz',
                    style: TextStyles.font18burbleMedium,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
