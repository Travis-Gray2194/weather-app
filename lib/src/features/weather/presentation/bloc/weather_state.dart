part of 'weather_bloc.dart';

@freezed
class WeatherState with _$WeatherState {
  const factory WeatherState.initial({
    @Default(ViewState.idle) ViewState viewState,
    Position? currentPosition,
    WeatherModel? weather,
    PickedData? pickedPosition,
    String? address,
    String? errorMessage,
  }) = _Initial;
}
