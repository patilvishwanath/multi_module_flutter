import 'package:dartz/dartz.dart';
import 'package:data/data.dart';
import 'package:domain/model/failure.dart';
import 'package:login/login.dart';

class LoginRemoteServiceImpl implements LoginRemoteService {
  final LoginService loginService;
  final NetworkInfo info;

  LoginRemoteServiceImpl(this.loginService,this.info);

  @override
  Future<Either<Failure, LoginResponse>> login(LoginRequest loginRequest) {
    return safeApiCall(info,() async {
      final response = await loginService.login(
        loginRequest.email,
        loginRequest.password,
      );
      return response.data;
    });
  }
}
