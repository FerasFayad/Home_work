import 'package:flutter/material.dart';

class NoWeatherWidget extends StatelessWidget {
  final VoidCallback onSearchTap;

  const NoWeatherWidget({
    super.key,
    required this.onSearchTap,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Weather'),
        actions: [
          IconButton(
            onPressed: onSearchTap,
            icon: const Icon(Icons.search),
          ),
        ],
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Center(
          child: Text(
            'There is no weather 😞\nStart searching now 🔍',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 35,
              color: Colors.black87,
            ),
          ),
        ),
      ),
    );
  }
}
