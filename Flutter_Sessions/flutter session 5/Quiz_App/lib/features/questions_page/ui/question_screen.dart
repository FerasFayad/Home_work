import 'package:flutter/material.dart';
import 'package:session5_flutter_project/features/questions_page/logic/question_controller.dart';
import 'package:session5_flutter_project/features/questions_page/ui/resule_screen.dart';
import 'package:session5_flutter_project/features/questions_page/ui/widgets/button_back.dart';
import 'package:session5_flutter_project/features/questions_page/ui/widgets/button_forward.dart';
import 'package:session5_flutter_project/features/questions_page/ui/widgets/number_of_question.dart';
import 'package:session5_flutter_project/features/questions_page/ui/widgets/question_tile.dart';
import '../../../core/themes/app_theme.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  late final QuestionController controller;

  @override
  void initState() {
    super.initState();
    controller = QuestionController();
    controller.addListener(_refresh);
  }

  void _refresh() {
    setState(() {});
  }

  @override
  void dispose() {
    controller.removeListener(_refresh);
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AppThemeBackground(
      child: SafeArea(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 74),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              NumberOfQuesiton(
                currentQuestion: controller.currentIndex + 1,
                totalQuestions: controller.questions.length,
              ),
              const SizedBox(height: 8),
              Expanded(
                child: PageView.builder(
                  controller: controller.pageController,
                  onPageChanged: controller.onPageChanged,
                  itemCount: controller.questions.length,
                  itemBuilder: (context, index) {
                    return QuestionTile(
                      question: controller.questions[index],
                      selectedChoiceIndex:
                          controller.getSelectedAnswerIndex(index),
                      onChoiceSelected: (choiceIndex) {
                        controller.selectAnswer(index, choiceIndex);
                      },
                    );
                  },
                ),
              ),
              Row(
                children: [
                  ButtonBack(
                    onTap: controller.isFirstQuestion
                        ? null
                        : controller.previousQuestion,
                  ),
                  const Spacer(),
                  ButtonForward(
                    onTap: () {
                      if (controller.isLastQuestion) {
                        final results = controller.getResults();

                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => ResultScreen(
                              results: results,
                            ),
                          ),
                        );
                      } else {
                        controller.nextQuestion();
                      }
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
