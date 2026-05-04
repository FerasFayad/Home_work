import 'package:flutter/material.dart';
import 'package:wather_app/features/wather/presentation/widgets/weather_error_Widget.dart';
import 'package:wather_app/features/wather/presentation/widgets/weather_loading_widget.dart';

import '../../data/model/model.dart';
import 'weather_content_widget.dart';
import 'weather_no_data_widget.dart';

class WeatherResultBuilder extends StatelessWidget {
  final AsyncSnapshot<WeatherModel> snapshot;
  final VoidCallback onSearchTap;
  final VoidCallback onBackTap;

  const WeatherResultBuilder({
    super.key,
    required this.snapshot,
    required this.onSearchTap,
    required this.onBackTap,
  });

  @override
  Widget build(BuildContext context) {
    if (snapshot.connectionState == ConnectionState.waiting) {
      return const WeatherLoadingWidget();
    }

    if (snapshot.hasError) {
      return WeatherErrorWidget(
        onSearchTap: onSearchTap,
        onBackTap: onBackTap,
      );
    }

    if (!snapshot.hasData) {
      return WeatherNoDataWidget(
        onSearchTap: onSearchTap,
        onBackTap: onBackTap,
      );
    }

    return WeatherContentWidget(
      weather: snapshot.data!,
      onSearchTap: onSearchTap,
      onBackTap: onBackTap,
    );
  }
}
