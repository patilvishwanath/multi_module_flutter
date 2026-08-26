import 'package:dartz/dartz.dart';
import 'package:domain/domain.dart';
import 'package:login/login.dart';

class LoginUseCase implements BaseUseCase<LoginRequest,LoginModel>{

  final LoginRepository loginRepository;

  LoginUseCase(this.loginRepository);

  @override
  Future<Either<Failure, LoginModel>> execute(loginRequest) async {
    return loginRepository.login(loginRequest);
  }
}