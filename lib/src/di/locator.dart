import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:logger/logger.dart';
import 'package:weather/src/core/constants/app_env.dart';
import 'package:weather/src/core/networking/interceptors/dio_interceptors.dart';
import 'package:weather/src/features/weather/data/client/weather_client.dart';
import 'package:weather/src/features/weather/data/datasources/local_data_source/weather_local_data_source.dart';
import 'package:weather/src/features/weather/data/datasources/remote_data_source/weather_remote_data_source.dart';
import 'package:weather/src/features/weather/data/repositories/weather_repository_impl.dart';
import 'package:weather/src/features/weather/domain/repositories/weather_repository.dart';
import 'package:weather/src/features/weather/domain/usecases/get_weather_use_case.dart';
import 'package:weather/src/services/geo_coder_service.dart';
import 'package:weather/src/services/local_storage_service.dart';
import 'package:weather/src/services/location_service.dart';
import 'package:weather/src/services/logging_service.dart';

part 'client_locator.dart';
part 'data_source_locator.dart';
part 'external_locator.dart';
part 'repository_locator.dart';
part 'service_locator.dart';
part 'use_case_locator.dart';

final locator = GetIt.instance;

void initLocator() {
  _initExternal();
  _initClients();
  _initDataSource();
  _initRepositoryLocator();
  _initUseCaseLocator();
  _initServices();
}
