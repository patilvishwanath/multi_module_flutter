import 'package:dartz/dartz.dart';
import 'package:data/data.dart';
import 'package:domain/model/failure.dart';
import 'package:login/login.dart';

class LoginRemoteServiceImpl implements LoginRemoteService {
  final LoginService loginService;

  LoginRemoteServiceImpl(this.loginService);

  @override
  Future<Either<Failure, LoginResponse>> login(LoginRequest loginRequest) {
    return safeApiCall(() async {
      final response = await loginService.login(
        loginRequest.email,
        loginRequest.password,
      );
      return response.data;
    });
  }
}
