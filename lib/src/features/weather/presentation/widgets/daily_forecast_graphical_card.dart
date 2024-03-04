import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather/src/core/constants/app_spacing.dart';
import 'package:weather/src/core/extensions/context_extension.dart';
import 'package:weather/src/core/extensions/extensions.dart';
import 'package:weather/src/features/weather/presentation/bloc/weather_bloc.dart';
import 'package:weather/src/features/weather/presentation/widgets/time_chart.dart';
import 'package:weather/src/gen/assets.gen.dart';

class DailyForecastGraphicalCard extends StatelessWidget {
  const DailyForecastGraphicalCard({
    super.key,
  });

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
      child: Column(
        children: [
          Row(
            children: [
              AppAssets.svgs.daily.svg(
                width: 38.radius,
              ),
              AppSpacing.horizontalSpaceSmall,
              Text(
                'Day Rain Sum Forecast',
                style: context.textTheme.displayLarge?.copyWith(
                  fontSize: 16.fontSize,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ],
          ),
          AppSpacing.setVerticalSpace(18),
          SizedBox(
            height: 180.height,
            width: 380.width,
            child: BlocBuilder<WeatherBloc, WeatherState>(
              builder: (context, state) {
                if (state.weather?.daily?.time == null) {
                  return DailyForecastChart.withSampleData();
                }
                return DailyForecastChart(
                  animate: true,
                  seriesList: DailyForecastChart.createSeriesData(
                    List.generate(
                      state.weather?.daily?.temperature2MMax?.length ?? 0,
                      (index) => DailySeriesForecast(
                        time: state.weather!.daily!.time![index],
                        weather: state.weather!.daily!.temperature2MMax![index],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
