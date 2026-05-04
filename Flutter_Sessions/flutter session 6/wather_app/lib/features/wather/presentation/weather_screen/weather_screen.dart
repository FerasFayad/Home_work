import 'package:flutter/material.dart';
import '../../data/model/model.dart';
import '../../logic/weather_logic.dart';
import '../widgets/no_weather_widget.dart';
import '../widgets/weather_result_builder.dart';
import '../widgets/weather_search_delegate.dart';

class WeatherScreen extends StatefulWidget {
  const WeatherScreen({super.key});

  @override
  State<WeatherScreen> createState() => _WeatherScreenState();
}

class _WeatherScreenState extends State<WeatherScreen> {
  late final WeatherLogic weatherLogic;

  @override
  void initState() {
    super.initState();
    weatherLogic = WeatherLogic();
  }

  Future<void> searchCity() async {
    final cityName = await showSearch<String?>(
      context: context,
      delegate: WeatherSearchDelegate(),
    );

    if (cityName == null || cityName.trim().isEmpty) return;

    setState(() {
      weatherLogic.updateWeatherCity(cityName);
    });
  }

  void clearWeather() {
    setState(() {
      weatherLogic.clearWeather();
    });
  }

  @override
  Widget build(BuildContext context) {
    if (!weatherLogic.hasWeatherRequest) {
      return NoWeatherWidget(
        onSearchTap: searchCity,
      );
    }

    return FutureBuilder<WeatherModel>(
      future: weatherLogic.weatherFuture,
      builder: (context, snapshot) {
        return WeatherResultBuilder(
          snapshot: snapshot,
          onSearchTap: searchCity,
          onBackTap: clearWeather,
        );
      },
    );
  }
}
