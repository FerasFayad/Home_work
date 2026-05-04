import 'package:flutter/material.dart';
import 'package:wather_app/features/wather/presentation/weather_screen/weather_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Wahter'),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const WeatherScreen()));
              },
              icon: const Icon(Icons.search))
        ],
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'there is no weather 😞 start searching now 🔍',
                style: TextStyle(fontSize: 35, color: Colors.black87),
              )
            ],
          ),
        ),
      ),
    );
  }
}
