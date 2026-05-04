import 'package:flutter/material.dart';
import '../../model/model.dart';

class CityAndDAte extends StatelessWidget {
  final WeatherModel weather;

  const CityAndDAte({super.key, required this.weather});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            weather.cityName,
            style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          Text(
            'updated at: ${weather.lastUpdated.split(" ").last}',
            style: const TextStyle(fontSize: 22),
          ),
        ],
      ),
    );
  }
}
