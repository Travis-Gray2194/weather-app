import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:weather/src/core/constants/app_spacing.dart';
import 'package:weather/src/core/extensions/context_extension.dart';
import 'package:weather/src/core/extensions/extensions.dart';
import 'package:weather/src/core/utils/helper.dart';
import 'package:weather/src/features/weather/presentation/bloc/weather_bloc.dart';
import 'package:weather/src/gen/assets.gen.dart';

class HourlyForecastCard extends StatelessWidget {
  const HourlyForecastCard({
    super.key,
    this.isToday = true,
  });

  final bool isToday;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12.radius),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          18.radius,
        ),
        color: const Color(0xFFD0BCFF).withOpacity(.3),
      ),
      child: BlocBuilder<WeatherBloc, WeatherState>(
        builder: (context, state) {
          final now = isToday
              ? DateTime.now()
              : DateTime.now().add(
                  const Duration(days: 1),
                );
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
          return Column(
            children: [
              Row(
                children: [
                  AppAssets.svgs.history.svg(
                    width: 38.radius,
                  ),
                  AppSpacing.horizontalSpaceSmall,
                  Text(
                    'Hourly forecast',
                    style: context.textTheme.displayLarge?.copyWith(
                      fontSize: 16.fontSize,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ],
              ),
              AppSpacing.setVerticalSpace(18),
              SizedBox(
                height: 112.height,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (_, index) {
                    final hourlyIndex = state.weather?.hourly?.time
                            ?.indexOf(todayHours[index]) ??
                        0;

                    final weatherCondition = getWeatherCondition(
                      temperature: state
                              .weather?.hourly?.temperature2M?[hourlyIndex]
                              .toDouble() ??
                          0,
                      rain: state.weather?.hourly?.rain?[isToday ? 3 : 4]
                              .toDouble() ??
                          0,
                    );

                    return Column(
                      children: [
                        Text(
                          (DateTime.tryParse(
                                                state.weather?.hourly
                                                        ?.time?[hourlyIndex] ??
                                                    '',
                                              ) ??
                                              now)
                                          .hour ==
                                      now.hour &&
                                  isToday
                              ? 'Now'
                              : DateFormat('hh a').format(
                                  DateTime.tryParse(
                                        state.weather?.hourly
                                                ?.time?[hourlyIndex] ??
                                            '',
                                      ) ??
                                      now,
                                ),
                          style: context.textTheme.displayLarge?.copyWith(
                            fontSize: 13.6.fontSize,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        AppSpacing.setVerticalSpace(12.height),
                        weatherCondition.icon.svg(
                          width: 24.radius,
                          height: 32.height,
                        ),
                        AppSpacing.setVerticalSpace(12.height),
                        Text(
                          // ignore: lines_longer_than_80_chars
                          '${state.weather?.hourly?.temperature2M?[hourlyIndex]}°',
                          style: context.textTheme.displayLarge?.copyWith(
                            fontSize: 18.8.fontSize,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    );
                  },
                  separatorBuilder: (_, __) =>
                      AppSpacing.setHorizontalSpace(33.4.width),
                  itemCount: todayHours.length,
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
