class WeatherModel {
  final String cityName;
  final String lastUpdated;
  final double temp;
  final double maxTemp;
  final double minTemp;
  final String weatherStatus;
  final String icon;
  final int isThemeLightOrDark;

  WeatherModel(
      {required this.cityName,
      required this.lastUpdated,
      required this.temp,
      required this.maxTemp,
      required this.minTemp,
      required this.weatherStatus,
      required this.icon,
      required this.isThemeLightOrDark});

  factory WeatherModel.fromJson(Map<String, dynamic> json) {
    return WeatherModel(
        cityName: json['location']['name'],
        lastUpdated: json['current']['last_updated'],
        temp: (json['current']['temp_c'] as num).toDouble(),
        weatherStatus: json['current']['condition']['text'],
        icon: 'https:${json['current']['condition']['icon']}',
        maxTemp: (json['forecast']['forecastday'][0]['day']['maxtemp_c'] as num)
            .toDouble(),
        minTemp: (json['forecast']['forecastday'][0]['day']['mintemp_c'] as num)
            .toDouble(),
        isThemeLightOrDark: json['current']['is_day']);
  }
}
