# Weather App

A clean Flutter weather application that allows users to search for any city and view real-time weather data using WeatherAPI.

The app starts with an empty weather state. After the user searches for a city, the city name is passed to the API query parameter, the response is parsed into a Dart model, and the weather information is displayed in a simple responsive UI.

---
## Overview

This project is a Flutter practice application built around a real weather API integration. It demonstrates how to:

- Fetch data from an external API using Dio.
- Parse nested JSON into a Dart model.
- Search for weather by city name using `SearchDelegate`.
- Manage loading, error, empty, and success UI states.
- Separate UI, logic, model, and service responsibilities.

<<<<<<< HEAD
## Features

- Search weather by city name.
- Fetch live weather data from WeatherAPI.
- Display:
  - City name
  - Last update time
  - Current temperature
  - Weather condition
  - Weather icon
  - Maximum temperature
  - Minimum temperature
- Initial no-weather screen before any search.
- Dynamic background color based on day/night value from the API.
- Loading, error, no-data, and loaded states.
- Clear weather state to return to the initial screen.
- Clean separation between API service, logic, model, and UI.
- SearchDelegate integration for a native Flutter search experience.
- API error handling using `DioException`.

---
## Tech Stack

- Flutter
- Dart
- Dio
- WeatherAPI
- Material Design

---

## Project Structure

```text
lib/
  core/
    service/
      api_service.dart

    theme/
      app_theme.dart

  features/
    wather/
      data/
        model/
          model.dart

      logic/
        weather_logic.dart

      presentation/
        weather_screen/
          weather_screen.dart

        widgets/
          no_weather_widget.dart
          weather_search_delegate.dart
          weather_result_builder.dart
          weather_content_widget.dart
          weather_loading_widget.dart
          weather_error_widget.dart
          weather_no_data_widget.dart
          city+date.dart
          temp.dart
          weather_status.dart
```

Clean Code Practices

This project applies several clean code concepts:

## Clean Code Practices

This project applies several clean code concepts:

- Separation of concerns
- Feature-based folder structure
- API service separated from UI
- Model separated from API response handling
- Logic separated from presentation
- Reusable widgets for different UI states
- Nullable weather request state for initial empty screen
- Dependency injection support in `WeatherLogic`
- Reduced responsibilities inside `WeatherScreen`

---
=======
قث