import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:weather/src/core/error/exceptions.dart';
import 'package:weather/src/core/error/failure.dart';
import 'package:weather/src/core/utils/either.dart';
import 'package:weather/src/core/utils/error_message_handler.dart';

extension RepositoryExtension<T> on Future<T> {
  Future<Either<Failure, T>> makeRequest() async {
    try {
      final data = await this;
      return Right(data);
    } on DioException catch (e, s) {
      debugPrint(e.toString());
      debugPrint(s.toString());
      debugPrintStack();
      return Left(
        ServerFailure(
          message: e.errorMessage,
        ),
      );
    } on ServerException catch (e, s) {
      debugPrint(e.toString());
      debugPrint(s.toString());
      debugPrintStack();
      return Left(
        ServerFailure(
          message: e.errorMessage,
        ),
      );
    } on CacheException catch (e, s) {
      debugPrint(e.toString());
      debugPrint(s.toString());
      debugPrintStack();
      return Left(
        ServerFailure(
          message: e.message,
        ),
      );
    } catch (e, s) {
      debugPrint(e.toString());
      debugPrint(s.toString());
      debugPrintStack();
      return const Left(
        ServerFailure(
          message: 'Something went wrong. Please try again',
        ),
      );
    }
  }
}
