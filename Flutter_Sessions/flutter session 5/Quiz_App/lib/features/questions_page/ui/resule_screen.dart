import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  final List<Map<String, String>> results;

  const ResultScreen({
    super.key,
    required this.results,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Results')),
      body: ListView.builder(
        itemCount: results.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(results[index]['question']!),
            subtitle: Text(results[index]['answer']!),
          );
        },
      ),
    );
  }
}
