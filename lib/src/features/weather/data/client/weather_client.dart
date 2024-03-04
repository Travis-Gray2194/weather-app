import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:weather/src/features/weather/data/models/weather_model.dart';

part 'weather_client.g.dart';

@RestApi()
abstract class WeatherClient {
  factory WeatherClient(Dio dio, {String baseUrl}) = _WeatherClient;

  @GET('forecast?latitude={latitude}&longitude={longitude}'
      '&past_days=3&forecast_days=10&current=temperature_2m,'
      'wind_speed_10m&daily=sunrise,sunset,uv_index_max,rain_sum,'
      'temperature_2m_max,temperature_2m_min,wind_speed_10m_max,'
      '&hourly=temperature_2m,relative_humidity_2m,wind_speed_10m,'
      'rain,')
  Future<WeatherModel> getWeather(
    @Path('longitude') num longitude,
    @Path('latitude') num latitude,
  );
}
