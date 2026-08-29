import 'package:dartz/dartz.dart';
import 'package:domain/domain.dart';
import 'package:injectable/injectable.dart';
import 'package:login/login.dart';

@LazySingleton(as: LoginRepository)
class LoginRepositoryImpl implements LoginRepository {
  final LoginRemoteService loginRemoteService;
  LoginRepositoryImpl(this.loginRemoteService);

  @override
  Future<Either<Failure, LoginModel>> login(LoginRequest loginRequest) async {
    print('LoginRepositoryImpl-login');

    final result = await loginRemoteService.login(loginRequest);

    return result.fold(
      (failure) => Left(failure),
      (response) => Right(response.toDomain()),
    );
  }
}
