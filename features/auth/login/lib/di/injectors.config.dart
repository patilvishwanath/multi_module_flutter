// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:data/data.dart' as _i437;
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:login/data/network/login_remote_service_impl.dart' as _i313;
import 'package:login/data/repository/login_repository_impl.dart' as _i118;
import 'package:login/data/service/login_service.dart' as _i762;
import 'package:login/di/login_module.dart' as _i1041;
import 'package:login/domain/usecase/login_usecase.dart' as _i824;
import 'package:login/login.dart' as _i944;
import 'package:login/presentation/login_bloc.dart' as _i825;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final loginModule = _$LoginModule();
    gh.lazySingleton<_i762.LoginService>(
      () => loginModule.provideLoginService(gh<_i361.Dio>()),
    );
    gh.lazySingleton<_i944.LoginRemoteService>(
      () => _i313.LoginRemoteServiceImpl(
        gh<_i944.LoginService>(),
        gh<_i437.NetworkInfo>(),
      ),
    );
    gh.lazySingleton<_i944.LoginRepository>(
      () => _i118.LoginRepositoryImpl(gh<_i944.LoginRemoteService>()),
    );
    gh.factory<_i824.LoginUseCase>(
      () => _i824.LoginUseCase(gh<_i944.LoginRepository>()),
    );
    gh.factory<_i825.LoginBloc>(
      () => _i825.LoginBloc(loginUseCase: gh<_i824.LoginUseCase>()),
    );
    return this;
  }
}

class _$LoginModule extends _i1041.LoginModule {}
