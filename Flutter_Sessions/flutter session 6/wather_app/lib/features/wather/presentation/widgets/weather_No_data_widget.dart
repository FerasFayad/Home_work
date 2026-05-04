import 'package:flutter/material.dart';

class WeatherNoDataWidget extends StatelessWidget {
  final VoidCallback onSearchTap;
  final VoidCallback onBackTap;

  const WeatherNoDataWidget({
    super.key,
    required this.onSearchTap,
    required this.onBackTap,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Weather App'),
        leading: IconButton(
          onPressed: onBackTap,
          icon: const Icon(Icons.arrow_back),
        ),
        actions: [
          IconButton(
            onPressed: onSearchTap,
            icon: const Icon(Icons.search),
          ),
        ],
      ),
      body: const Center(
        child: Text(
          'No weather data found',
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
