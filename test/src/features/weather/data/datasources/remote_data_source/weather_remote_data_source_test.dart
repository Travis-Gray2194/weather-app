import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:weather/src/features/weather/data/client/weather_client.dart';
import 'package:weather/src/features/weather/data/datasources/remote_data_source/weather_remote_data_source.dart';
import 'package:weather/src/features/weather/data/models/weather_model.dart';

class MockWeatherClient extends Mock implements WeatherClient {}

void main() {
  late WeatherRemoteDataSourceImpl dataSource;
  late MockWeatherClient mockClient;

  setUp(() {
    mockClient = MockWeatherClient();
    dataSource = WeatherRemoteDataSourceImpl(mockClient);
  });

  group('weather remote data source ...', () {
    group('getWeather', () {
    const longitude = 0.0;
    const latitude = 0.0;

    test('should return WeatherModel when the call is successful', () async {
      // Arrange
      const expectedWeatherModel = WeatherModel();
      when(() => mockClient.getWeather(longitude, latitude))
          .thenAnswer((_) async => expectedWeatherModel);

      // Act
      final result = await dataSource.getWeather(
        longitude: longitude,
        latitude: latitude,
      );

      // Assert
      expect(result, equals(expectedWeatherModel));
      verify(() => mockClient.getWeather(longitude, latitude)).called(1);
    });

    test('should throw an exception when the call fails', () async {
      // Arrange
      when(() => mockClient.getWeather(longitude, latitude))
          .thenThrow(Exception());

      // Act & Assert
      expect(() => dataSource.getWeather(
        longitude: longitude,
        latitude: latitude,
      ), throwsA(isA<Exception>()),);
      verify(() => mockClient.getWeather(longitude, latitude)).called(1);
    });
  });
  });
}
