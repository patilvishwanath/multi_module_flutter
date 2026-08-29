import 'package:dartz/dartz.dart';
import 'package:data/data.dart';
import 'package:domain/model/failure.dart';
import 'package:injectable/injectable.dart';
import 'package:login/login.dart';

@LazySingleton(as: LoginRemoteService)
class LoginRemoteServiceImpl implements LoginRemoteService {
  final LoginService loginService;
  final NetworkInfo info;

  LoginRemoteServiceImpl(this.loginService, this.info);

  @override
  Future<Either<Failure, LoginResponse>> login(LoginRequest loginRequest) {
    print('LoginRemoteServiceImpl -- login--call api which is in service');
    return safeApiCall(info, () async {
      final response = await loginService.login(
        loginRequest.email,
        loginRequest.password,
      );
      return response.data;
    });
  }
}
