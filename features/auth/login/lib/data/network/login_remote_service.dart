import 'package:dartz/dartz.dart';
import 'package:domain/domain.dart';
import 'package:login/login.dart';

abstract class LoginRemoteService {
  Future<Either<Failure,LoginResponse>> login(LoginRequest loginRequest);
}
