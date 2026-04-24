// import 'package:flutter/material.dart';
// import 'package:session5_flutter_project/features/questions_page/ui/widgets/question_bulider.dart';
// import '../../data/model/question_model.dart';

// class QuestionsSectionBulider extends StatefulWidget {
//   const QuestionsSectionBulider({super.key});

//   @override
//   State<QuestionsSectionBulider> createState() => _QuestionsSectionBulider();
// }

// class _QuestionsSectionBulider extends State<QuestionsSectionBulider> {
//   List<QuestionModel> questions = [
//     QuestionModel(
//         question:
//             'How would you describe your level of satisfaction with the healthcare system?',
//         choice: Choice(choiceOfQuestion: ['feras , feras , feras'])),
//     QuestionModel(
//         question: 'How would you describe your level?',
//         choice: Choice(choiceOfQuestion: ['feras , feras , feras'])),
//     QuestionModel(
//         question: 'level of satisfaction with the healthcare system?',
//         choice: Choice(choiceOfQuestion: ['feras , feras , feras']))
//   ];

//   // QuestionsBulider questionsBulider = QuestionsBulider();
//   @override
//   Widget build(BuildContext context) {
//     return PageView.builder(
//       itemCount: questions.length,
//       itemBuilder: (BuildContext context, int index) {
//         return QuestionsBulider(
//           questions: questions,
//         );
//       },
//     );
//   }
// }
