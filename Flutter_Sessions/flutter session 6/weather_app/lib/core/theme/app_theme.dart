import 'package:flutter/material.dart';
import '../../features/wather/data/model/model.dart';

class AppGradients {
  const AppGradients._();

  static LinearGradient getScreenGradient(WeatherModel weather) {
    if (weather.isThemeLightOrDark == 1) {
      return const LinearGradient(
        colors: [
          Colors.orange,
          Color(0xFFFFCC80),
        ],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
      );
    } else {
      return const LinearGradient(
        colors: [
          Color(0xFF607D8B),
          Color(0xFFCFD8DC),
        ],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
      );
    }
  }
}
