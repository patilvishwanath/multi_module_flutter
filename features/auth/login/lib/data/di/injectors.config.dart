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
import 'package:login/data/di/login_module.dart' as _i802;
import 'package:login/domain/usecase/login_usecase.dart' as _i824;
import 'package:login/login.dart' as _i944;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final loginModule = _$LoginModule();
    gh.lazySingleton<_i437.NetworkInfo>(() => loginModule.provideNetworkInfo());
    gh.lazySingleton<_i944.LoginService>(
      () => loginModule.provideLoginService(gh<_i361.Dio>()),
    );
    gh.lazySingleton<_i944.LoginRemoteService>(
      () => loginModule.provideLoginRemoteService(
        gh<_i944.LoginService>(),
        gh<_i437.NetworkInfo>(),
      ),
    );
    gh.lazySingleton<_i944.LoginRepository>(
      () => loginModule.provideLoginRepository(gh<_i944.LoginRemoteService>()),
    );
    gh.lazySingleton<_i824.LoginUseCase>(
      () => loginModule.provideLoginUseCase(gh<_i944.LoginRepository>()),
    );
    return this;
  }
}

class _$LoginModule extends _i802.LoginModule {}
