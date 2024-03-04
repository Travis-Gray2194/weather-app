import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:weather/src/core/error/exceptions.dart';
import 'package:weather/src/features/weather/data/datasources/local_data_source/weather_local_data_source.dart';
import 'package:weather/src/features/weather/data/models/weather_model.dart';
import 'package:weather/src/services/local_storage_service.dart';
import 'package:weather/src/services/logging_service.dart';

class MockLocalStorageService extends Mock implements LocalStorageService {}

class MockLoggingService extends Mock implements LoggingService {}

void main() {
  late WeatherLocalDataSourceImpl dataSource;
  late MockLocalStorageService mockLocalStorageService;
  late MockLoggingService mockLoggingService;

  setUp(() {
    mockLocalStorageService = MockLocalStorageService();
    mockLoggingService = MockLoggingService();
    dataSource = WeatherLocalDataSourceImpl(
      mockLocalStorageService,
      mockLoggingService,
    );
  });

  group('weather_local_data_source...', () {
    group('saveWeather', () {
      test('should call LocalStorageService to save data', () {
        // Arrange
        const testWeatherModel = WeatherModel(); // create your test model here

        // Act
        dataSource.saveWeather(testWeatherModel);

        // Assert
        verify(
          () => mockLocalStorageService.savePreference(
            key: 'weather',
            data: any(named: 'data'),
          ),
        ).called(1);
      });

      test('should call LoggingService in case of error', () {
        // Arrange
        const testWeatherModel = WeatherModel(); // create your test model here
        when(
          () => mockLocalStorageService.savePreference(
            key: any(named: 'key'),
            data: any(named: 'data'),
          ),
        ).thenThrow(Exception());

        // Act
        dataSource.saveWeather(testWeatherModel);

        // Assert
        verify(() => mockLoggingService.logError(any(), any())).called(1);
      });
    });

    group('getWeather', () {
      test('should return WeatherModel from LocalStorageService', () async {
        // Arrange
        const testWeatherModel = WeatherModel(); // create your test model here
        when(
          () => mockLocalStorageService.getPreference(
            key: any(named: 'key'),
          ),
        ).thenReturn('{}');

        // Act
        final result = await dataSource.getWeather();

        // Assert
        expect(result, equals(testWeatherModel));
      });

      test('should throw a CacheException if no data is found', () async {
        // Arrange
        when(
          () => mockLocalStorageService.getPreference(
            key: any(named: 'key'),
          ),
        ).thenReturn(null);

        // Act
        final call = dataSource.getWeather;

        // Assert
        expect(call, throwsA(isA<CacheException>()));
      });
    });
  });
}
