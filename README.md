# Weather


https://github.com/Travis-Gray2194/weather-app/assets/23531921/270eb7cd-3270-47ce-af84-1c9984ede08b


Included APK: https://github.com/Travis-Gray2194/weather-app/blob/main/weather.apk

Figma: Inspirtation from https://www.figma.com/community/file/1249443729401540968/google-weather-app-redesign?searchSessionId=ltdfmgyw-ejfkjswv6tp

Develop a Weather App using Flutter that provides users with current weather information and forecasts.
This project will focus on integrating weather data from a third-party API and displaying it in an organized
manner.

Requirements:

1. Weather Data Integration:
- Integrate with a weather API such as Open Meteo (https://open-meteo.com/) to fetch current
weather data and forecasts.
- Retrieve and display data such as temperature, humidity, wind speed, and conditions (e.g.,
sunny, rainy).
- Use a state management solution (e.g., Provider, Riverpod, Scoped Model) to manage the
app's state effectively.
- Demonstrate proper separation of concerns between UI and state management.

2. Location-based Weather:
- Automatically fetch weather data based on the user's location.
- Allow users to manually enter a location to view its weather information.

3. Current Weather Screen:
- Display the current weather conditions for the selected location.
- Include details such as temperature, humidity, wind speed, and conditions.
- Show an icon or image reflecting the current weather state.

4. Testing:
- Write unit tests for critical functions and widgets.
- Ensure proper functionality of weather data retrieval, component rendering, and error
handling.


Bonus:
1. User Preferences:
- Implement a settings screen to allow users to customize app preferences, such as length of
forecast.
- Include options for setting the default unit (Celsius or Fahrenheit).
2. Geolocated Search:
- Integrate with a location search API or package. Flutter’s package repository (pub.dev) has a
number of free OpenStreetMaps and Google Maps location search packages available
3. Hourly and/or Daily Forecast:
- Provide an hourly forecast for the next 24 hours.
- Display temperature, conditions, and any relevant information in an organized manner.
- Present a 5-day weather forecast with high and low temperatures, conditions, and an icon
representing each day.


Evaluation Criteria:
- Code organization and structure.
- Proper use of Flutter widgets and state management.
- Implementation of core features.
- Testing coverage and effectiveness.
- Bonus points for additional features and clean, maintainable code.

![coverage][coverage_badge]
[![style: very good analysis][very_good_analysis_badge]][very_good_analysis_link]
[![License: MIT][license_badge]][license_link]

---

## Framework: Flutter

### Features:

**Multi-flavor support**: development, staging, production
**Platform compatibility**: Android & iOS
**Clean Architecture structure**

## Getting Started 🚀

### Project Setup
 Create an .env file in the root directory by referring to the provided example [here](env.example). Ensure that you generate the necessary environment variables as specified in the example to enable the usage of all available configurations as listed below.
 
 - .env

### Install dependencies
```sh
flutter pub get
```

alternatively

```sh
make get
```

### Code Generation 
```sh
dart run build_runner build --delete-conflicting-outputs
```

Or run the following command to install dependencies and generate codes

```sh
 make fresh
```

### Run the app
 The application consists of 3 different variations, and you can utilize the subsequent commands to execute each distinct variation.

- development
- staging
- production

To run the desired flavor either use the launch configuration in VSCode/Android Studio or use the following commands:

```sh
# Development
$ flutter run --flavor development --target lib/main_development.dart

# Staging
$ flutter run --flavor staging --target lib/main_staging.dart

# Production
$ flutter run --flavor production --target lib/main_production.dart
```

_\*Chorus works on iOS and Android._

---

## Running Tests 🧪

To run all unit and widget tests use the following command:

```sh
$ flutter test --coverage --test-randomize-ordering-seed random
```

To view the generated coverage report you can use [lcov](https://github.com/linux-test-project/lcov).

```sh
# Generate Coverage Report
$ genhtml coverage/lcov.info -o coverage/

# Open Coverage Report
$ open coverage/index.html
```

---

## Feature Folder Structure
```
│
├── feature
|     ├── data
│     │     ├── data source
│     │     ├── model
│     │     └── repository(implementation)
│     ├── domain     
│     │     ├── entities
│     │     ├── repository(abstract)
│     │     └── use cases
│     └── presentation
│     │     ├── bloc/cubit
│     │     ├── pages
│     │     └── widgets
│     │        
```



[coverage_badge]: coverage_badge.svg
[flutter_localizations_link]: https://api.flutter.dev/flutter/flutter_localizations/flutter_localizations-library.html
[internationalization_link]: https://flutter.dev/docs/development/accessibility-and-localization/internationalization
[license_badge]: https://img.shields.io/badge/license-MIT-blue.svg
[license_link]: https://opensource.org/licenses/MIT
[very_good_analysis_badge]: https://img.shields.io/badge/style-very_good_analysis-B22C89.svg
[very_good_analysis_link]: https://pub.dev/packages/very_good_analysis
[very_good_cli_link]: https://github.com/VeryGoodOpenSource/very_good_cli
