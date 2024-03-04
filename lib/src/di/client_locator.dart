part of 'locator.dart';

void _initClients() {
  locator.registerLazySingleton<WeatherClient>(() => WeatherClient(locator()));
}
