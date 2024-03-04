import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:weather/src/core/error/failure.dart';
import 'package:weather/src/core/utils/either.dart';
import 'package:weather/src/features/weather/data/models/weather_model.dart';
import 'package:weather/src/features/weather/domain/repositories/weather_repository.dart';
import 'package:weather/src/features/weather/domain/usecases/get_weather_use_case.dart';

class MockWeatherRepository extends Mock implements WeatherRepository {}

void main() {
  late GetWeatherUseCase useCase;
  late MockWeatherRepository mockRepository;

  setUp(() {
    mockRepository = MockWeatherRepository();
    useCase = GetWeatherUseCase(mockRepository);
  });
  group('get weather use case ...', () {
    const longitude = 0.0;
    const latitude = 0.0;
    const params = GetWeatherParams(latitude: latitude, longitude: longitude);

    test('should return WeatherModel when call is successful', () async {
      // Arrange
      const expectedWeatherModel = WeatherModel();
      when(
        () => mockRepository.getWeather(
          longitude: longitude,
          latitude: latitude,
        ),
      ).thenAnswer((_) async => const Right(expectedWeatherModel));

      // Act
      final result = await useCase(params);

      // Assert
      expect(
        result,
        equals(const Right<Failure, WeatherModel>(expectedWeatherModel)),
      );
      verify(
        () => mockRepository.getWeather(
          longitude: longitude,
          latitude: latitude,
        ),
      ).called(1);
    });

    test('should return a failure when call fails', () async {
      // Arrange
      when(
        () => mockRepository.getWeather(
          longitude: longitude,
          latitude: latitude,
        ),
      ).thenAnswer(
        (_) async => const Left(ServerFailure()),
      );

      // Act
      final result = await useCase(params);

      // Assert
      expect(result, isA<Left<Failure, WeatherModel>>());
      verify(
        () => mockRepository.getWeather(
          longitude: longitude,
          latitude: latitude,
        ),
      ).called(1);
    });
  });
}
