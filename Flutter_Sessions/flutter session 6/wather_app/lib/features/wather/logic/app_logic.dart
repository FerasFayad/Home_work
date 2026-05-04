import 'package:wather_app/core/service/api_service.dart';
import '../model/model.dart';

class AppLogic {
  final WeatherService weatherService = WeatherService();

  late Future<WeatherModel> weatherFuture;

  AppLogic() {
    weatherFuture = getWeatherByCity('Cairo');
  }

  Future<WeatherModel> getWeatherByCity(String cityName) {
    return weatherService.getWeather(
      cityName: cityName.trim(),
    );
  }

  void updateWeatherCity(String cityName) {
    weatherFuture = getWeatherByCity(cityName);
  }
}
