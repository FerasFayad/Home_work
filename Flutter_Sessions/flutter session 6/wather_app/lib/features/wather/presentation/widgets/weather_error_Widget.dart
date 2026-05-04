import 'package:flutter/material.dart';

class WeatherErrorWidget extends StatelessWidget {
  final VoidCallback onSearchTap;
  final VoidCallback onBackTap;

  const WeatherErrorWidget({
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
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Text(
            'Failed to load weather data',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18),
          ),
        ),
      ),
    );
  }
}
