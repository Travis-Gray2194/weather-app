import 'package:equatable/equatable.dart';
import 'package:weather/src/core/error/failure.dart';
import 'package:weather/src/core/utils/either.dart';

///
/// UseCase is called with Failure or some type of data representation
///
///
mixin UseCase<Type, Params> {
  Future<Either<Failure, Type>> call(Params params);
}

///
/// No params if the data object is in local cache
///
class NoParams extends Equatable {
  @override
  List<Object> get props => [];
}
