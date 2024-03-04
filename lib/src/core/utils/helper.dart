// ignore_for_file: sort_constructors_first
import 'package:weather/src/gen/assets.gen.dart';

WeatherCondition getWeatherCondition({
  required double temperature,
  required double rain,
}) {
  if (temperature > 15 && rain == 0) {
    return WeatherCondition.clearSky;
  } else if (temperature >= 10 && temperature <= 15 && rain < 5) {
    return WeatherCondition.partlyCloudy;
  } else if (temperature >= 5 && temperature < 10 && rain < 5) {
    return WeatherCondition.cloudy;
  } else if (rain > 0) {
    return WeatherCondition.rainy;
  } else {
    return WeatherCondition.unknown;
  }
}

enum WeatherCondition {
  clearSky(
    text: 'Clear Sky',
  ),
  partlyCloudy(
    text: 'Partly Cloudy',
  ),
  cloudy(text: 'Cloudy'),
  rainy(text: 'Rainy'),
  unknown(text: 'Unknown');

  final String text;
  const WeatherCondition({
    required this.text,
  });
}

extension WeatherConditionExtension on WeatherCondition {
  SvgGenImage get icon {
    switch (this) {
      case WeatherCondition.clearSky:
        return AppAssets.icons.clear;
      case WeatherCondition.partlyCloudy:
        return AppAssets.icons.partialCloudy;
      case WeatherCondition.cloudy:
        return AppAssets.icons.cloudy;
      case WeatherCondition.rainy:
        return AppAssets.icons.rainy;
      case WeatherCondition.unknown:
        return AppAssets.icons.unknown;
    }
  }
}
