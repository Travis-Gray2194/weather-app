import 'package:weather/src/features/weather/data/client/weather_client.dart';
import 'package:weather/src/features/weather/data/models/weather_model.dart';

mixin WeatherRemoteDataSource {
  Future<WeatherModel> getWeather({
    required num longitude,
    required num latitude,
  });
}

class WeatherRemoteDataSourceImpl implements WeatherRemoteDataSource {
  const WeatherRemoteDataSourceImpl(this._client);
  final WeatherClient _client;
  @override
  Future<WeatherModel> getWeather({
    required num longitude,
    required num latitude,
  }) {
    return _client.getWeather(longitude, latitude);
  }
}
