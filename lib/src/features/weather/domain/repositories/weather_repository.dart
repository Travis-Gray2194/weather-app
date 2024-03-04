import 'package:weather/src/core/error/failure.dart';
import 'package:weather/src/core/utils/either.dart';
import 'package:weather/src/features/weather/data/models/weather_model.dart';

mixin WeatherRepository {
  Future<Either<Failure, WeatherModel>> getWeather({
    required num longitude,
    required num latitude,
  });
}
