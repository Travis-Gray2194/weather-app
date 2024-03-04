part of 'locator.dart';

void _initServices() {
  locator
    ..registerLazySingleton<LoggingService>(
      () => LoggingServiceImpl(locator()),
    )
    ..registerLazySingleton<LocationService>(
      LocationServiceImpl.new,
    )
    ..registerLazySingleton<GeoCoderService>(
     GeoCoderServiceImpl.new,
    )
    ..registerLazySingleton<LocalStorageService>(
      LocalStorageServiceImpl.new,
    );
}
