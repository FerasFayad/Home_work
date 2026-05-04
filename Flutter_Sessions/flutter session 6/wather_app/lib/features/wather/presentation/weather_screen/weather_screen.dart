import 'package:flutter/material.dart';
import 'package:wather_app/features/wather/presentation/widgets/weather_search_delegate.dart';
import '../../../../core/service/api_service.dart';
import '../../../../core/theme/app_theme.dart';
import '../../logic/app_logic.dart';
import '../../model/model.dart';
import '../widgets/city+date.dart';
import '../widgets/temp.dart';
import '../widgets/weather_status.dart';

class WeatherScreen extends StatefulWidget {
  const WeatherScreen({super.key});
//#To Do:- Make This class as widget for one app screen called WeatherHome
//#To Do:- build search feature about city === Done
//#To Do:- triger api data model to app  ===== Done
//#To Do:- theme

  @override
  State<WeatherScreen> createState() => _WeatherScreenState();
}

class _WeatherScreenState extends State<WeatherScreen> {
  final WeatherService weatherService = WeatherService();
  late final AppLogic appLogic;

  @override
  void initState() {
    super.initState();
    appLogic = AppLogic();
  }

  Future<void> searchCity() async {
    final cityName = await showSearch<String?>(
      context: context,
      delegate: WeatherSearchDelegate(),
    );
    if (cityName != null && cityName.trim().isNotEmpty) {
      setState(() {
        appLogic.updateWeatherCity(cityName);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      appBar: AppBar(
        backgroundColor: Colors.orange,
        actions: [
          IconButton(
            onPressed: searchCity,
            icon: const Icon(Icons.search, color: Colors.black),
          )
        ],
        title: const Text(
          'Weather App',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: FutureBuilder<WeatherModel>(
        future: appLogic.weatherFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }

          if (snapshot.hasError) {
            return Center(child: Text(snapshot.error.toString()));
          }

          final weather = snapshot.data!;

          return Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                CityAndDAte(weather: weather),
                Temp(weather: weather),
                WeatherStatus(weather: weather),
              ],
            ),
          );
        },
      ),
    );
  }
}
