# wather_app

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.


Refactor weather screen states and initial no-weather UI
- Added initial no-weather screen before any city search
- Displayed weather data only after selecting a city
- Replaced navigation-based back behavior with state reset
- Added clear weather logic to return to the no-weather screen
- Refactored WeatherScreen to reduce UI and state responsibilities
- Separated weather result states into dedicated widgets
- Added loading, error, no-data, and loaded weather state widgets
- Moved weather success UI into WeatherContentWidget
- Improved WeatherLogic with nullable weather future state
- Added hasWeatherRequest getter for cleaner state checks
- Improved code organization following clean code and SOLID principles
main
