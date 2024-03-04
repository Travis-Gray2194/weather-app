import 'dart:io' show stdout;
import 'package:dio/dio.dart';

import 'package:logger/logger.dart';

abstract class LoggingService {
  void logMessage(String message);
  void logError(Object error, StackTrace? trace, {bool crashlytics = true});
  void logInfo(dynamic message);
}

class LoggingServiceImpl implements LoggingService {
  const LoggingServiceImpl(this._logger);
  final Logger _logger;

  @override
  void logMessage(String message) {
    stdout.writeln(message);
  }

  @override
  void logError(Object error, StackTrace? trace, {bool crashlytics = true}) {
    _logger.e('An Error Occurred', error: error, stackTrace: trace);

    if (error is DioException) {
      _logger.e({
        'type': 'Response<---',
        'url': error.response?.realUri.toString(),
        'http_code': error.response?.statusCode,
        'response': error.response?.data ?? 'N/A',
      });
      if (error.response?.statusCode == 401) {
        return;
      }
    } else {
      _logger.e({
        'type': 'Error<---',
        'error': error.toString(),
        'trace': trace.toString(),
      });
    }
  }

  @override
  void logInfo(dynamic message) {
    _logger.i(message);
  }
}
