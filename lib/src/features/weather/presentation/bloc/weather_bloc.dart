import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geolocator/geolocator.dart';
import 'package:open_street_map_search_and_pick/open_street_map_search_and_pick.dart';
import 'package:weather/src/core/enums/view_state.dart';
import 'package:weather/src/features/weather/data/models/weather_model.dart';
import 'package:weather/src/features/weather/domain/usecases/get_weather_use_case.dart';
import 'package:weather/src/services/geo_coder_service.dart';
import 'package:weather/src/services/location_service.dart';

part 'weather_event.dart';
part 'weather_state.dart';
part 'weather_bloc.freezed.dart';

class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {
  WeatherBloc(
    this._locationService,
    this._getWeatherUseCase,
    this._geoCoderService,
  ) : super(const _Initial()) {
    on<_Started>(_onStarted);
    on<_GetWeather>(_onGetWeather);
    on<_LocationPicked>(_onLocationPicked);
  }

  final LocationService _locationService;
  final GetWeatherUseCase _getWeatherUseCase;
  final GeoCoderService _geoCoderService;

  FutureOr<void> _onStarted(
    _Started event,
    Emitter<WeatherState> emit,
  ) async {
    try {
      emit(state.copyWith(viewState: ViewState.processing));

      await _locationService.getLocation().then((value) async {
        final address = await _geoCoderService.getAddressFromCoordinate(
          value.latitude,
          value.longitude,
        );
        emit(
          state.copyWith(
            currentPosition: value,
            viewState: ViewState.idle,
            address: address,
          ),
        );
      });

      add(
        _GetWeather(
          latitude: state.currentPosition!.latitude,
          longitude: state.currentPosition!.longitude,
        ),
      );
    } catch (error) {
      emit(
        state.copyWith(
          viewState: ViewState.error,
          errorMessage: error.toString(),
        ),
      );
    }
  }

  FutureOr<void> _onGetWeather(
    _GetWeather event,
    Emitter<WeatherState> emit,
  ) async {
    if (state.viewState.isProcessing) return;
    emit(state.copyWith(viewState: ViewState.processing));
    await _getWeatherUseCase(
      GetWeatherParams(
        latitude: event.latitude,
        longitude: event.longitude,
      ),
    ).then(
      (value) => value.fold(
        (error) => emit(
          state.copyWith(
            viewState: ViewState.error,
            errorMessage: error.message,
          ),
        ),
        (weather) => emit(
          state.copyWith(
            viewState: ViewState.success,
            weather: weather,
          ),
        ),
      ),
    );
    emit(state.copyWith(viewState: ViewState.idle));
  }

  FutureOr<void> _onLocationPicked(
    _LocationPicked event,
    Emitter<WeatherState> emit,
  ) async {
    emit(
      state.copyWith(
        pickedPosition: event.pickedPosition,
      ),
    );
    final address = await _geoCoderService.getAddressFromCoordinate(
      event.pickedPosition.latLong.latitude,
      event.pickedPosition.latLong.longitude,
    );
    emit(state.copyWith(address: address));
    add(
      _GetWeather(
        latitude: event.pickedPosition.latLong.latitude,
        longitude: event.pickedPosition.latLong.longitude,
      ),
    );
  }
}
