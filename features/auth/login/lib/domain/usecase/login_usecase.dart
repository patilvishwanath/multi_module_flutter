import 'package:dartz/dartz.dart';
import 'package:domain/domain.dart';
import 'package:injectable/injectable.dart';
import 'package:login/login.dart';

@injectable
class LoginUseCase implements BaseUseCase<LoginRequest, LoginModel> {
  final LoginRepository loginRepository;

  LoginUseCase(this.loginRepository);

  @override
  Future<Either<Failure, LoginModel>> execute(loginRequest) async {
    print('LoginUseCase-execute');
    return loginRepository.login(loginRequest);
  }
}
