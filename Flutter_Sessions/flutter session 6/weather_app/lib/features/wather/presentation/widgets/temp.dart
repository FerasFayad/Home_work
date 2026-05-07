import 'package:flutter/material.dart';
import '../../data/model/model.dart';

class Temp extends StatelessWidget {
  final WeatherModel weather;

  const Temp({super.key, required this.weather});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 50),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.network(
            weather.icon,
            width: 80,
            height: 80,
          ),
          const SizedBox(width: 40),
          Text(
            weather.temp.round().toString(),
            style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          const SizedBox(width: 40),
          Column(
            children: [
              Text('maxTemp:${weather.maxTemp.round()}'),
              Text('minTemp:${weather.minTemp.round()}'),
            ],
          ),
        ],
      ),
    );
  }
}
