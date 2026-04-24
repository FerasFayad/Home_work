// import 'package:flutter/material.dart';
// import 'package:session5_flutter_project/features/questions_page/data/model/question_model.dart';
// import 'package:session5_flutter_project/features/questions_page/ui/widgets/question_tile.dart';

// class QuestionsBulider extends StatefulWidget {
//   final List<QuestionModel> questions;
//   const QuestionsBulider({super.key, required this.questions});

//   @override
//   State<QuestionsBulider> createState() => _QuestionsBuliderState();
// }

// class _QuestionsBuliderState extends State<QuestionsBulider> {
//   @override
//   Widget build(BuildContext context) {
//     return ListView.builder(
//         itemCount: widget.questions.length,
//         itemBuilder: (BuildContext context, int index) {
//           return Expanded(
//               child: QuestionTile(question: widget.questions[index]));
//         });
//   }
// }
