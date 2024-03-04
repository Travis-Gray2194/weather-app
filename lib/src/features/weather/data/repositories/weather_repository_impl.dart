import 'package:weather/src/core/error/failure.dart';
import 'package:weather/src/core/extensions/repository_extension.dart';
import 'package:weather/src/core/utils/either.dart';
import 'package:weather/src/features/weather/data/datasources/local_data_source/weather_local_data_source.dart';
import 'package:weather/src/features/weather/data/datasources/remote_data_source/weather_remote_data_source.dart';
import 'package:weather/src/features/weather/data/models/weather_model.dart';
import 'package:weather/src/features/weather/domain/repositories/weather_repository.dart';

class WeatherRepositoryImpl implements WeatherRepository {
  const WeatherRepositoryImpl(
    this._localDataSource,
    this._remoteDataSource,
  );
  final WeatherRemoteDataSource _remoteDataSource;
  final WeatherLocalDataSource _localDataSource;
  @override
  Future<Either<Failure, WeatherModel>> getWeather({
    required num longitude,
    required num latitude,
  }) async {
    late Either<Failure, WeatherModel> result;

    result = await _remoteDataSource
        .getWeather(longitude: longitude, latitude: latitude)
        .makeRequest();

    if (result.isRight) {
      _localDataSource.saveWeather(
        result.fold(
          (left) => null,
          (weather) => weather,
        )!,
      );
    } else {
      result = await _localDataSource.getWeather().makeRequest();
    }
    return result;
  }
}
