part of 'locator.dart';

Future<void> _initUseCaseLocator() async {
  locator.registerLazySingleton<GetWeatherUseCase>(
    () => GetWeatherUseCase(
      locator(),
    ),
  );
}
