// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$WeatherEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(num latitude, num longitude) getWeather,
    required TResult Function(PickedData pickedPosition) locationPicked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(num latitude, num longitude)? getWeather,
    TResult? Function(PickedData pickedPosition)? locationPicked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(num latitude, num longitude)? getWeather,
    TResult Function(PickedData pickedPosition)? locationPicked,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetWeather value) getWeather,
    required TResult Function(_LocationPicked value) locationPicked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetWeather value)? getWeather,
    TResult? Function(_LocationPicked value)? locationPicked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetWeather value)? getWeather,
    TResult Function(_LocationPicked value)? locationPicked,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherEventCopyWith<$Res> {
  factory $WeatherEventCopyWith(
          WeatherEvent value, $Res Function(WeatherEvent) then) =
      _$WeatherEventCopyWithImpl<$Res, WeatherEvent>;
}

/// @nodoc
class _$WeatherEventCopyWithImpl<$Res, $Val extends WeatherEvent>
    implements $WeatherEventCopyWith<$Res> {
  _$WeatherEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$WeatherEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'WeatherEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(num latitude, num longitude) getWeather,
    required TResult Function(PickedData pickedPosition) locationPicked,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(num latitude, num longitude)? getWeather,
    TResult? Function(PickedData pickedPosition)? locationPicked,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(num latitude, num longitude)? getWeather,
    TResult Function(PickedData pickedPosition)? locationPicked,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetWeather value) getWeather,
    required TResult Function(_LocationPicked value) locationPicked,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetWeather value)? getWeather,
    TResult? Function(_LocationPicked value)? locationPicked,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetWeather value)? getWeather,
    TResult Function(_LocationPicked value)? locationPicked,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements WeatherEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$GetWeatherImplCopyWith<$Res> {
  factory _$$GetWeatherImplCopyWith(
          _$GetWeatherImpl value, $Res Function(_$GetWeatherImpl) then) =
      __$$GetWeatherImplCopyWithImpl<$Res>;
  @useResult
  $Res call({num latitude, num longitude});
}

/// @nodoc
class __$$GetWeatherImplCopyWithImpl<$Res>
    extends _$WeatherEventCopyWithImpl<$Res, _$GetWeatherImpl>
    implements _$$GetWeatherImplCopyWith<$Res> {
  __$$GetWeatherImplCopyWithImpl(
      _$GetWeatherImpl _value, $Res Function(_$GetWeatherImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = null,
    Object? longitude = null,
  }) {
    return _then(_$GetWeatherImpl(
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as num,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// @nodoc

class _$GetWeatherImpl implements _GetWeather {
  const _$GetWeatherImpl({required this.latitude, required this.longitude});

  @override
  final num latitude;
  @override
  final num longitude;

  @override
  String toString() {
    return 'WeatherEvent.getWeather(latitude: $latitude, longitude: $longitude)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetWeatherImpl &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude));
  }

  @override
  int get hashCode => Object.hash(runtimeType, latitude, longitude);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetWeatherImplCopyWith<_$GetWeatherImpl> get copyWith =>
      __$$GetWeatherImplCopyWithImpl<_$GetWeatherImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(num latitude, num longitude) getWeather,
    required TResult Function(PickedData pickedPosition) locationPicked,
  }) {
    return getWeather(latitude, longitude);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(num latitude, num longitude)? getWeather,
    TResult? Function(PickedData pickedPosition)? locationPicked,
  }) {
    return getWeather?.call(latitude, longitude);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(num latitude, num longitude)? getWeather,
    TResult Function(PickedData pickedPosition)? locationPicked,
    required TResult orElse(),
  }) {
    if (getWeather != null) {
      return getWeather(latitude, longitude);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetWeather value) getWeather,
    required TResult Function(_LocationPicked value) locationPicked,
  }) {
    return getWeather(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetWeather value)? getWeather,
    TResult? Function(_LocationPicked value)? locationPicked,
  }) {
    return getWeather?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetWeather value)? getWeather,
    TResult Function(_LocationPicked value)? locationPicked,
    required TResult orElse(),
  }) {
    if (getWeather != null) {
      return getWeather(this);
    }
    return orElse();
  }
}

abstract class _GetWeather implements WeatherEvent {
  const factory _GetWeather(
      {required final num latitude,
      required final num longitude}) = _$GetWeatherImpl;

  num get latitude;
  num get longitude;
  @JsonKey(ignore: true)
  _$$GetWeatherImplCopyWith<_$GetWeatherImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LocationPickedImplCopyWith<$Res> {
  factory _$$LocationPickedImplCopyWith(_$LocationPickedImpl value,
          $Res Function(_$LocationPickedImpl) then) =
      __$$LocationPickedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({PickedData pickedPosition});
}

/// @nodoc
class __$$LocationPickedImplCopyWithImpl<$Res>
    extends _$WeatherEventCopyWithImpl<$Res, _$LocationPickedImpl>
    implements _$$LocationPickedImplCopyWith<$Res> {
  __$$LocationPickedImplCopyWithImpl(
      _$LocationPickedImpl _value, $Res Function(_$LocationPickedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pickedPosition = null,
  }) {
    return _then(_$LocationPickedImpl(
      null == pickedPosition
          ? _value.pickedPosition
          : pickedPosition // ignore: cast_nullable_to_non_nullable
              as PickedData,
    ));
  }
}

/// @nodoc

class _$LocationPickedImpl implements _LocationPicked {
  const _$LocationPickedImpl(this.pickedPosition);

  @override
  final PickedData pickedPosition;

  @override
  String toString() {
    return 'WeatherEvent.locationPicked(pickedPosition: $pickedPosition)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationPickedImpl &&
            (identical(other.pickedPosition, pickedPosition) ||
                other.pickedPosition == pickedPosition));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pickedPosition);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LocationPickedImplCopyWith<_$LocationPickedImpl> get copyWith =>
      __$$LocationPickedImplCopyWithImpl<_$LocationPickedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(num latitude, num longitude) getWeather,
    required TResult Function(PickedData pickedPosition) locationPicked,
  }) {
    return locationPicked(pickedPosition);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(num latitude, num longitude)? getWeather,
    TResult? Function(PickedData pickedPosition)? locationPicked,
  }) {
    return locationPicked?.call(pickedPosition);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(num latitude, num longitude)? getWeather,
    TResult Function(PickedData pickedPosition)? locationPicked,
    required TResult orElse(),
  }) {
    if (locationPicked != null) {
      return locationPicked(pickedPosition);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetWeather value) getWeather,
    required TResult Function(_LocationPicked value) locationPicked,
  }) {
    return locationPicked(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetWeather value)? getWeather,
    TResult? Function(_LocationPicked value)? locationPicked,
  }) {
    return locationPicked?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetWeather value)? getWeather,
    TResult Function(_LocationPicked value)? locationPicked,
    required TResult orElse(),
  }) {
    if (locationPicked != null) {
      return locationPicked(this);
    }
    return orElse();
  }
}

abstract class _LocationPicked implements WeatherEvent {
  const factory _LocationPicked(final PickedData pickedPosition) =
      _$LocationPickedImpl;

  PickedData get pickedPosition;
  @JsonKey(ignore: true)
  _$$LocationPickedImplCopyWith<_$LocationPickedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$WeatherState {
  ViewState get viewState => throw _privateConstructorUsedError;
  Position? get currentPosition => throw _privateConstructorUsedError;
  WeatherModel? get weather => throw _privateConstructorUsedError;
  PickedData? get pickedPosition => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            ViewState viewState,
            Position? currentPosition,
            WeatherModel? weather,
            PickedData? pickedPosition,
            String? address,
            String? errorMessage)
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            ViewState viewState,
            Position? currentPosition,
            WeatherModel? weather,
            PickedData? pickedPosition,
            String? address,
            String? errorMessage)?
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            ViewState viewState,
            Position? currentPosition,
            WeatherModel? weather,
            PickedData? pickedPosition,
            String? address,
            String? errorMessage)?
        initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WeatherStateCopyWith<WeatherState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherStateCopyWith<$Res> {
  factory $WeatherStateCopyWith(
          WeatherState value, $Res Function(WeatherState) then) =
      _$WeatherStateCopyWithImpl<$Res, WeatherState>;
  @useResult
  $Res call(
      {ViewState viewState,
      Position? currentPosition,
      WeatherModel? weather,
      PickedData? pickedPosition,
      String? address,
      String? errorMessage});

  $WeatherModelCopyWith<$Res>? get weather;
}

/// @nodoc
class _$WeatherStateCopyWithImpl<$Res, $Val extends WeatherState>
    implements $WeatherStateCopyWith<$Res> {
  _$WeatherStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? viewState = null,
    Object? currentPosition = freezed,
    Object? weather = freezed,
    Object? pickedPosition = freezed,
    Object? address = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      viewState: null == viewState
          ? _value.viewState
          : viewState // ignore: cast_nullable_to_non_nullable
              as ViewState,
      currentPosition: freezed == currentPosition
          ? _value.currentPosition
          : currentPosition // ignore: cast_nullable_to_non_nullable
              as Position?,
      weather: freezed == weather
          ? _value.weather
          : weather // ignore: cast_nullable_to_non_nullable
              as WeatherModel?,
      pickedPosition: freezed == pickedPosition
          ? _value.pickedPosition
          : pickedPosition // ignore: cast_nullable_to_non_nullable
              as PickedData?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $WeatherModelCopyWith<$Res>? get weather {
    if (_value.weather == null) {
      return null;
    }

    return $WeatherModelCopyWith<$Res>(_value.weather!, (value) {
      return _then(_value.copyWith(weather: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $WeatherStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ViewState viewState,
      Position? currentPosition,
      WeatherModel? weather,
      PickedData? pickedPosition,
      String? address,
      String? errorMessage});

  @override
  $WeatherModelCopyWith<$Res>? get weather;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$WeatherStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? viewState = null,
    Object? currentPosition = freezed,
    Object? weather = freezed,
    Object? pickedPosition = freezed,
    Object? address = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_$InitialImpl(
      viewState: null == viewState
          ? _value.viewState
          : viewState // ignore: cast_nullable_to_non_nullable
              as ViewState,
      currentPosition: freezed == currentPosition
          ? _value.currentPosition
          : currentPosition // ignore: cast_nullable_to_non_nullable
              as Position?,
      weather: freezed == weather
          ? _value.weather
          : weather // ignore: cast_nullable_to_non_nullable
              as WeatherModel?,
      pickedPosition: freezed == pickedPosition
          ? _value.pickedPosition
          : pickedPosition // ignore: cast_nullable_to_non_nullable
              as PickedData?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {this.viewState = ViewState.idle,
      this.currentPosition,
      this.weather,
      this.pickedPosition,
      this.address,
      this.errorMessage});

  @override
  @JsonKey()
  final ViewState viewState;
  @override
  final Position? currentPosition;
  @override
  final WeatherModel? weather;
  @override
  final PickedData? pickedPosition;
  @override
  final String? address;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'WeatherState.initial(viewState: $viewState, currentPosition: $currentPosition, weather: $weather, pickedPosition: $pickedPosition, address: $address, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.viewState, viewState) ||
                other.viewState == viewState) &&
            (identical(other.currentPosition, currentPosition) ||
                other.currentPosition == currentPosition) &&
            (identical(other.weather, weather) || other.weather == weather) &&
            (identical(other.pickedPosition, pickedPosition) ||
                other.pickedPosition == pickedPosition) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, viewState, currentPosition,
      weather, pickedPosition, address, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            ViewState viewState,
            Position? currentPosition,
            WeatherModel? weather,
            PickedData? pickedPosition,
            String? address,
            String? errorMessage)
        initial,
  }) {
    return initial(viewState, currentPosition, weather, pickedPosition, address,
        errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            ViewState viewState,
            Position? currentPosition,
            WeatherModel? weather,
            PickedData? pickedPosition,
            String? address,
            String? errorMessage)?
        initial,
  }) {
    return initial?.call(viewState, currentPosition, weather, pickedPosition,
        address, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            ViewState viewState,
            Position? currentPosition,
            WeatherModel? weather,
            PickedData? pickedPosition,
            String? address,
            String? errorMessage)?
        initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(viewState, currentPosition, weather, pickedPosition,
          address, errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements WeatherState {
  const factory _Initial(
      {final ViewState viewState,
      final Position? currentPosition,
      final WeatherModel? weather,
      final PickedData? pickedPosition,
      final String? address,
      final String? errorMessage}) = _$InitialImpl;

  @override
  ViewState get viewState;
  @override
  Position? get currentPosition;
  @override
  WeatherModel? get weather;
  @override
  PickedData? get pickedPosition;
  @override
  String? get address;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
