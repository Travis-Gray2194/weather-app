// ignore_for_file: avoid_dynamic_calls, lines_longer_than_80_chars

import 'package:dio/dio.dart';
import 'package:weather/src/services/logging_service.dart';

class LoggingInterceptor extends Interceptor {
  LoggingInterceptor(this._logger);

  final LoggingService _logger;

  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) {
    _logger.logInfo({
      'type': 'Request--->',
      'url': options.uri.toString(),
      'method': options.method,
      'payload': options.data.toString(),
    });
    handler.next(options);
  }

  @override
  Future<void> onResponse(
    Response<dynamic> response,
    ResponseInterceptorHandler handler,
  ) async {
    _logger.logMessage(
      {
        'type': 'Response<---',
        'http_code': response.statusCode,
        'url': response.realUri.toString(),
        'response': response.data,
      }.toString(),
    );

    handler.next(response);
  }

  @override
  Future<void> onError(
    DioException err,
    ErrorInterceptorHandler handler,
  ) async {
    _logger.logError(err, null);
    handler.next(err);
  }
}
