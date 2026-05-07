import 'package:dio/dio.dart';
import '../../features/wather/data/model/model.dart';

class WeatherService {
  final Dio dio = Dio();

  final String apiKey = 'efa83cfb49e94a66878165315260205';
  final String baseUrl = 'https://api.weatherapi.com/v1';

  Future<WeatherModel> getWeather({required String cityName}) async {
    try {
      Response response = await dio.get(
        '$baseUrl/Urlforecast.json',
        queryParameters: {
          'key': apiKey,
          'q': cityName,
          'days': 1,
        },
      );

      return WeatherModel.fromJson(response.data);
    } on DioException catch (e) {
      throw Exception(
        e.response?.data['error']?['message'] ?? 'Failed to load weather data',
      );
    } catch (e) {
      throw Exception('Something went wrong');
    }
  }
}
