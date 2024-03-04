// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WeatherModelImpl _$$WeatherModelImplFromJson(Map<String, dynamic> json) =>
    _$WeatherModelImpl(
      latitude: json['latitude'] as num?,
      longitude: json['longitude'] as num?,
      generationtimeMs: json['generationtime_ms'] as num?,
      utcOffsetSeconds: json['utc_offset_seconds'] as num?,
      timezone: json['timezone'] as String?,
      timezoneAbbreviation: json['timezone_abbreviation'] as String?,
      elevation: json['elevation'] as num?,
      currentUnits: json['current_units'] == null
          ? null
          : CurrentUnits.fromJson(
              json['current_units'] as Map<String, dynamic>),
      current: json['current'] == null
          ? null
          : Current.fromJson(json['current'] as Map<String, dynamic>),
      hourlyUnits: json['hourly_units'] == null
          ? null
          : HourlyUnits.fromJson(json['hourly_units'] as Map<String, dynamic>),
      hourly: json['hourly'] == null
          ? null
          : Hourly.fromJson(json['hourly'] as Map<String, dynamic>),
      dailyUnits: json['daily_units'] == null
          ? null
          : DailyUnits.fromJson(json['daily_units'] as Map<String, dynamic>),
      daily: json['daily'] == null
          ? null
          : Daily.fromJson(json['daily'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$WeatherModelImplToJson(_$WeatherModelImpl instance) =>
    <String, dynamic>{
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'generationtime_ms': instance.generationtimeMs,
      'utc_offset_seconds': instance.utcOffsetSeconds,
      'timezone': instance.timezone,
      'timezone_abbreviation': instance.timezoneAbbreviation,
      'elevation': instance.elevation,
      'current_units': instance.currentUnits,
      'current': instance.current,
      'hourly_units': instance.hourlyUnits,
      'hourly': instance.hourly,
      'daily_units': instance.dailyUnits,
      'daily': instance.daily,
    };

_$CurrentImpl _$$CurrentImplFromJson(Map<String, dynamic> json) =>
    _$CurrentImpl(
      time: json['time'] as String?,
      numerval: json['numerval'] as num?,
      temperature2M: json['temperature_2m'] as num?,
      windSpeed10M: json['wind_speed_10m'] as num?,
    );

Map<String, dynamic> _$$CurrentImplToJson(_$CurrentImpl instance) =>
    <String, dynamic>{
      'time': instance.time,
      'numerval': instance.numerval,
      'temperature_2m': instance.temperature2M,
      'wind_speed_10m': instance.windSpeed10M,
    };

_$CurrentUnitsImpl _$$CurrentUnitsImplFromJson(Map<String, dynamic> json) =>
    _$CurrentUnitsImpl(
      time: json['time'] as String?,
      numerval: json['numerval'] as String?,
      temperature2M: json['temperature_2m'] as String?,
      windSpeed10M: json['wind_speed_10m'] as String?,
    );

Map<String, dynamic> _$$CurrentUnitsImplToJson(_$CurrentUnitsImpl instance) =>
    <String, dynamic>{
      'time': instance.time,
      'numerval': instance.numerval,
      'temperature_2m': instance.temperature2M,
      'wind_speed_10m': instance.windSpeed10M,
    };

_$DailyImpl _$$DailyImplFromJson(Map<String, dynamic> json) => _$DailyImpl(
      time: (json['time'] as List<dynamic>?)
          ?.map((e) => DateTime.parse(e as String))
          .toList(),
      sunrise:
          (json['sunrise'] as List<dynamic>?)?.map((e) => e as String).toList(),
      sunset:
          (json['sunset'] as List<dynamic>?)?.map((e) => e as String).toList(),
      uvIndexMax: (json['uv_index_max'] as List<dynamic>?)
          ?.map((e) => e as num)
          .toList(),
      rainSum:
          (json['rain_sum'] as List<dynamic>?)?.map((e) => e as num).toList(),
      temperature2MMax: (json['temperature_2m_max'] as List<dynamic>?)
          ?.map((e) => e as num)
          .toList(),
      temperature2MMin: (json['temperature_2m_min'] as List<dynamic>?)
          ?.map((e) => e as num)
          .toList(),
      windSpeed10MMax: (json['wind_speed_10m_max'] as List<dynamic>?)
          ?.map((e) => e as num)
          .toList(),
    );

Map<String, dynamic> _$$DailyImplToJson(_$DailyImpl instance) =>
    <String, dynamic>{
      'time': instance.time?.map((e) => e.toIso8601String()).toList(),
      'sunrise': instance.sunrise,
      'sunset': instance.sunset,
      'uv_index_max': instance.uvIndexMax,
      'rain_sum': instance.rainSum,
      'temperature_2m_max': instance.temperature2MMax,
      'temperature_2m_min': instance.temperature2MMin,
      'wind_speed_10m_max': instance.windSpeed10MMax,
    };

_$DailyUnitsImpl _$$DailyUnitsImplFromJson(Map<String, dynamic> json) =>
    _$DailyUnitsImpl(
      time: json['time'] as String?,
      sunrise: json['sunrise'] as String?,
      sunset: json['sunset'] as String?,
      uvIndexMax: json['uv_index_max'] as String?,
      rainSum: json['rain_sum'] as String?,
      temperature2MMax: json['temperature_2m_max'] as String?,
      temperature2MMin: json['temperature_2m_min'] as String?,
      windSpeed10MMax: json['wind_speed_10m_max'] as String?,
    );

Map<String, dynamic> _$$DailyUnitsImplToJson(_$DailyUnitsImpl instance) =>
    <String, dynamic>{
      'time': instance.time,
      'sunrise': instance.sunrise,
      'sunset': instance.sunset,
      'uv_index_max': instance.uvIndexMax,
      'rain_sum': instance.rainSum,
      'temperature_2m_max': instance.temperature2MMax,
      'temperature_2m_min': instance.temperature2MMin,
      'wind_speed_10m_max': instance.windSpeed10MMax,
    };

_$HourlyImpl _$$HourlyImplFromJson(Map<String, dynamic> json) => _$HourlyImpl(
      time: (json['time'] as List<dynamic>?)?.map((e) => e as String).toList(),
      temperature2M: (json['temperature_2m'] as List<dynamic>?)
          ?.map((e) => e as num)
          .toList(),
      relativeHumidity2M: (json['relative_humidity_2m'] as List<dynamic>?)
          ?.map((e) => e as num)
          .toList(),
      windSpeed10M: (json['wind_speed_10m'] as List<dynamic>?)
          ?.map((e) => e as num)
          .toList(),
      rain: (json['rain'] as List<dynamic>?)?.map((e) => e as num).toList(),
    );

Map<String, dynamic> _$$HourlyImplToJson(_$HourlyImpl instance) =>
    <String, dynamic>{
      'time': instance.time,
      'temperature_2m': instance.temperature2M,
      'relative_humidity_2m': instance.relativeHumidity2M,
      'wind_speed_10m': instance.windSpeed10M,
      'rain': instance.rain,
    };

_$HourlyUnitsImpl _$$HourlyUnitsImplFromJson(Map<String, dynamic> json) =>
    _$HourlyUnitsImpl(
      time: json['time'] as String?,
      temperature2M: json['temperature_2m'] as String?,
      relativeHumidity2M: json['relative_humidity_2m'] as String?,
      windSpeed10M: json['wind_speed_10m'] as String?,
      rain: json['rain'] as String?,
    );

Map<String, dynamic> _$$HourlyUnitsImplToJson(_$HourlyUnitsImpl instance) =>
    <String, dynamic>{
      'time': instance.time,
      'temperature_2m': instance.temperature2M,
      'relative_humidity_2m': instance.relativeHumidity2M,
      'wind_speed_10m': instance.windSpeed10M,
      'rain': instance.rain,
    };
