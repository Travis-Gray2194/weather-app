import 'package:equatable/equatable.dart';
import 'package:weather/src/core/error/failure.dart';
import 'package:weather/src/core/utils/either.dart';
import 'package:weather/src/core/utils/use_case.dart';
import 'package:weather/src/features/weather/data/models/weather_model.dart';
import 'package:weather/src/features/weather/domain/repositories/weather_repository.dart';

class GetWeatherUseCase implements UseCase<WeatherModel, GetWeatherParams> {
  const GetWeatherUseCase(this._repository);
  final WeatherRepository _repository;
  @override
  Future<Either<Failure, WeatherModel>> call(GetWeatherParams params) {
    return _repository.getWeather(
      longitude: params.longitude,
      latitude: params.latitude,
    );
  }
}

class GetWeatherParams extends Equatable {
  const GetWeatherParams({required this.latitude, required this.longitude});
  final num latitude;
  final num longitude;
  @override
  List<Object?> get props => [
        latitude,
        longitude,
      ];
}
