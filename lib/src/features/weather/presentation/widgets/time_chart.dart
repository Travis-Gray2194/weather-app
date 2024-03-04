import 'package:charts_flutter_new/flutter.dart' as charts;
import 'package:flutter/material.dart';
import 'package:weather/src/core/extensions/extensions.dart';

class DailyForecastChart extends StatelessWidget {
  const DailyForecastChart({
    required this.animate,
    required this.seriesList,
    super.key,
  });

  factory DailyForecastChart.withSampleData() {
    return DailyForecastChart(
      seriesList: createSeriesData([
        DailySeriesForecast(
          time: DateTime.now().subtract(const Duration(days: 3)),
          weather: 5,
        ),
        DailySeriesForecast(
          time: DateTime.now().subtract(const Duration(days: 2)),
          weather: 25,
        ),
        DailySeriesForecast(
          time: DateTime.now().subtract(const Duration(days: 1)),
          weather: 10,
        ),
        DailySeriesForecast(time: DateTime.now(), weather: 75),
        DailySeriesForecast(
          time: DateTime.now().add(const Duration(days: 1)),
          weather: 35,
        ),
        DailySeriesForecast(
          time: DateTime.now().add(const Duration(days: 2)),
          weather: 15,
        ),
        DailySeriesForecast(
          time: DateTime.now().add(const Duration(days: 3)),
          weather: 5,
        ),
      ]),
      // Disable animations for image tests.
      animate: true,
    );
  }
  final List<charts.Series<DailySeriesForecast, DateTime>> seriesList;
  final bool animate;

  @override
  Widget build(BuildContext context) {
    return charts.TimeSeriesChart(
      seriesList,
      animate: animate,

      // Optionally pass in a [DateTimeFactory] used by the chart. The factory
      // should create the same type of [DateTime] as the data provided. If none
      // specified, the default creates local date time.
      dateTimeFactory: const charts.LocalDateTimeFactory(),
    );
  }

  /// Create one series with sample hard coded data.
  static List<charts.Series<DailySeriesForecast, DateTime>> createSeriesData(
      List<DailySeriesForecast> data,) {
    return [
      charts.Series<DailySeriesForecast, DateTime>(
        id: 'Daily Forecast',
        colorFn: (_, __) => charts.Color.fromHex(code: '0021005D'),
        domainFn: (DailySeriesForecast forecast, _) => forecast.time,
        measureFn: (DailySeriesForecast forecast, _) => forecast.weather,
        data: data,
        domainLowerBoundFn: (datum, index) => DateTime.now().subtract(
          const Duration(days: 3),
        ),
        measureLowerBoundFn: (datum, index) => -10,
        strokeWidthPxFn: (datum, index) => 3.radius,
        radiusPxFn: (datum, index) => 10.radius,
      ),
    ];
  }
}

class DailySeriesForecast {
  DailySeriesForecast({required this.time, required this.weather});

  final DateTime time;
  final num weather;
}
