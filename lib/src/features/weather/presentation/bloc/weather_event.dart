part of 'weather_bloc.dart';

@freezed
class WeatherEvent with _$WeatherEvent {
  const factory WeatherEvent.started() = _Started;
  const factory WeatherEvent.getWeather({
    required num latitude,
    required num longitude,
  }) = _GetWeather;
  const factory WeatherEvent.locationPicked(PickedData pickedPosition) =
      _LocationPicked;
}
