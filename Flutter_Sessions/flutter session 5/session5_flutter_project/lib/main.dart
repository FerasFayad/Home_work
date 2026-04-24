import 'package:flutter/material.dart';
import 'package:session5_flutter_project/core/themes/colors.dart';
import 'package:session5_flutter_project/features/home/ui/quize_home_screen.dart';

void main() {
  runApp(const QuizeApp());
}

class QuizeApp extends StatelessWidget {
  const QuizeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light()
          .copyWith(scaffoldBackgroundColor: ColorsManager.appColorTheme),
      home: const QuizeHomeScreen(),
    );
  }
}
