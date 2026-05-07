import '../../../core/service/api_weather_service.dart';
import '../data/model/model.dart';

class WeatherLogic {
  final WeatherService _weatherService;

  WeatherLogic({WeatherService? weatherService})
      : _weatherService = weatherService ?? WeatherService();

  Future<WeatherModel>? weatherFuture;

  bool get hasWeatherRequest => weatherFuture != null;

  void updateWeatherCity(String cityName) {
    final trimmedCityName = cityName.trim();

    if (trimmedCityName.isEmpty) return;

    weatherFuture = _weatherService.getWeather(
      cityName: trimmedCityName,
    );
  }

  void clearWeather() {
    weatherFuture = null;
  }
}
