import 'dart:convert';

import 'package:weather/src/core/error/exceptions.dart';
import 'package:weather/src/features/weather/data/models/weather_model.dart';
import 'package:weather/src/services/local_storage_service.dart';
import 'package:weather/src/services/logging_service.dart';

mixin WeatherLocalDataSource {
  void saveWeather(WeatherModel weather);
  Future<WeatherModel> getWeather();
}

class WeatherLocalDataSourceImpl implements WeatherLocalDataSource {
  const WeatherLocalDataSourceImpl(
    this._localStorageService,
    this._loggingService,
  );

  final LocalStorageService _localStorageService;
  final LoggingService _loggingService;

  @override
  void saveWeather(WeatherModel weather) {
    try {
      _localStorageService.savePreference(
        key: 'weather',
        data: json.encode(
          weather.toJson(),
        ),
      );
    } catch (e, s) {
      _loggingService.logError(e, s);
    }
  }

  @override
  Future<WeatherModel> getWeather() async {
    try {
      final result = _localStorageService.getPreference(
        key: 'weather',
      );

      if (result == null) {
        throw const CacheException(
          message: 'No weather found in storage',
        );
      }
      return WeatherModel.fromJson(
        json.decode(
          result,
        ) as Map<String, dynamic>,
      );
    } catch (e, s) {
      _loggingService.logError(e, s);
      throw CacheException(
        trace: s,
        message: 'Unable to get weather from storage',
      );
    }
  }
}
