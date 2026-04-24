import 'package:flutter/material.dart';
import 'package:session5_flutter_project/features/questions_page/data/model/question_model.dart';

class QuestionController extends ChangeNotifier {
  final PageController pageController = PageController();

  final List<QuestionModel> questions = [
    QuestionModel(
      question:
          'How would you describe your level of satisfaction with the healthcare system?',
      choices: ['Very satisfied', 'Satisfied', 'Neutral', 'Dissatisfied'],
    ),
    QuestionModel(
      question: 'How would you describe your level?',
      choices: ['Excellent', 'Good', 'Average', 'Poor'],
    ),
    QuestionModel(
      question: 'Level of satisfaction with the healthcare system?',
      choices: ['High', 'Medium', 'Low'],
    ),
  ];

  int currentIndex = 0;

  /// key = question index
  /// value = selected choice index
  Map<int, int> selectedAnswers = {};

  void selectAnswer(int questionIndex, int choiceIndex) {
    selectedAnswers[questionIndex] = choiceIndex;
    notifyListeners();
  }

  int? getSelectedAnswerIndex(int questionIndex) {
    return selectedAnswers[questionIndex];
  }

  String? getSelectedAnswerText(int questionIndex) {
    final selectedIndex = selectedAnswers[questionIndex];
    if (selectedIndex == null) return null;
    return questions[questionIndex].choices[selectedIndex];
  }

  bool isSelected(int questionIndex, int choiceIndex) {
    return selectedAnswers[questionIndex] == choiceIndex;
  }

  void nextQuestion() {
    if (currentIndex < questions.length - 1) {
      currentIndex++;
      pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
      notifyListeners();
    }
  }

  void previousQuestion() {
    if (currentIndex > 0) {
      currentIndex--;
      pageController.previousPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
      notifyListeners();
    }
  }

  void onPageChanged(int index) {
    currentIndex = index;
    notifyListeners();
  }

  bool get isLastQuestion => currentIndex == questions.length - 1;
  bool get isFirstQuestion => currentIndex == 0;

  List<Map<String, String>> getResults() {
    return List.generate(questions.length, (index) {
      return {
        'question': questions[index].question,
        'answer': getSelectedAnswerText(index) ?? 'No answer selected',
      };
    });
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }
}
