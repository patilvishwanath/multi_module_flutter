import 'package:dartz/dartz.dart';
import 'package:domain/domain.dart';
import 'package:data/data.dart';

Future<Either<Failure, T>> safeApiCall<T>(
  NetworkInfo networkInfo,
  Future<T> Function() call,
) async {
  if (await networkInfo.isConnected) {
    try {
      final response = await call();
      return Right(response);
    } catch (error) {
      return Left(Failure(0, LocalizedMessage("Something went wrong", "")));
    }
  } else {
    return Left(Failure(-1, LocalizedMessage("No internet connection. Please try again.", "")));
  }
}
