// ignore_for_file: lines_longer_than_80_chars

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:weather/src/core/constants/app_colors.dart';
import 'package:weather/src/core/constants/app_spacing.dart';
import 'package:weather/src/core/extensions/context_extension.dart';
import 'package:weather/src/core/extensions/extensions.dart';
import 'package:weather/src/features/weather/presentation/bloc/weather_bloc.dart';
import 'package:weather/src/features/weather/presentation/widgets/chance_of_rain_card.dart';
import 'package:weather/src/features/weather/presentation/widgets/daily_forecast_graphical_card.dart';
import 'package:weather/src/features/weather/presentation/widgets/hourly_forecast_card.dart';
import 'package:weather/src/gen/assets.gen.dart';

class DailyForecast extends StatelessWidget {
  const DailyForecast({
    super.key,
    this.isToday = true,
  });

  final bool isToday;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WeatherBloc, WeatherState>(
      builder: (context, state) {
        final index = isToday ? 3 : 4;
        final now = DateTime.now();
        final sunsetDate =
            DateTime.tryParse(state.weather?.daily?.sunset?[index] ?? '') ??
                now;
        final sunsetHourDifference = sunsetDate.difference(now).inHours;
        final sunRiseDate =
            DateTime.tryParse(state.weather?.daily?.sunrise?[index] ?? '') ??
                now;
        final sunRiseHourDifference = sunRiseDate.difference(now).inHours;

        final todayHours = state.weather?.hourly?.time?.where(
              (element) {
                return element.contains(
                  DateTime.utc(now.year, now.month, now.day)
                      .toIso8601String()
                      .replaceAll('T00:00:00.000Z', ''),
                );
              },
            ).toList() ??
            [];

        final hourlyLastIndex =
            state.weather?.hourly?.time?.indexOf(todayHours.lastOrNull ?? '') ??
                0;
        return Column(
          children: [
            Wrap(
              runSpacing: 12.height,
              spacing: 16.width,
              children: [
                (
                  title: 'Wind speed',
                  value: '${state.weather?.current?.windSpeed10M}km/h',
                  icon: AppAssets.svgs.wind,
                ),
                (
                  title: 'Rain sum',
                  value:
                      '${state.weather?.daily?.rainSum?[index]}${state.weather?.dailyUnits?.rainSum ?? ''}',
                  icon: AppAssets.svgs.rainChance,
                ),
                (
                  title: 'Relative Humidity',
                  value:
                      '${state.weather?.hourly?.relativeHumidity2M?[hourlyLastIndex] ?? ''}${state.weather?.hourlyUnits?.relativeHumidity2M ?? ''}',
                  icon: AppAssets.svgs.pressure,
                ),
                (
                  title: 'UV Index',
                  value:
                      '${state.weather?.daily?.uvIndexMax?[index]}${state.weather?.dailyUnits?.uvIndexMax}',
                  icon: AppAssets.svgs.uvIndex,
                ),
              ]
                  .map(
                    (e) => Container(
                      width: 182.width,
                      height: 65.height,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          16.radius,
                        ),
                        color: const Color(0xFFD0BCFF).withOpacity(.3),
                      ),
                      padding: EdgeInsets.symmetric(
                        vertical: 9.height,
                        horizontal: 11.width,
                      ),
                      child: Row(
                        children: [
                          CircleAvatar(
                            backgroundColor: AppColors.kcWhiteColor,
                            radius: 16.radius,
                            child: e.icon.svg(
                              width: 18.radius,
                            ),
                          ),
                          AppSpacing.setHorizontalSpace(18),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                e.title,
                                style: context.textTheme.displayLarge?.copyWith(
                                  fontSize: 14.fontSize,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Text(
                                e.value,
                                style: context.textTheme.displayLarge?.copyWith(
                                  fontSize: 16.fontSize,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  )
                  .toList(),
            ),
            AppSpacing.verticalSpaceMedium,
            HourlyForecastCard(
              isToday: isToday,
            ),
            AppSpacing.verticalSpaceMedium,
            const DailyForecastGraphicalCard(),
            AppSpacing.setVerticalSpace(24),
            const ChanceOfRainCard(),
            AppSpacing.setVerticalSpace(24),
            Row(
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 12.radius,
                      vertical: 10.radius,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        18.radius,
                      ),
                      color: const Color(0xFFD0BCFF).withOpacity(.3),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        AppAssets.svgs.sunrise.svg(
                          width: 38.radius,
                        ),
                        AppSpacing.setVerticalSpace(13),
                        Expanded(
                          child: Column(
                            children: [
                              Text(
                                'Sunrise',
                                style: context.textTheme.displayLarge?.copyWith(
                                  fontSize: 14.fontSize,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              AppSpacing.verticalSpaceTiny,
                              Text(
                                DateFormat('hh:mm a').format(sunRiseDate),
                                style: context.textTheme.displayLarge?.copyWith(
                                  fontSize: 14.fontSize,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Text(
                          '${sunRiseHourDifference}h ago',
                          style: context.textTheme.displayLarge?.copyWith(
                            fontSize: 10.fontSize,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                AppSpacing.setHorizontalSpace(20),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 12.radius,
                      vertical: 10.radius,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        18.radius,
                      ),
                      color: const Color(0xFFD0BCFF).withOpacity(.3),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        AppAssets.svgs.sunrise.svg(
                          width: 38.radius,
                        ),
                        AppSpacing.setVerticalSpace(13),
                        Expanded(
                          child: Column(
                            children: [
                              Text(
                                'Sunset',
                                style: context.textTheme.displayLarge?.copyWith(
                                  fontSize: 14.fontSize,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              AppSpacing.verticalSpaceTiny,
                              Text(
                                DateFormat('hh:mm a').format(sunsetDate),
                                style: context.textTheme.displayLarge?.copyWith(
                                  fontSize: 14.fontSize,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Text(
                          'in ${sunsetHourDifference}h',
                          style: context.textTheme.displayLarge?.copyWith(
                            fontSize: 10.fontSize,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            AppSpacing.setVerticalSpace(50),
          ],
        );
      },
    );
  }
}
