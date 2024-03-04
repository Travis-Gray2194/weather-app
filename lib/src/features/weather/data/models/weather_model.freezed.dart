// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WeatherModel _$WeatherModelFromJson(Map<String, dynamic> json) {
  return _WeatherModel.fromJson(json);
}

/// @nodoc
mixin _$WeatherModel {
  @JsonKey(name: "latitude")
  num? get latitude => throw _privateConstructorUsedError;
  @JsonKey(name: "longitude")
  num? get longitude => throw _privateConstructorUsedError;
  @JsonKey(name: "generationtime_ms")
  num? get generationtimeMs => throw _privateConstructorUsedError;
  @JsonKey(name: "utc_offset_seconds")
  num? get utcOffsetSeconds => throw _privateConstructorUsedError;
  @JsonKey(name: "timezone")
  String? get timezone => throw _privateConstructorUsedError;
  @JsonKey(name: "timezone_abbreviation")
  String? get timezoneAbbreviation => throw _privateConstructorUsedError;
  @JsonKey(name: "elevation")
  num? get elevation => throw _privateConstructorUsedError;
  @JsonKey(name: "current_units")
  CurrentUnits? get currentUnits => throw _privateConstructorUsedError;
  @JsonKey(name: "current")
  Current? get current => throw _privateConstructorUsedError;
  @JsonKey(name: "hourly_units")
  HourlyUnits? get hourlyUnits => throw _privateConstructorUsedError;
  @JsonKey(name: "hourly")
  Hourly? get hourly => throw _privateConstructorUsedError;
  @JsonKey(name: "daily_units")
  DailyUnits? get dailyUnits => throw _privateConstructorUsedError;
  @JsonKey(name: "daily")
  Daily? get daily => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeatherModelCopyWith<WeatherModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherModelCopyWith<$Res> {
  factory $WeatherModelCopyWith(
          WeatherModel value, $Res Function(WeatherModel) then) =
      _$WeatherModelCopyWithImpl<$Res, WeatherModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "latitude") num? latitude,
      @JsonKey(name: "longitude") num? longitude,
      @JsonKey(name: "generationtime_ms") num? generationtimeMs,
      @JsonKey(name: "utc_offset_seconds") num? utcOffsetSeconds,
      @JsonKey(name: "timezone") String? timezone,
      @JsonKey(name: "timezone_abbreviation") String? timezoneAbbreviation,
      @JsonKey(name: "elevation") num? elevation,
      @JsonKey(name: "current_units") CurrentUnits? currentUnits,
      @JsonKey(name: "current") Current? current,
      @JsonKey(name: "hourly_units") HourlyUnits? hourlyUnits,
      @JsonKey(name: "hourly") Hourly? hourly,
      @JsonKey(name: "daily_units") DailyUnits? dailyUnits,
      @JsonKey(name: "daily") Daily? daily});

  $CurrentUnitsCopyWith<$Res>? get currentUnits;
  $CurrentCopyWith<$Res>? get current;
  $HourlyUnitsCopyWith<$Res>? get hourlyUnits;
  $HourlyCopyWith<$Res>? get hourly;
  $DailyUnitsCopyWith<$Res>? get dailyUnits;
  $DailyCopyWith<$Res>? get daily;
}

/// @nodoc
class _$WeatherModelCopyWithImpl<$Res, $Val extends WeatherModel>
    implements $WeatherModelCopyWith<$Res> {
  _$WeatherModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? generationtimeMs = freezed,
    Object? utcOffsetSeconds = freezed,
    Object? timezone = freezed,
    Object? timezoneAbbreviation = freezed,
    Object? elevation = freezed,
    Object? currentUnits = freezed,
    Object? current = freezed,
    Object? hourlyUnits = freezed,
    Object? hourly = freezed,
    Object? dailyUnits = freezed,
    Object? daily = freezed,
  }) {
    return _then(_value.copyWith(
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as num?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as num?,
      generationtimeMs: freezed == generationtimeMs
          ? _value.generationtimeMs
          : generationtimeMs // ignore: cast_nullable_to_non_nullable
              as num?,
      utcOffsetSeconds: freezed == utcOffsetSeconds
          ? _value.utcOffsetSeconds
          : utcOffsetSeconds // ignore: cast_nullable_to_non_nullable
              as num?,
      timezone: freezed == timezone
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as String?,
      timezoneAbbreviation: freezed == timezoneAbbreviation
          ? _value.timezoneAbbreviation
          : timezoneAbbreviation // ignore: cast_nullable_to_non_nullable
              as String?,
      elevation: freezed == elevation
          ? _value.elevation
          : elevation // ignore: cast_nullable_to_non_nullable
              as num?,
      currentUnits: freezed == currentUnits
          ? _value.currentUnits
          : currentUnits // ignore: cast_nullable_to_non_nullable
              as CurrentUnits?,
      current: freezed == current
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as Current?,
      hourlyUnits: freezed == hourlyUnits
          ? _value.hourlyUnits
          : hourlyUnits // ignore: cast_nullable_to_non_nullable
              as HourlyUnits?,
      hourly: freezed == hourly
          ? _value.hourly
          : hourly // ignore: cast_nullable_to_non_nullable
              as Hourly?,
      dailyUnits: freezed == dailyUnits
          ? _value.dailyUnits
          : dailyUnits // ignore: cast_nullable_to_non_nullable
              as DailyUnits?,
      daily: freezed == daily
          ? _value.daily
          : daily // ignore: cast_nullable_to_non_nullable
              as Daily?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CurrentUnitsCopyWith<$Res>? get currentUnits {
    if (_value.currentUnits == null) {
      return null;
    }

    return $CurrentUnitsCopyWith<$Res>(_value.currentUnits!, (value) {
      return _then(_value.copyWith(currentUnits: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CurrentCopyWith<$Res>? get current {
    if (_value.current == null) {
      return null;
    }

    return $CurrentCopyWith<$Res>(_value.current!, (value) {
      return _then(_value.copyWith(current: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $HourlyUnitsCopyWith<$Res>? get hourlyUnits {
    if (_value.hourlyUnits == null) {
      return null;
    }

    return $HourlyUnitsCopyWith<$Res>(_value.hourlyUnits!, (value) {
      return _then(_value.copyWith(hourlyUnits: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $HourlyCopyWith<$Res>? get hourly {
    if (_value.hourly == null) {
      return null;
    }

    return $HourlyCopyWith<$Res>(_value.hourly!, (value) {
      return _then(_value.copyWith(hourly: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $DailyUnitsCopyWith<$Res>? get dailyUnits {
    if (_value.dailyUnits == null) {
      return null;
    }

    return $DailyUnitsCopyWith<$Res>(_value.dailyUnits!, (value) {
      return _then(_value.copyWith(dailyUnits: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $DailyCopyWith<$Res>? get daily {
    if (_value.daily == null) {
      return null;
    }

    return $DailyCopyWith<$Res>(_value.daily!, (value) {
      return _then(_value.copyWith(daily: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$WeatherModelImplCopyWith<$Res>
    implements $WeatherModelCopyWith<$Res> {
  factory _$$WeatherModelImplCopyWith(
          _$WeatherModelImpl value, $Res Function(_$WeatherModelImpl) then) =
      __$$WeatherModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "latitude") num? latitude,
      @JsonKey(name: "longitude") num? longitude,
      @JsonKey(name: "generationtime_ms") num? generationtimeMs,
      @JsonKey(name: "utc_offset_seconds") num? utcOffsetSeconds,
      @JsonKey(name: "timezone") String? timezone,
      @JsonKey(name: "timezone_abbreviation") String? timezoneAbbreviation,
      @JsonKey(name: "elevation") num? elevation,
      @JsonKey(name: "current_units") CurrentUnits? currentUnits,
      @JsonKey(name: "current") Current? current,
      @JsonKey(name: "hourly_units") HourlyUnits? hourlyUnits,
      @JsonKey(name: "hourly") Hourly? hourly,
      @JsonKey(name: "daily_units") DailyUnits? dailyUnits,
      @JsonKey(name: "daily") Daily? daily});

  @override
  $CurrentUnitsCopyWith<$Res>? get currentUnits;
  @override
  $CurrentCopyWith<$Res>? get current;
  @override
  $HourlyUnitsCopyWith<$Res>? get hourlyUnits;
  @override
  $HourlyCopyWith<$Res>? get hourly;
  @override
  $DailyUnitsCopyWith<$Res>? get dailyUnits;
  @override
  $DailyCopyWith<$Res>? get daily;
}

/// @nodoc
class __$$WeatherModelImplCopyWithImpl<$Res>
    extends _$WeatherModelCopyWithImpl<$Res, _$WeatherModelImpl>
    implements _$$WeatherModelImplCopyWith<$Res> {
  __$$WeatherModelImplCopyWithImpl(
      _$WeatherModelImpl _value, $Res Function(_$WeatherModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? generationtimeMs = freezed,
    Object? utcOffsetSeconds = freezed,
    Object? timezone = freezed,
    Object? timezoneAbbreviation = freezed,
    Object? elevation = freezed,
    Object? currentUnits = freezed,
    Object? current = freezed,
    Object? hourlyUnits = freezed,
    Object? hourly = freezed,
    Object? dailyUnits = freezed,
    Object? daily = freezed,
  }) {
    return _then(_$WeatherModelImpl(
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as num?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as num?,
      generationtimeMs: freezed == generationtimeMs
          ? _value.generationtimeMs
          : generationtimeMs // ignore: cast_nullable_to_non_nullable
              as num?,
      utcOffsetSeconds: freezed == utcOffsetSeconds
          ? _value.utcOffsetSeconds
          : utcOffsetSeconds // ignore: cast_nullable_to_non_nullable
              as num?,
      timezone: freezed == timezone
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as String?,
      timezoneAbbreviation: freezed == timezoneAbbreviation
          ? _value.timezoneAbbreviation
          : timezoneAbbreviation // ignore: cast_nullable_to_non_nullable
              as String?,
      elevation: freezed == elevation
          ? _value.elevation
          : elevation // ignore: cast_nullable_to_non_nullable
              as num?,
      currentUnits: freezed == currentUnits
          ? _value.currentUnits
          : currentUnits // ignore: cast_nullable_to_non_nullable
              as CurrentUnits?,
      current: freezed == current
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as Current?,
      hourlyUnits: freezed == hourlyUnits
          ? _value.hourlyUnits
          : hourlyUnits // ignore: cast_nullable_to_non_nullable
              as HourlyUnits?,
      hourly: freezed == hourly
          ? _value.hourly
          : hourly // ignore: cast_nullable_to_non_nullable
              as Hourly?,
      dailyUnits: freezed == dailyUnits
          ? _value.dailyUnits
          : dailyUnits // ignore: cast_nullable_to_non_nullable
              as DailyUnits?,
      daily: freezed == daily
          ? _value.daily
          : daily // ignore: cast_nullable_to_non_nullable
              as Daily?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WeatherModelImpl implements _WeatherModel {
  const _$WeatherModelImpl(
      {@JsonKey(name: "latitude") this.latitude,
      @JsonKey(name: "longitude") this.longitude,
      @JsonKey(name: "generationtime_ms") this.generationtimeMs,
      @JsonKey(name: "utc_offset_seconds") this.utcOffsetSeconds,
      @JsonKey(name: "timezone") this.timezone,
      @JsonKey(name: "timezone_abbreviation") this.timezoneAbbreviation,
      @JsonKey(name: "elevation") this.elevation,
      @JsonKey(name: "current_units") this.currentUnits,
      @JsonKey(name: "current") this.current,
      @JsonKey(name: "hourly_units") this.hourlyUnits,
      @JsonKey(name: "hourly") this.hourly,
      @JsonKey(name: "daily_units") this.dailyUnits,
      @JsonKey(name: "daily") this.daily});

  factory _$WeatherModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$WeatherModelImplFromJson(json);

  @override
  @JsonKey(name: "latitude")
  final num? latitude;
  @override
  @JsonKey(name: "longitude")
  final num? longitude;
  @override
  @JsonKey(name: "generationtime_ms")
  final num? generationtimeMs;
  @override
  @JsonKey(name: "utc_offset_seconds")
  final num? utcOffsetSeconds;
  @override
  @JsonKey(name: "timezone")
  final String? timezone;
  @override
  @JsonKey(name: "timezone_abbreviation")
  final String? timezoneAbbreviation;
  @override
  @JsonKey(name: "elevation")
  final num? elevation;
  @override
  @JsonKey(name: "current_units")
  final CurrentUnits? currentUnits;
  @override
  @JsonKey(name: "current")
  final Current? current;
  @override
  @JsonKey(name: "hourly_units")
  final HourlyUnits? hourlyUnits;
  @override
  @JsonKey(name: "hourly")
  final Hourly? hourly;
  @override
  @JsonKey(name: "daily_units")
  final DailyUnits? dailyUnits;
  @override
  @JsonKey(name: "daily")
  final Daily? daily;

  @override
  String toString() {
    return 'WeatherModel(latitude: $latitude, longitude: $longitude, generationtimeMs: $generationtimeMs, utcOffsetSeconds: $utcOffsetSeconds, timezone: $timezone, timezoneAbbreviation: $timezoneAbbreviation, elevation: $elevation, currentUnits: $currentUnits, current: $current, hourlyUnits: $hourlyUnits, hourly: $hourly, dailyUnits: $dailyUnits, daily: $daily)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherModelImpl &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.generationtimeMs, generationtimeMs) ||
                other.generationtimeMs == generationtimeMs) &&
            (identical(other.utcOffsetSeconds, utcOffsetSeconds) ||
                other.utcOffsetSeconds == utcOffsetSeconds) &&
            (identical(other.timezone, timezone) ||
                other.timezone == timezone) &&
            (identical(other.timezoneAbbreviation, timezoneAbbreviation) ||
                other.timezoneAbbreviation == timezoneAbbreviation) &&
            (identical(other.elevation, elevation) ||
                other.elevation == elevation) &&
            (identical(other.currentUnits, currentUnits) ||
                other.currentUnits == currentUnits) &&
            (identical(other.current, current) || other.current == current) &&
            (identical(other.hourlyUnits, hourlyUnits) ||
                other.hourlyUnits == hourlyUnits) &&
            (identical(other.hourly, hourly) || other.hourly == hourly) &&
            (identical(other.dailyUnits, dailyUnits) ||
                other.dailyUnits == dailyUnits) &&
            (identical(other.daily, daily) || other.daily == daily));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      latitude,
      longitude,
      generationtimeMs,
      utcOffsetSeconds,
      timezone,
      timezoneAbbreviation,
      elevation,
      currentUnits,
      current,
      hourlyUnits,
      hourly,
      dailyUnits,
      daily);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WeatherModelImplCopyWith<_$WeatherModelImpl> get copyWith =>
      __$$WeatherModelImplCopyWithImpl<_$WeatherModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WeatherModelImplToJson(
      this,
    );
  }
}

abstract class _WeatherModel implements WeatherModel {
  const factory _WeatherModel(
      {@JsonKey(name: "latitude") final num? latitude,
      @JsonKey(name: "longitude") final num? longitude,
      @JsonKey(name: "generationtime_ms") final num? generationtimeMs,
      @JsonKey(name: "utc_offset_seconds") final num? utcOffsetSeconds,
      @JsonKey(name: "timezone") final String? timezone,
      @JsonKey(name: "timezone_abbreviation")
      final String? timezoneAbbreviation,
      @JsonKey(name: "elevation") final num? elevation,
      @JsonKey(name: "current_units") final CurrentUnits? currentUnits,
      @JsonKey(name: "current") final Current? current,
      @JsonKey(name: "hourly_units") final HourlyUnits? hourlyUnits,
      @JsonKey(name: "hourly") final Hourly? hourly,
      @JsonKey(name: "daily_units") final DailyUnits? dailyUnits,
      @JsonKey(name: "daily") final Daily? daily}) = _$WeatherModelImpl;

  factory _WeatherModel.fromJson(Map<String, dynamic> json) =
      _$WeatherModelImpl.fromJson;

  @override
  @JsonKey(name: "latitude")
  num? get latitude;
  @override
  @JsonKey(name: "longitude")
  num? get longitude;
  @override
  @JsonKey(name: "generationtime_ms")
  num? get generationtimeMs;
  @override
  @JsonKey(name: "utc_offset_seconds")
  num? get utcOffsetSeconds;
  @override
  @JsonKey(name: "timezone")
  String? get timezone;
  @override
  @JsonKey(name: "timezone_abbreviation")
  String? get timezoneAbbreviation;
  @override
  @JsonKey(name: "elevation")
  num? get elevation;
  @override
  @JsonKey(name: "current_units")
  CurrentUnits? get currentUnits;
  @override
  @JsonKey(name: "current")
  Current? get current;
  @override
  @JsonKey(name: "hourly_units")
  HourlyUnits? get hourlyUnits;
  @override
  @JsonKey(name: "hourly")
  Hourly? get hourly;
  @override
  @JsonKey(name: "daily_units")
  DailyUnits? get dailyUnits;
  @override
  @JsonKey(name: "daily")
  Daily? get daily;
  @override
  @JsonKey(ignore: true)
  _$$WeatherModelImplCopyWith<_$WeatherModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Current _$CurrentFromJson(Map<String, dynamic> json) {
  return _Current.fromJson(json);
}

/// @nodoc
mixin _$Current {
  @JsonKey(name: "time")
  String? get time => throw _privateConstructorUsedError;
  @JsonKey(name: "numerval")
  num? get numerval => throw _privateConstructorUsedError;
  @JsonKey(name: "temperature_2m")
  num? get temperature2M => throw _privateConstructorUsedError;
  @JsonKey(name: "wind_speed_10m")
  num? get windSpeed10M => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CurrentCopyWith<Current> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrentCopyWith<$Res> {
  factory $CurrentCopyWith(Current value, $Res Function(Current) then) =
      _$CurrentCopyWithImpl<$Res, Current>;
  @useResult
  $Res call(
      {@JsonKey(name: "time") String? time,
      @JsonKey(name: "numerval") num? numerval,
      @JsonKey(name: "temperature_2m") num? temperature2M,
      @JsonKey(name: "wind_speed_10m") num? windSpeed10M});
}

/// @nodoc
class _$CurrentCopyWithImpl<$Res, $Val extends Current>
    implements $CurrentCopyWith<$Res> {
  _$CurrentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = freezed,
    Object? numerval = freezed,
    Object? temperature2M = freezed,
    Object? windSpeed10M = freezed,
  }) {
    return _then(_value.copyWith(
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String?,
      numerval: freezed == numerval
          ? _value.numerval
          : numerval // ignore: cast_nullable_to_non_nullable
              as num?,
      temperature2M: freezed == temperature2M
          ? _value.temperature2M
          : temperature2M // ignore: cast_nullable_to_non_nullable
              as num?,
      windSpeed10M: freezed == windSpeed10M
          ? _value.windSpeed10M
          : windSpeed10M // ignore: cast_nullable_to_non_nullable
              as num?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CurrentImplCopyWith<$Res> implements $CurrentCopyWith<$Res> {
  factory _$$CurrentImplCopyWith(
          _$CurrentImpl value, $Res Function(_$CurrentImpl) then) =
      __$$CurrentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "time") String? time,
      @JsonKey(name: "numerval") num? numerval,
      @JsonKey(name: "temperature_2m") num? temperature2M,
      @JsonKey(name: "wind_speed_10m") num? windSpeed10M});
}

/// @nodoc
class __$$CurrentImplCopyWithImpl<$Res>
    extends _$CurrentCopyWithImpl<$Res, _$CurrentImpl>
    implements _$$CurrentImplCopyWith<$Res> {
  __$$CurrentImplCopyWithImpl(
      _$CurrentImpl _value, $Res Function(_$CurrentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = freezed,
    Object? numerval = freezed,
    Object? temperature2M = freezed,
    Object? windSpeed10M = freezed,
  }) {
    return _then(_$CurrentImpl(
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String?,
      numerval: freezed == numerval
          ? _value.numerval
          : numerval // ignore: cast_nullable_to_non_nullable
              as num?,
      temperature2M: freezed == temperature2M
          ? _value.temperature2M
          : temperature2M // ignore: cast_nullable_to_non_nullable
              as num?,
      windSpeed10M: freezed == windSpeed10M
          ? _value.windSpeed10M
          : windSpeed10M // ignore: cast_nullable_to_non_nullable
              as num?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CurrentImpl implements _Current {
  const _$CurrentImpl(
      {@JsonKey(name: "time") this.time,
      @JsonKey(name: "numerval") this.numerval,
      @JsonKey(name: "temperature_2m") this.temperature2M,
      @JsonKey(name: "wind_speed_10m") this.windSpeed10M});

  factory _$CurrentImpl.fromJson(Map<String, dynamic> json) =>
      _$$CurrentImplFromJson(json);

  @override
  @JsonKey(name: "time")
  final String? time;
  @override
  @JsonKey(name: "numerval")
  final num? numerval;
  @override
  @JsonKey(name: "temperature_2m")
  final num? temperature2M;
  @override
  @JsonKey(name: "wind_speed_10m")
  final num? windSpeed10M;

  @override
  String toString() {
    return 'Current(time: $time, numerval: $numerval, temperature2M: $temperature2M, windSpeed10M: $windSpeed10M)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CurrentImpl &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.numerval, numerval) ||
                other.numerval == numerval) &&
            (identical(other.temperature2M, temperature2M) ||
                other.temperature2M == temperature2M) &&
            (identical(other.windSpeed10M, windSpeed10M) ||
                other.windSpeed10M == windSpeed10M));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, time, numerval, temperature2M, windSpeed10M);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CurrentImplCopyWith<_$CurrentImpl> get copyWith =>
      __$$CurrentImplCopyWithImpl<_$CurrentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CurrentImplToJson(
      this,
    );
  }
}

abstract class _Current implements Current {
  const factory _Current(
          {@JsonKey(name: "time") final String? time,
          @JsonKey(name: "numerval") final num? numerval,
          @JsonKey(name: "temperature_2m") final num? temperature2M,
          @JsonKey(name: "wind_speed_10m") final num? windSpeed10M}) =
      _$CurrentImpl;

  factory _Current.fromJson(Map<String, dynamic> json) = _$CurrentImpl.fromJson;

  @override
  @JsonKey(name: "time")
  String? get time;
  @override
  @JsonKey(name: "numerval")
  num? get numerval;
  @override
  @JsonKey(name: "temperature_2m")
  num? get temperature2M;
  @override
  @JsonKey(name: "wind_speed_10m")
  num? get windSpeed10M;
  @override
  @JsonKey(ignore: true)
  _$$CurrentImplCopyWith<_$CurrentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CurrentUnits _$CurrentUnitsFromJson(Map<String, dynamic> json) {
  return _CurrentUnits.fromJson(json);
}

/// @nodoc
mixin _$CurrentUnits {
  @JsonKey(name: "time")
  String? get time => throw _privateConstructorUsedError;
  @JsonKey(name: "numerval")
  String? get numerval => throw _privateConstructorUsedError;
  @JsonKey(name: "temperature_2m")
  String? get temperature2M => throw _privateConstructorUsedError;
  @JsonKey(name: "wind_speed_10m")
  String? get windSpeed10M => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CurrentUnitsCopyWith<CurrentUnits> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrentUnitsCopyWith<$Res> {
  factory $CurrentUnitsCopyWith(
          CurrentUnits value, $Res Function(CurrentUnits) then) =
      _$CurrentUnitsCopyWithImpl<$Res, CurrentUnits>;
  @useResult
  $Res call(
      {@JsonKey(name: "time") String? time,
      @JsonKey(name: "numerval") String? numerval,
      @JsonKey(name: "temperature_2m") String? temperature2M,
      @JsonKey(name: "wind_speed_10m") String? windSpeed10M});
}

/// @nodoc
class _$CurrentUnitsCopyWithImpl<$Res, $Val extends CurrentUnits>
    implements $CurrentUnitsCopyWith<$Res> {
  _$CurrentUnitsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = freezed,
    Object? numerval = freezed,
    Object? temperature2M = freezed,
    Object? windSpeed10M = freezed,
  }) {
    return _then(_value.copyWith(
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String?,
      numerval: freezed == numerval
          ? _value.numerval
          : numerval // ignore: cast_nullable_to_non_nullable
              as String?,
      temperature2M: freezed == temperature2M
          ? _value.temperature2M
          : temperature2M // ignore: cast_nullable_to_non_nullable
              as String?,
      windSpeed10M: freezed == windSpeed10M
          ? _value.windSpeed10M
          : windSpeed10M // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CurrentUnitsImplCopyWith<$Res>
    implements $CurrentUnitsCopyWith<$Res> {
  factory _$$CurrentUnitsImplCopyWith(
          _$CurrentUnitsImpl value, $Res Function(_$CurrentUnitsImpl) then) =
      __$$CurrentUnitsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "time") String? time,
      @JsonKey(name: "numerval") String? numerval,
      @JsonKey(name: "temperature_2m") String? temperature2M,
      @JsonKey(name: "wind_speed_10m") String? windSpeed10M});
}

/// @nodoc
class __$$CurrentUnitsImplCopyWithImpl<$Res>
    extends _$CurrentUnitsCopyWithImpl<$Res, _$CurrentUnitsImpl>
    implements _$$CurrentUnitsImplCopyWith<$Res> {
  __$$CurrentUnitsImplCopyWithImpl(
      _$CurrentUnitsImpl _value, $Res Function(_$CurrentUnitsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = freezed,
    Object? numerval = freezed,
    Object? temperature2M = freezed,
    Object? windSpeed10M = freezed,
  }) {
    return _then(_$CurrentUnitsImpl(
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String?,
      numerval: freezed == numerval
          ? _value.numerval
          : numerval // ignore: cast_nullable_to_non_nullable
              as String?,
      temperature2M: freezed == temperature2M
          ? _value.temperature2M
          : temperature2M // ignore: cast_nullable_to_non_nullable
              as String?,
      windSpeed10M: freezed == windSpeed10M
          ? _value.windSpeed10M
          : windSpeed10M // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CurrentUnitsImpl implements _CurrentUnits {
  const _$CurrentUnitsImpl(
      {@JsonKey(name: "time") this.time,
      @JsonKey(name: "numerval") this.numerval,
      @JsonKey(name: "temperature_2m") this.temperature2M,
      @JsonKey(name: "wind_speed_10m") this.windSpeed10M});

  factory _$CurrentUnitsImpl.fromJson(Map<String, dynamic> json) =>
      _$$CurrentUnitsImplFromJson(json);

  @override
  @JsonKey(name: "time")
  final String? time;
  @override
  @JsonKey(name: "numerval")
  final String? numerval;
  @override
  @JsonKey(name: "temperature_2m")
  final String? temperature2M;
  @override
  @JsonKey(name: "wind_speed_10m")
  final String? windSpeed10M;

  @override
  String toString() {
    return 'CurrentUnits(time: $time, numerval: $numerval, temperature2M: $temperature2M, windSpeed10M: $windSpeed10M)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CurrentUnitsImpl &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.numerval, numerval) ||
                other.numerval == numerval) &&
            (identical(other.temperature2M, temperature2M) ||
                other.temperature2M == temperature2M) &&
            (identical(other.windSpeed10M, windSpeed10M) ||
                other.windSpeed10M == windSpeed10M));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, time, numerval, temperature2M, windSpeed10M);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CurrentUnitsImplCopyWith<_$CurrentUnitsImpl> get copyWith =>
      __$$CurrentUnitsImplCopyWithImpl<_$CurrentUnitsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CurrentUnitsImplToJson(
      this,
    );
  }
}

abstract class _CurrentUnits implements CurrentUnits {
  const factory _CurrentUnits(
          {@JsonKey(name: "time") final String? time,
          @JsonKey(name: "numerval") final String? numerval,
          @JsonKey(name: "temperature_2m") final String? temperature2M,
          @JsonKey(name: "wind_speed_10m") final String? windSpeed10M}) =
      _$CurrentUnitsImpl;

  factory _CurrentUnits.fromJson(Map<String, dynamic> json) =
      _$CurrentUnitsImpl.fromJson;

  @override
  @JsonKey(name: "time")
  String? get time;
  @override
  @JsonKey(name: "numerval")
  String? get numerval;
  @override
  @JsonKey(name: "temperature_2m")
  String? get temperature2M;
  @override
  @JsonKey(name: "wind_speed_10m")
  String? get windSpeed10M;
  @override
  @JsonKey(ignore: true)
  _$$CurrentUnitsImplCopyWith<_$CurrentUnitsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Daily _$DailyFromJson(Map<String, dynamic> json) {
  return _Daily.fromJson(json);
}

/// @nodoc
mixin _$Daily {
  @JsonKey(name: "time")
  List<DateTime>? get time => throw _privateConstructorUsedError;
  @JsonKey(name: "sunrise")
  List<String>? get sunrise => throw _privateConstructorUsedError;
  @JsonKey(name: "sunset")
  List<String>? get sunset => throw _privateConstructorUsedError;
  @JsonKey(name: "uv_index_max")
  List<num>? get uvIndexMax => throw _privateConstructorUsedError;
  @JsonKey(name: "rain_sum")
  List<num>? get rainSum => throw _privateConstructorUsedError;
  @JsonKey(name: "temperature_2m_max")
  List<num>? get temperature2MMax => throw _privateConstructorUsedError;
  @JsonKey(name: "temperature_2m_min")
  List<num>? get temperature2MMin => throw _privateConstructorUsedError;
  @JsonKey(name: "wind_speed_10m_max")
  List<num>? get windSpeed10MMax => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DailyCopyWith<Daily> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DailyCopyWith<$Res> {
  factory $DailyCopyWith(Daily value, $Res Function(Daily) then) =
      _$DailyCopyWithImpl<$Res, Daily>;
  @useResult
  $Res call(
      {@JsonKey(name: "time") List<DateTime>? time,
      @JsonKey(name: "sunrise") List<String>? sunrise,
      @JsonKey(name: "sunset") List<String>? sunset,
      @JsonKey(name: "uv_index_max") List<num>? uvIndexMax,
      @JsonKey(name: "rain_sum") List<num>? rainSum,
      @JsonKey(name: "temperature_2m_max") List<num>? temperature2MMax,
      @JsonKey(name: "temperature_2m_min") List<num>? temperature2MMin,
      @JsonKey(name: "wind_speed_10m_max") List<num>? windSpeed10MMax});
}

/// @nodoc
class _$DailyCopyWithImpl<$Res, $Val extends Daily>
    implements $DailyCopyWith<$Res> {
  _$DailyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = freezed,
    Object? sunrise = freezed,
    Object? sunset = freezed,
    Object? uvIndexMax = freezed,
    Object? rainSum = freezed,
    Object? temperature2MMax = freezed,
    Object? temperature2MMin = freezed,
    Object? windSpeed10MMax = freezed,
  }) {
    return _then(_value.copyWith(
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as List<DateTime>?,
      sunrise: freezed == sunrise
          ? _value.sunrise
          : sunrise // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      sunset: freezed == sunset
          ? _value.sunset
          : sunset // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      uvIndexMax: freezed == uvIndexMax
          ? _value.uvIndexMax
          : uvIndexMax // ignore: cast_nullable_to_non_nullable
              as List<num>?,
      rainSum: freezed == rainSum
          ? _value.rainSum
          : rainSum // ignore: cast_nullable_to_non_nullable
              as List<num>?,
      temperature2MMax: freezed == temperature2MMax
          ? _value.temperature2MMax
          : temperature2MMax // ignore: cast_nullable_to_non_nullable
              as List<num>?,
      temperature2MMin: freezed == temperature2MMin
          ? _value.temperature2MMin
          : temperature2MMin // ignore: cast_nullable_to_non_nullable
              as List<num>?,
      windSpeed10MMax: freezed == windSpeed10MMax
          ? _value.windSpeed10MMax
          : windSpeed10MMax // ignore: cast_nullable_to_non_nullable
              as List<num>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DailyImplCopyWith<$Res> implements $DailyCopyWith<$Res> {
  factory _$$DailyImplCopyWith(
          _$DailyImpl value, $Res Function(_$DailyImpl) then) =
      __$$DailyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "time") List<DateTime>? time,
      @JsonKey(name: "sunrise") List<String>? sunrise,
      @JsonKey(name: "sunset") List<String>? sunset,
      @JsonKey(name: "uv_index_max") List<num>? uvIndexMax,
      @JsonKey(name: "rain_sum") List<num>? rainSum,
      @JsonKey(name: "temperature_2m_max") List<num>? temperature2MMax,
      @JsonKey(name: "temperature_2m_min") List<num>? temperature2MMin,
      @JsonKey(name: "wind_speed_10m_max") List<num>? windSpeed10MMax});
}

/// @nodoc
class __$$DailyImplCopyWithImpl<$Res>
    extends _$DailyCopyWithImpl<$Res, _$DailyImpl>
    implements _$$DailyImplCopyWith<$Res> {
  __$$DailyImplCopyWithImpl(
      _$DailyImpl _value, $Res Function(_$DailyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = freezed,
    Object? sunrise = freezed,
    Object? sunset = freezed,
    Object? uvIndexMax = freezed,
    Object? rainSum = freezed,
    Object? temperature2MMax = freezed,
    Object? temperature2MMin = freezed,
    Object? windSpeed10MMax = freezed,
  }) {
    return _then(_$DailyImpl(
      time: freezed == time
          ? _value._time
          : time // ignore: cast_nullable_to_non_nullable
              as List<DateTime>?,
      sunrise: freezed == sunrise
          ? _value._sunrise
          : sunrise // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      sunset: freezed == sunset
          ? _value._sunset
          : sunset // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      uvIndexMax: freezed == uvIndexMax
          ? _value._uvIndexMax
          : uvIndexMax // ignore: cast_nullable_to_non_nullable
              as List<num>?,
      rainSum: freezed == rainSum
          ? _value._rainSum
          : rainSum // ignore: cast_nullable_to_non_nullable
              as List<num>?,
      temperature2MMax: freezed == temperature2MMax
          ? _value._temperature2MMax
          : temperature2MMax // ignore: cast_nullable_to_non_nullable
              as List<num>?,
      temperature2MMin: freezed == temperature2MMin
          ? _value._temperature2MMin
          : temperature2MMin // ignore: cast_nullable_to_non_nullable
              as List<num>?,
      windSpeed10MMax: freezed == windSpeed10MMax
          ? _value._windSpeed10MMax
          : windSpeed10MMax // ignore: cast_nullable_to_non_nullable
              as List<num>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DailyImpl implements _Daily {
  const _$DailyImpl(
      {@JsonKey(name: "time") final List<DateTime>? time,
      @JsonKey(name: "sunrise") final List<String>? sunrise,
      @JsonKey(name: "sunset") final List<String>? sunset,
      @JsonKey(name: "uv_index_max") final List<num>? uvIndexMax,
      @JsonKey(name: "rain_sum") final List<num>? rainSum,
      @JsonKey(name: "temperature_2m_max") final List<num>? temperature2MMax,
      @JsonKey(name: "temperature_2m_min") final List<num>? temperature2MMin,
      @JsonKey(name: "wind_speed_10m_max") final List<num>? windSpeed10MMax})
      : _time = time,
        _sunrise = sunrise,
        _sunset = sunset,
        _uvIndexMax = uvIndexMax,
        _rainSum = rainSum,
        _temperature2MMax = temperature2MMax,
        _temperature2MMin = temperature2MMin,
        _windSpeed10MMax = windSpeed10MMax;

  factory _$DailyImpl.fromJson(Map<String, dynamic> json) =>
      _$$DailyImplFromJson(json);

  final List<DateTime>? _time;
  @override
  @JsonKey(name: "time")
  List<DateTime>? get time {
    final value = _time;
    if (value == null) return null;
    if (_time is EqualUnmodifiableListView) return _time;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _sunrise;
  @override
  @JsonKey(name: "sunrise")
  List<String>? get sunrise {
    final value = _sunrise;
    if (value == null) return null;
    if (_sunrise is EqualUnmodifiableListView) return _sunrise;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _sunset;
  @override
  @JsonKey(name: "sunset")
  List<String>? get sunset {
    final value = _sunset;
    if (value == null) return null;
    if (_sunset is EqualUnmodifiableListView) return _sunset;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<num>? _uvIndexMax;
  @override
  @JsonKey(name: "uv_index_max")
  List<num>? get uvIndexMax {
    final value = _uvIndexMax;
    if (value == null) return null;
    if (_uvIndexMax is EqualUnmodifiableListView) return _uvIndexMax;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<num>? _rainSum;
  @override
  @JsonKey(name: "rain_sum")
  List<num>? get rainSum {
    final value = _rainSum;
    if (value == null) return null;
    if (_rainSum is EqualUnmodifiableListView) return _rainSum;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<num>? _temperature2MMax;
  @override
  @JsonKey(name: "temperature_2m_max")
  List<num>? get temperature2MMax {
    final value = _temperature2MMax;
    if (value == null) return null;
    if (_temperature2MMax is EqualUnmodifiableListView)
      return _temperature2MMax;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<num>? _temperature2MMin;
  @override
  @JsonKey(name: "temperature_2m_min")
  List<num>? get temperature2MMin {
    final value = _temperature2MMin;
    if (value == null) return null;
    if (_temperature2MMin is EqualUnmodifiableListView)
      return _temperature2MMin;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<num>? _windSpeed10MMax;
  @override
  @JsonKey(name: "wind_speed_10m_max")
  List<num>? get windSpeed10MMax {
    final value = _windSpeed10MMax;
    if (value == null) return null;
    if (_windSpeed10MMax is EqualUnmodifiableListView) return _windSpeed10MMax;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Daily(time: $time, sunrise: $sunrise, sunset: $sunset, uvIndexMax: $uvIndexMax, rainSum: $rainSum, temperature2MMax: $temperature2MMax, temperature2MMin: $temperature2MMin, windSpeed10MMax: $windSpeed10MMax)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DailyImpl &&
            const DeepCollectionEquality().equals(other._time, _time) &&
            const DeepCollectionEquality().equals(other._sunrise, _sunrise) &&
            const DeepCollectionEquality().equals(other._sunset, _sunset) &&
            const DeepCollectionEquality()
                .equals(other._uvIndexMax, _uvIndexMax) &&
            const DeepCollectionEquality().equals(other._rainSum, _rainSum) &&
            const DeepCollectionEquality()
                .equals(other._temperature2MMax, _temperature2MMax) &&
            const DeepCollectionEquality()
                .equals(other._temperature2MMin, _temperature2MMin) &&
            const DeepCollectionEquality()
                .equals(other._windSpeed10MMax, _windSpeed10MMax));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_time),
      const DeepCollectionEquality().hash(_sunrise),
      const DeepCollectionEquality().hash(_sunset),
      const DeepCollectionEquality().hash(_uvIndexMax),
      const DeepCollectionEquality().hash(_rainSum),
      const DeepCollectionEquality().hash(_temperature2MMax),
      const DeepCollectionEquality().hash(_temperature2MMin),
      const DeepCollectionEquality().hash(_windSpeed10MMax));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DailyImplCopyWith<_$DailyImpl> get copyWith =>
      __$$DailyImplCopyWithImpl<_$DailyImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DailyImplToJson(
      this,
    );
  }
}

abstract class _Daily implements Daily {
  const factory _Daily(
      {@JsonKey(name: "time") final List<DateTime>? time,
      @JsonKey(name: "sunrise") final List<String>? sunrise,
      @JsonKey(name: "sunset") final List<String>? sunset,
      @JsonKey(name: "uv_index_max") final List<num>? uvIndexMax,
      @JsonKey(name: "rain_sum") final List<num>? rainSum,
      @JsonKey(name: "temperature_2m_max") final List<num>? temperature2MMax,
      @JsonKey(name: "temperature_2m_min") final List<num>? temperature2MMin,
      @JsonKey(name: "wind_speed_10m_max")
      final List<num>? windSpeed10MMax}) = _$DailyImpl;

  factory _Daily.fromJson(Map<String, dynamic> json) = _$DailyImpl.fromJson;

  @override
  @JsonKey(name: "time")
  List<DateTime>? get time;
  @override
  @JsonKey(name: "sunrise")
  List<String>? get sunrise;
  @override
  @JsonKey(name: "sunset")
  List<String>? get sunset;
  @override
  @JsonKey(name: "uv_index_max")
  List<num>? get uvIndexMax;
  @override
  @JsonKey(name: "rain_sum")
  List<num>? get rainSum;
  @override
  @JsonKey(name: "temperature_2m_max")
  List<num>? get temperature2MMax;
  @override
  @JsonKey(name: "temperature_2m_min")
  List<num>? get temperature2MMin;
  @override
  @JsonKey(name: "wind_speed_10m_max")
  List<num>? get windSpeed10MMax;
  @override
  @JsonKey(ignore: true)
  _$$DailyImplCopyWith<_$DailyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DailyUnits _$DailyUnitsFromJson(Map<String, dynamic> json) {
  return _DailyUnits.fromJson(json);
}

/// @nodoc
mixin _$DailyUnits {
  @JsonKey(name: "time")
  String? get time => throw _privateConstructorUsedError;
  @JsonKey(name: "sunrise")
  String? get sunrise => throw _privateConstructorUsedError;
  @JsonKey(name: "sunset")
  String? get sunset => throw _privateConstructorUsedError;
  @JsonKey(name: "uv_index_max")
  String? get uvIndexMax => throw _privateConstructorUsedError;
  @JsonKey(name: "rain_sum")
  String? get rainSum => throw _privateConstructorUsedError;
  @JsonKey(name: "temperature_2m_max")
  String? get temperature2MMax => throw _privateConstructorUsedError;
  @JsonKey(name: "temperature_2m_min")
  String? get temperature2MMin => throw _privateConstructorUsedError;
  @JsonKey(name: "wind_speed_10m_max")
  String? get windSpeed10MMax => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DailyUnitsCopyWith<DailyUnits> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DailyUnitsCopyWith<$Res> {
  factory $DailyUnitsCopyWith(
          DailyUnits value, $Res Function(DailyUnits) then) =
      _$DailyUnitsCopyWithImpl<$Res, DailyUnits>;
  @useResult
  $Res call(
      {@JsonKey(name: "time") String? time,
      @JsonKey(name: "sunrise") String? sunrise,
      @JsonKey(name: "sunset") String? sunset,
      @JsonKey(name: "uv_index_max") String? uvIndexMax,
      @JsonKey(name: "rain_sum") String? rainSum,
      @JsonKey(name: "temperature_2m_max") String? temperature2MMax,
      @JsonKey(name: "temperature_2m_min") String? temperature2MMin,
      @JsonKey(name: "wind_speed_10m_max") String? windSpeed10MMax});
}

/// @nodoc
class _$DailyUnitsCopyWithImpl<$Res, $Val extends DailyUnits>
    implements $DailyUnitsCopyWith<$Res> {
  _$DailyUnitsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = freezed,
    Object? sunrise = freezed,
    Object? sunset = freezed,
    Object? uvIndexMax = freezed,
    Object? rainSum = freezed,
    Object? temperature2MMax = freezed,
    Object? temperature2MMin = freezed,
    Object? windSpeed10MMax = freezed,
  }) {
    return _then(_value.copyWith(
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String?,
      sunrise: freezed == sunrise
          ? _value.sunrise
          : sunrise // ignore: cast_nullable_to_non_nullable
              as String?,
      sunset: freezed == sunset
          ? _value.sunset
          : sunset // ignore: cast_nullable_to_non_nullable
              as String?,
      uvIndexMax: freezed == uvIndexMax
          ? _value.uvIndexMax
          : uvIndexMax // ignore: cast_nullable_to_non_nullable
              as String?,
      rainSum: freezed == rainSum
          ? _value.rainSum
          : rainSum // ignore: cast_nullable_to_non_nullable
              as String?,
      temperature2MMax: freezed == temperature2MMax
          ? _value.temperature2MMax
          : temperature2MMax // ignore: cast_nullable_to_non_nullable
              as String?,
      temperature2MMin: freezed == temperature2MMin
          ? _value.temperature2MMin
          : temperature2MMin // ignore: cast_nullable_to_non_nullable
              as String?,
      windSpeed10MMax: freezed == windSpeed10MMax
          ? _value.windSpeed10MMax
          : windSpeed10MMax // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DailyUnitsImplCopyWith<$Res>
    implements $DailyUnitsCopyWith<$Res> {
  factory _$$DailyUnitsImplCopyWith(
          _$DailyUnitsImpl value, $Res Function(_$DailyUnitsImpl) then) =
      __$$DailyUnitsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "time") String? time,
      @JsonKey(name: "sunrise") String? sunrise,
      @JsonKey(name: "sunset") String? sunset,
      @JsonKey(name: "uv_index_max") String? uvIndexMax,
      @JsonKey(name: "rain_sum") String? rainSum,
      @JsonKey(name: "temperature_2m_max") String? temperature2MMax,
      @JsonKey(name: "temperature_2m_min") String? temperature2MMin,
      @JsonKey(name: "wind_speed_10m_max") String? windSpeed10MMax});
}

/// @nodoc
class __$$DailyUnitsImplCopyWithImpl<$Res>
    extends _$DailyUnitsCopyWithImpl<$Res, _$DailyUnitsImpl>
    implements _$$DailyUnitsImplCopyWith<$Res> {
  __$$DailyUnitsImplCopyWithImpl(
      _$DailyUnitsImpl _value, $Res Function(_$DailyUnitsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = freezed,
    Object? sunrise = freezed,
    Object? sunset = freezed,
    Object? uvIndexMax = freezed,
    Object? rainSum = freezed,
    Object? temperature2MMax = freezed,
    Object? temperature2MMin = freezed,
    Object? windSpeed10MMax = freezed,
  }) {
    return _then(_$DailyUnitsImpl(
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String?,
      sunrise: freezed == sunrise
          ? _value.sunrise
          : sunrise // ignore: cast_nullable_to_non_nullable
              as String?,
      sunset: freezed == sunset
          ? _value.sunset
          : sunset // ignore: cast_nullable_to_non_nullable
              as String?,
      uvIndexMax: freezed == uvIndexMax
          ? _value.uvIndexMax
          : uvIndexMax // ignore: cast_nullable_to_non_nullable
              as String?,
      rainSum: freezed == rainSum
          ? _value.rainSum
          : rainSum // ignore: cast_nullable_to_non_nullable
              as String?,
      temperature2MMax: freezed == temperature2MMax
          ? _value.temperature2MMax
          : temperature2MMax // ignore: cast_nullable_to_non_nullable
              as String?,
      temperature2MMin: freezed == temperature2MMin
          ? _value.temperature2MMin
          : temperature2MMin // ignore: cast_nullable_to_non_nullable
              as String?,
      windSpeed10MMax: freezed == windSpeed10MMax
          ? _value.windSpeed10MMax
          : windSpeed10MMax // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DailyUnitsImpl implements _DailyUnits {
  const _$DailyUnitsImpl(
      {@JsonKey(name: "time") this.time,
      @JsonKey(name: "sunrise") this.sunrise,
      @JsonKey(name: "sunset") this.sunset,
      @JsonKey(name: "uv_index_max") this.uvIndexMax,
      @JsonKey(name: "rain_sum") this.rainSum,
      @JsonKey(name: "temperature_2m_max") this.temperature2MMax,
      @JsonKey(name: "temperature_2m_min") this.temperature2MMin,
      @JsonKey(name: "wind_speed_10m_max") this.windSpeed10MMax});

  factory _$DailyUnitsImpl.fromJson(Map<String, dynamic> json) =>
      _$$DailyUnitsImplFromJson(json);

  @override
  @JsonKey(name: "time")
  final String? time;
  @override
  @JsonKey(name: "sunrise")
  final String? sunrise;
  @override
  @JsonKey(name: "sunset")
  final String? sunset;
  @override
  @JsonKey(name: "uv_index_max")
  final String? uvIndexMax;
  @override
  @JsonKey(name: "rain_sum")
  final String? rainSum;
  @override
  @JsonKey(name: "temperature_2m_max")
  final String? temperature2MMax;
  @override
  @JsonKey(name: "temperature_2m_min")
  final String? temperature2MMin;
  @override
  @JsonKey(name: "wind_speed_10m_max")
  final String? windSpeed10MMax;

  @override
  String toString() {
    return 'DailyUnits(time: $time, sunrise: $sunrise, sunset: $sunset, uvIndexMax: $uvIndexMax, rainSum: $rainSum, temperature2MMax: $temperature2MMax, temperature2MMin: $temperature2MMin, windSpeed10MMax: $windSpeed10MMax)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DailyUnitsImpl &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.sunrise, sunrise) || other.sunrise == sunrise) &&
            (identical(other.sunset, sunset) || other.sunset == sunset) &&
            (identical(other.uvIndexMax, uvIndexMax) ||
                other.uvIndexMax == uvIndexMax) &&
            (identical(other.rainSum, rainSum) || other.rainSum == rainSum) &&
            (identical(other.temperature2MMax, temperature2MMax) ||
                other.temperature2MMax == temperature2MMax) &&
            (identical(other.temperature2MMin, temperature2MMin) ||
                other.temperature2MMin == temperature2MMin) &&
            (identical(other.windSpeed10MMax, windSpeed10MMax) ||
                other.windSpeed10MMax == windSpeed10MMax));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, time, sunrise, sunset,
      uvIndexMax, rainSum, temperature2MMax, temperature2MMin, windSpeed10MMax);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DailyUnitsImplCopyWith<_$DailyUnitsImpl> get copyWith =>
      __$$DailyUnitsImplCopyWithImpl<_$DailyUnitsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DailyUnitsImplToJson(
      this,
    );
  }
}

abstract class _DailyUnits implements DailyUnits {
  const factory _DailyUnits(
          {@JsonKey(name: "time") final String? time,
          @JsonKey(name: "sunrise") final String? sunrise,
          @JsonKey(name: "sunset") final String? sunset,
          @JsonKey(name: "uv_index_max") final String? uvIndexMax,
          @JsonKey(name: "rain_sum") final String? rainSum,
          @JsonKey(name: "temperature_2m_max") final String? temperature2MMax,
          @JsonKey(name: "temperature_2m_min") final String? temperature2MMin,
          @JsonKey(name: "wind_speed_10m_max") final String? windSpeed10MMax}) =
      _$DailyUnitsImpl;

  factory _DailyUnits.fromJson(Map<String, dynamic> json) =
      _$DailyUnitsImpl.fromJson;

  @override
  @JsonKey(name: "time")
  String? get time;
  @override
  @JsonKey(name: "sunrise")
  String? get sunrise;
  @override
  @JsonKey(name: "sunset")
  String? get sunset;
  @override
  @JsonKey(name: "uv_index_max")
  String? get uvIndexMax;
  @override
  @JsonKey(name: "rain_sum")
  String? get rainSum;
  @override
  @JsonKey(name: "temperature_2m_max")
  String? get temperature2MMax;
  @override
  @JsonKey(name: "temperature_2m_min")
  String? get temperature2MMin;
  @override
  @JsonKey(name: "wind_speed_10m_max")
  String? get windSpeed10MMax;
  @override
  @JsonKey(ignore: true)
  _$$DailyUnitsImplCopyWith<_$DailyUnitsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Hourly _$HourlyFromJson(Map<String, dynamic> json) {
  return _Hourly.fromJson(json);
}

/// @nodoc
mixin _$Hourly {
  @JsonKey(name: "time")
  List<String>? get time => throw _privateConstructorUsedError;
  @JsonKey(name: "temperature_2m")
  List<num>? get temperature2M => throw _privateConstructorUsedError;
  @JsonKey(name: "relative_humidity_2m")
  List<num>? get relativeHumidity2M => throw _privateConstructorUsedError;
  @JsonKey(name: "wind_speed_10m")
  List<num>? get windSpeed10M => throw _privateConstructorUsedError;
  @JsonKey(name: "rain")
  List<num>? get rain => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HourlyCopyWith<Hourly> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HourlyCopyWith<$Res> {
  factory $HourlyCopyWith(Hourly value, $Res Function(Hourly) then) =
      _$HourlyCopyWithImpl<$Res, Hourly>;
  @useResult
  $Res call(
      {@JsonKey(name: "time") List<String>? time,
      @JsonKey(name: "temperature_2m") List<num>? temperature2M,
      @JsonKey(name: "relative_humidity_2m") List<num>? relativeHumidity2M,
      @JsonKey(name: "wind_speed_10m") List<num>? windSpeed10M,
      @JsonKey(name: "rain") List<num>? rain});
}

/// @nodoc
class _$HourlyCopyWithImpl<$Res, $Val extends Hourly>
    implements $HourlyCopyWith<$Res> {
  _$HourlyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = freezed,
    Object? temperature2M = freezed,
    Object? relativeHumidity2M = freezed,
    Object? windSpeed10M = freezed,
    Object? rain = freezed,
  }) {
    return _then(_value.copyWith(
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      temperature2M: freezed == temperature2M
          ? _value.temperature2M
          : temperature2M // ignore: cast_nullable_to_non_nullable
              as List<num>?,
      relativeHumidity2M: freezed == relativeHumidity2M
          ? _value.relativeHumidity2M
          : relativeHumidity2M // ignore: cast_nullable_to_non_nullable
              as List<num>?,
      windSpeed10M: freezed == windSpeed10M
          ? _value.windSpeed10M
          : windSpeed10M // ignore: cast_nullable_to_non_nullable
              as List<num>?,
      rain: freezed == rain
          ? _value.rain
          : rain // ignore: cast_nullable_to_non_nullable
              as List<num>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HourlyImplCopyWith<$Res> implements $HourlyCopyWith<$Res> {
  factory _$$HourlyImplCopyWith(
          _$HourlyImpl value, $Res Function(_$HourlyImpl) then) =
      __$$HourlyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "time") List<String>? time,
      @JsonKey(name: "temperature_2m") List<num>? temperature2M,
      @JsonKey(name: "relative_humidity_2m") List<num>? relativeHumidity2M,
      @JsonKey(name: "wind_speed_10m") List<num>? windSpeed10M,
      @JsonKey(name: "rain") List<num>? rain});
}

/// @nodoc
class __$$HourlyImplCopyWithImpl<$Res>
    extends _$HourlyCopyWithImpl<$Res, _$HourlyImpl>
    implements _$$HourlyImplCopyWith<$Res> {
  __$$HourlyImplCopyWithImpl(
      _$HourlyImpl _value, $Res Function(_$HourlyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = freezed,
    Object? temperature2M = freezed,
    Object? relativeHumidity2M = freezed,
    Object? windSpeed10M = freezed,
    Object? rain = freezed,
  }) {
    return _then(_$HourlyImpl(
      time: freezed == time
          ? _value._time
          : time // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      temperature2M: freezed == temperature2M
          ? _value._temperature2M
          : temperature2M // ignore: cast_nullable_to_non_nullable
              as List<num>?,
      relativeHumidity2M: freezed == relativeHumidity2M
          ? _value._relativeHumidity2M
          : relativeHumidity2M // ignore: cast_nullable_to_non_nullable
              as List<num>?,
      windSpeed10M: freezed == windSpeed10M
          ? _value._windSpeed10M
          : windSpeed10M // ignore: cast_nullable_to_non_nullable
              as List<num>?,
      rain: freezed == rain
          ? _value._rain
          : rain // ignore: cast_nullable_to_non_nullable
              as List<num>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HourlyImpl implements _Hourly {
  const _$HourlyImpl(
      {@JsonKey(name: "time") final List<String>? time,
      @JsonKey(name: "temperature_2m") final List<num>? temperature2M,
      @JsonKey(name: "relative_humidity_2m")
      final List<num>? relativeHumidity2M,
      @JsonKey(name: "wind_speed_10m") final List<num>? windSpeed10M,
      @JsonKey(name: "rain") final List<num>? rain})
      : _time = time,
        _temperature2M = temperature2M,
        _relativeHumidity2M = relativeHumidity2M,
        _windSpeed10M = windSpeed10M,
        _rain = rain;

  factory _$HourlyImpl.fromJson(Map<String, dynamic> json) =>
      _$$HourlyImplFromJson(json);

  final List<String>? _time;
  @override
  @JsonKey(name: "time")
  List<String>? get time {
    final value = _time;
    if (value == null) return null;
    if (_time is EqualUnmodifiableListView) return _time;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<num>? _temperature2M;
  @override
  @JsonKey(name: "temperature_2m")
  List<num>? get temperature2M {
    final value = _temperature2M;
    if (value == null) return null;
    if (_temperature2M is EqualUnmodifiableListView) return _temperature2M;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<num>? _relativeHumidity2M;
  @override
  @JsonKey(name: "relative_humidity_2m")
  List<num>? get relativeHumidity2M {
    final value = _relativeHumidity2M;
    if (value == null) return null;
    if (_relativeHumidity2M is EqualUnmodifiableListView)
      return _relativeHumidity2M;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<num>? _windSpeed10M;
  @override
  @JsonKey(name: "wind_speed_10m")
  List<num>? get windSpeed10M {
    final value = _windSpeed10M;
    if (value == null) return null;
    if (_windSpeed10M is EqualUnmodifiableListView) return _windSpeed10M;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<num>? _rain;
  @override
  @JsonKey(name: "rain")
  List<num>? get rain {
    final value = _rain;
    if (value == null) return null;
    if (_rain is EqualUnmodifiableListView) return _rain;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Hourly(time: $time, temperature2M: $temperature2M, relativeHumidity2M: $relativeHumidity2M, windSpeed10M: $windSpeed10M, rain: $rain)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HourlyImpl &&
            const DeepCollectionEquality().equals(other._time, _time) &&
            const DeepCollectionEquality()
                .equals(other._temperature2M, _temperature2M) &&
            const DeepCollectionEquality()
                .equals(other._relativeHumidity2M, _relativeHumidity2M) &&
            const DeepCollectionEquality()
                .equals(other._windSpeed10M, _windSpeed10M) &&
            const DeepCollectionEquality().equals(other._rain, _rain));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_time),
      const DeepCollectionEquality().hash(_temperature2M),
      const DeepCollectionEquality().hash(_relativeHumidity2M),
      const DeepCollectionEquality().hash(_windSpeed10M),
      const DeepCollectionEquality().hash(_rain));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HourlyImplCopyWith<_$HourlyImpl> get copyWith =>
      __$$HourlyImplCopyWithImpl<_$HourlyImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HourlyImplToJson(
      this,
    );
  }
}

abstract class _Hourly implements Hourly {
  const factory _Hourly(
      {@JsonKey(name: "time") final List<String>? time,
      @JsonKey(name: "temperature_2m") final List<num>? temperature2M,
      @JsonKey(name: "relative_humidity_2m")
      final List<num>? relativeHumidity2M,
      @JsonKey(name: "wind_speed_10m") final List<num>? windSpeed10M,
      @JsonKey(name: "rain") final List<num>? rain}) = _$HourlyImpl;

  factory _Hourly.fromJson(Map<String, dynamic> json) = _$HourlyImpl.fromJson;

  @override
  @JsonKey(name: "time")
  List<String>? get time;
  @override
  @JsonKey(name: "temperature_2m")
  List<num>? get temperature2M;
  @override
  @JsonKey(name: "relative_humidity_2m")
  List<num>? get relativeHumidity2M;
  @override
  @JsonKey(name: "wind_speed_10m")
  List<num>? get windSpeed10M;
  @override
  @JsonKey(name: "rain")
  List<num>? get rain;
  @override
  @JsonKey(ignore: true)
  _$$HourlyImplCopyWith<_$HourlyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

HourlyUnits _$HourlyUnitsFromJson(Map<String, dynamic> json) {
  return _HourlyUnits.fromJson(json);
}

/// @nodoc
mixin _$HourlyUnits {
  @JsonKey(name: "time")
  String? get time => throw _privateConstructorUsedError;
  @JsonKey(name: "temperature_2m")
  String? get temperature2M => throw _privateConstructorUsedError;
  @JsonKey(name: "relative_humidity_2m")
  String? get relativeHumidity2M => throw _privateConstructorUsedError;
  @JsonKey(name: "wind_speed_10m")
  String? get windSpeed10M => throw _privateConstructorUsedError;
  @JsonKey(name: "rain")
  String? get rain => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HourlyUnitsCopyWith<HourlyUnits> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HourlyUnitsCopyWith<$Res> {
  factory $HourlyUnitsCopyWith(
          HourlyUnits value, $Res Function(HourlyUnits) then) =
      _$HourlyUnitsCopyWithImpl<$Res, HourlyUnits>;
  @useResult
  $Res call(
      {@JsonKey(name: "time") String? time,
      @JsonKey(name: "temperature_2m") String? temperature2M,
      @JsonKey(name: "relative_humidity_2m") String? relativeHumidity2M,
      @JsonKey(name: "wind_speed_10m") String? windSpeed10M,
      @JsonKey(name: "rain") String? rain});
}

/// @nodoc
class _$HourlyUnitsCopyWithImpl<$Res, $Val extends HourlyUnits>
    implements $HourlyUnitsCopyWith<$Res> {
  _$HourlyUnitsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = freezed,
    Object? temperature2M = freezed,
    Object? relativeHumidity2M = freezed,
    Object? windSpeed10M = freezed,
    Object? rain = freezed,
  }) {
    return _then(_value.copyWith(
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String?,
      temperature2M: freezed == temperature2M
          ? _value.temperature2M
          : temperature2M // ignore: cast_nullable_to_non_nullable
              as String?,
      relativeHumidity2M: freezed == relativeHumidity2M
          ? _value.relativeHumidity2M
          : relativeHumidity2M // ignore: cast_nullable_to_non_nullable
              as String?,
      windSpeed10M: freezed == windSpeed10M
          ? _value.windSpeed10M
          : windSpeed10M // ignore: cast_nullable_to_non_nullable
              as String?,
      rain: freezed == rain
          ? _value.rain
          : rain // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HourlyUnitsImplCopyWith<$Res>
    implements $HourlyUnitsCopyWith<$Res> {
  factory _$$HourlyUnitsImplCopyWith(
          _$HourlyUnitsImpl value, $Res Function(_$HourlyUnitsImpl) then) =
      __$$HourlyUnitsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "time") String? time,
      @JsonKey(name: "temperature_2m") String? temperature2M,
      @JsonKey(name: "relative_humidity_2m") String? relativeHumidity2M,
      @JsonKey(name: "wind_speed_10m") String? windSpeed10M,
      @JsonKey(name: "rain") String? rain});
}

/// @nodoc
class __$$HourlyUnitsImplCopyWithImpl<$Res>
    extends _$HourlyUnitsCopyWithImpl<$Res, _$HourlyUnitsImpl>
    implements _$$HourlyUnitsImplCopyWith<$Res> {
  __$$HourlyUnitsImplCopyWithImpl(
      _$HourlyUnitsImpl _value, $Res Function(_$HourlyUnitsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = freezed,
    Object? temperature2M = freezed,
    Object? relativeHumidity2M = freezed,
    Object? windSpeed10M = freezed,
    Object? rain = freezed,
  }) {
    return _then(_$HourlyUnitsImpl(
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String?,
      temperature2M: freezed == temperature2M
          ? _value.temperature2M
          : temperature2M // ignore: cast_nullable_to_non_nullable
              as String?,
      relativeHumidity2M: freezed == relativeHumidity2M
          ? _value.relativeHumidity2M
          : relativeHumidity2M // ignore: cast_nullable_to_non_nullable
              as String?,
      windSpeed10M: freezed == windSpeed10M
          ? _value.windSpeed10M
          : windSpeed10M // ignore: cast_nullable_to_non_nullable
              as String?,
      rain: freezed == rain
          ? _value.rain
          : rain // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HourlyUnitsImpl implements _HourlyUnits {
  const _$HourlyUnitsImpl(
      {@JsonKey(name: "time") this.time,
      @JsonKey(name: "temperature_2m") this.temperature2M,
      @JsonKey(name: "relative_humidity_2m") this.relativeHumidity2M,
      @JsonKey(name: "wind_speed_10m") this.windSpeed10M,
      @JsonKey(name: "rain") this.rain});

  factory _$HourlyUnitsImpl.fromJson(Map<String, dynamic> json) =>
      _$$HourlyUnitsImplFromJson(json);

  @override
  @JsonKey(name: "time")
  final String? time;
  @override
  @JsonKey(name: "temperature_2m")
  final String? temperature2M;
  @override
  @JsonKey(name: "relative_humidity_2m")
  final String? relativeHumidity2M;
  @override
  @JsonKey(name: "wind_speed_10m")
  final String? windSpeed10M;
  @override
  @JsonKey(name: "rain")
  final String? rain;

  @override
  String toString() {
    return 'HourlyUnits(time: $time, temperature2M: $temperature2M, relativeHumidity2M: $relativeHumidity2M, windSpeed10M: $windSpeed10M, rain: $rain)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HourlyUnitsImpl &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.temperature2M, temperature2M) ||
                other.temperature2M == temperature2M) &&
            (identical(other.relativeHumidity2M, relativeHumidity2M) ||
                other.relativeHumidity2M == relativeHumidity2M) &&
            (identical(other.windSpeed10M, windSpeed10M) ||
                other.windSpeed10M == windSpeed10M) &&
            (identical(other.rain, rain) || other.rain == rain));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, time, temperature2M, relativeHumidity2M, windSpeed10M, rain);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HourlyUnitsImplCopyWith<_$HourlyUnitsImpl> get copyWith =>
      __$$HourlyUnitsImplCopyWithImpl<_$HourlyUnitsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HourlyUnitsImplToJson(
      this,
    );
  }
}

abstract class _HourlyUnits implements HourlyUnits {
  const factory _HourlyUnits(
      {@JsonKey(name: "time") final String? time,
      @JsonKey(name: "temperature_2m") final String? temperature2M,
      @JsonKey(name: "relative_humidity_2m") final String? relativeHumidity2M,
      @JsonKey(name: "wind_speed_10m") final String? windSpeed10M,
      @JsonKey(name: "rain") final String? rain}) = _$HourlyUnitsImpl;

  factory _HourlyUnits.fromJson(Map<String, dynamic> json) =
      _$HourlyUnitsImpl.fromJson;

  @override
  @JsonKey(name: "time")
  String? get time;
  @override
  @JsonKey(name: "temperature_2m")
  String? get temperature2M;
  @override
  @JsonKey(name: "relative_humidity_2m")
  String? get relativeHumidity2M;
  @override
  @JsonKey(name: "wind_speed_10m")
  String? get windSpeed10M;
  @override
  @JsonKey(name: "rain")
  String? get rain;
  @override
  @JsonKey(ignore: true)
  _$$HourlyUnitsImplCopyWith<_$HourlyUnitsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
