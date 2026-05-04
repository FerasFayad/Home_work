import 'package:flutter/material.dart';
import '../../data/model/model.dart';

class WeatherStatus extends StatelessWidget {
  final WeatherModel weather;

  const WeatherStatus({super.key, required this.weather});

  @override
  Widget build(BuildContext context) {
    return Text(
      weather.weatherStatus,
      style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
    );
  }
}
