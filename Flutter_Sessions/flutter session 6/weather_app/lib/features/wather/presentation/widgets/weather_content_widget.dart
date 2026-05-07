import 'package:flutter/material.dart';
import '../../../../core/theme/app_theme.dart'; // تأكد أن AppGradients موجود هنا
import '../../data/model/model.dart';
import 'city_date.dart';
import 'temp.dart';
import 'weather_status.dart';

class WeatherContentWidget extends StatelessWidget {
  final WeatherModel weather;
  final VoidCallback onSearchTap;
  final VoidCallback onBackTap;

  const WeatherContentWidget({
    super.key,
    required this.weather,
    required this.onSearchTap,
    required this.onBackTap,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppGradients.getScreenGradient(weather).colors.first,
        elevation: 4,
        centerTitle: true,
        leading: IconButton(
          onPressed: onBackTap,
          icon: const Icon(Icons.arrow_back, color: Colors.black),
        ),
        title: const Text(
          'Weather App',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            onPressed: onSearchTap,
            icon: const Icon(Icons.search, color: Colors.black),
          ),
        ],
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: AppGradients.getScreenGradient(weather),
        ),
        child: SafeArea(
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                CityAndDAte(weather: weather),
                Temp(weather: weather),
                WeatherStatus(weather: weather),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
