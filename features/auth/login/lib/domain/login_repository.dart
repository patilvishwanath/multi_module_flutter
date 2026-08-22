import 'package:dartz/dartz.dart';
import 'package:domain/model/failure.dart';
import 'package:login/login.dart';

abstract class LoginRepository {
  Future<Either<Failure, LoginModel>> login(LoginRequest loginRequest);
}