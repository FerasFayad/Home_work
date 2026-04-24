import 'package:flutter/material.dart';

class TestClass extends StatelessWidget {
  const TestClass({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Expanded(
            child: Container(
          color: Colors.red,
        ))
      ],
    );
  }
}
