part of 'locator.dart';

Future<void> _initRepositoryLocator() async {
  locator.registerLazySingleton<WeatherRepository>(
    () => WeatherRepositoryImpl(locator(), locator()),
  );
}
