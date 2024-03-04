import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather_model.freezed.dart';
part 'weather_model.g.dart';


@freezed
class WeatherModel with _$WeatherModel {
    const factory WeatherModel({
        @JsonKey(name: "latitude")
        num? latitude,
        @JsonKey(name: "longitude")
        num? longitude,
        @JsonKey(name: "generationtime_ms")
        num? generationtimeMs,
        @JsonKey(name: "utc_offset_seconds")
        num? utcOffsetSeconds,
        @JsonKey(name: "timezone")
        String? timezone,
        @JsonKey(name: "timezone_abbreviation")
        String? timezoneAbbreviation,
        @JsonKey(name: "elevation")
        num? elevation,
        @JsonKey(name: "current_units")
        CurrentUnits? currentUnits,
        @JsonKey(name: "current")
        Current? current,
        @JsonKey(name: "hourly_units")
        HourlyUnits? hourlyUnits,
        @JsonKey(name: "hourly")
        Hourly? hourly,
        @JsonKey(name: "daily_units")
        DailyUnits? dailyUnits,
        @JsonKey(name: "daily")
        Daily? daily,
    }) = _WeatherModel;

    factory WeatherModel.fromJson(Map<String, dynamic> json) => _$WeatherModelFromJson(json);
}

@freezed
class Current with _$Current {
    const factory Current({
        @JsonKey(name: "time")
        String? time,
        @JsonKey(name: "numerval")
        num? numerval,
        @JsonKey(name: "temperature_2m")
        num? temperature2M,
        @JsonKey(name: "wind_speed_10m")
        num? windSpeed10M,
    }) = _Current;

    factory Current.fromJson(Map<String, dynamic> json) => _$CurrentFromJson(json);
}

@freezed
class CurrentUnits with _$CurrentUnits {
    const factory CurrentUnits({
        @JsonKey(name: "time")
        String? time,
        @JsonKey(name: "numerval")
        String? numerval,
        @JsonKey(name: "temperature_2m")
        String? temperature2M,
        @JsonKey(name: "wind_speed_10m")
        String? windSpeed10M,
    }) = _CurrentUnits;

    factory CurrentUnits.fromJson(Map<String, dynamic> json) => _$CurrentUnitsFromJson(json);
}

@freezed
class Daily with _$Daily {
    const factory Daily({
        @JsonKey(name: "time")
        List<DateTime>? time,
        @JsonKey(name: "sunrise")
        List<String>? sunrise,
        @JsonKey(name: "sunset")
        List<String>? sunset,
        @JsonKey(name: "uv_index_max")
        List<num>? uvIndexMax,
        @JsonKey(name: "rain_sum")
        List<num>? rainSum,
        @JsonKey(name: "temperature_2m_max")
        List<num>? temperature2MMax,
        @JsonKey(name: "temperature_2m_min")
        List<num>? temperature2MMin,
        @JsonKey(name: "wind_speed_10m_max")
        List<num>? windSpeed10MMax,
    }) = _Daily;

    factory Daily.fromJson(Map<String, dynamic> json) => _$DailyFromJson(json);
}

@freezed
class DailyUnits with _$DailyUnits {
    const factory DailyUnits({
        @JsonKey(name: "time")
        String? time,
        @JsonKey(name: "sunrise")
        String? sunrise,
        @JsonKey(name: "sunset")
        String? sunset,
        @JsonKey(name: "uv_index_max")
        String? uvIndexMax,
        @JsonKey(name: "rain_sum")
        String? rainSum,
        @JsonKey(name: "temperature_2m_max")
        String? temperature2MMax,
        @JsonKey(name: "temperature_2m_min")
        String? temperature2MMin,
        @JsonKey(name: "wind_speed_10m_max")
        String? windSpeed10MMax,
    }) = _DailyUnits;

    factory DailyUnits.fromJson(Map<String, dynamic> json) => _$DailyUnitsFromJson(json);
}

@freezed
class Hourly with _$Hourly {
    const factory Hourly({
        @JsonKey(name: "time")
        List<String>? time,
        @JsonKey(name: "temperature_2m")
        List<num>? temperature2M,
        @JsonKey(name: "relative_humidity_2m")
        List<num>? relativeHumidity2M,
        @JsonKey(name: "wind_speed_10m")
        List<num>? windSpeed10M,
        @JsonKey(name: "rain")
        List<num>? rain,
    }) = _Hourly;

    factory Hourly.fromJson(Map<String, dynamic> json) => _$HourlyFromJson(json);
}

@freezed
class HourlyUnits with _$HourlyUnits {
    const factory HourlyUnits({
        @JsonKey(name: "time")
        String? time,
        @JsonKey(name: "temperature_2m")
        String? temperature2M,
        @JsonKey(name: "relative_humidity_2m")
        String? relativeHumidity2M,
        @JsonKey(name: "wind_speed_10m")
        String? windSpeed10M,
        @JsonKey(name: "rain")
        String? rain,
    }) = _HourlyUnits;

    factory HourlyUnits.fromJson(Map<String, dynamic> json) => _$HourlyUnitsFromJson(json);
}
