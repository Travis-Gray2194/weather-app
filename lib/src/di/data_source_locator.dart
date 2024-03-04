part of 'locator.dart';

void _initDataSource() {
  locator
    ..registerLazySingleton<WeatherLocalDataSource>(
      () => WeatherLocalDataSourceImpl(locator(), locator()),
    )
    ..registerLazySingleton<WeatherRemoteDataSource>(
      () => WeatherRemoteDataSourceImpl(locator()),
    );
}
