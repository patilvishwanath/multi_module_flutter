import 'package:data/data.dart';
import 'package:data/network/network_info_impl.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:login/data/network/login_remote_service_impl.dart';
import 'package:login/login.dart';

import '../../domain/usecase/login_usecase.dart';
import '../repository/login_repository_impl.dart';

@module
abstract class LoginModule {
  @lazySingleton
  LoginService provideLoginService(Dio dio) {
    return LoginService(dio);
  }

  @lazySingleton
  NetworkInfo provideNetworkInfo() {
    return NetworkInfoImpl();
  }

  @lazySingleton
  LoginRemoteService provideLoginRemoteService(
    LoginService loginService,
    NetworkInfo info,
  ) {
    return LoginRemoteServiceImpl(loginService, info);
  }

  @lazySingleton
  LoginRepository provideLoginRepository(LoginRemoteService loginRemoteService) {
    return LoginRepositoryImpl(loginRemoteService);
  }

  @lazySingleton
  LoginUseCase provideLoginUseCase(LoginRepository loginRepository) {
    return LoginUseCase(loginRepository);
  }
}
