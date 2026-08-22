import 'package:dartz/dartz.dart';
import 'package:domain/domain.dart';

Future<Either<Failure, T>> safeApiCall<T>(Future<T> Function() call) async {
  try {
    final response = await call();
    return Right(response);
  } catch (error) {
    return Left(Failure(0, LocalizedMessage("Something went wrong", "")));
  }
}
