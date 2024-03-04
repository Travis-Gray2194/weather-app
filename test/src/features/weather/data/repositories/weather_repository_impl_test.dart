import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:weather/src/core/error/failure.dart';
import 'package:weather/src/core/utils/either.dart';
import 'package:weather/src/features/weather/data/datasources/local_data_source/weather_local_data_source.dart';
import 'package:weather/src/features/weather/data/datasources/remote_data_source/weather_remote_data_source.dart';
import 'package:weather/src/features/weather/data/models/weather_model.dart';
import 'package:weather/src/features/weather/data/repositories/weather_repository_impl.dart';

class MockWeatherRemoteDataSource extends Mock
    implements WeatherRemoteDataSource {}

class MockWeatherLocalDataSource extends Mock
    implements WeatherLocalDataSource {}

void main() {
  late WeatherRepositoryImpl repository;
  late MockWeatherRemoteDataSource mockRemoteDataSource;
  late MockWeatherLocalDataSource mockLocalDataSource;

  setUp(() {
    mockRemoteDataSource = MockWeatherRemoteDataSource();
    mockLocalDataSource = MockWeatherLocalDataSource();
    repository = WeatherRepositoryImpl(
      mockLocalDataSource,
      mockRemoteDataSource,
    );
  });
  group('weather repository impl ...', () {
    group('getWeather', () {
      const longitude = 0.0;
      const latitude = 0.0;

      test('should return data from remote data source when call is successful',
          () async {
        // Arrange
        const expectedWeatherModel =
            WeatherModel(); // Insert expected WeatherModel here
        when(
          () => mockRemoteDataSource.getWeather(
            longitude: longitude,
            latitude: latitude,
          ),
        ).thenAnswer((_) async => expectedWeatherModel);

        // Act
        final result = await repository.getWeather(
          longitude: longitude,
          latitude: latitude,
        );

        // Assert
        expect(result, isA<Right<Failure, WeatherModel>>());
        verify(
          () => mockRemoteDataSource.getWeather(
            longitude: longitude,
            latitude: latitude,
          ),
        ).called(1);
        verifyNever(() => mockLocalDataSource.getWeather());
        verify(() => mockLocalDataSource.saveWeather(expectedWeatherModel))
            .called(1);
      });
    });
  });
}
