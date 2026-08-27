// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:datastore/datastore.dart' as _i659;
import 'package:datastore/di/data_store_module.dart' as _i570;
import 'package:datastore/provider/session_provider_impl.dart' as _i469;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:shared_preferences/shared_preferences.dart' as _i460;

const String _prod = 'prod';
const String _dev = 'dev';

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final dataStoreModule = _$DataStoreModule();
    await gh.factoryAsync<_i460.SharedPreferences>(
      () => dataStoreModule.prefs,
      preResolve: true,
    );
    gh.factory<_i659.SessionProvider>(
      () => _i469.ProdSessionProviderImpl(gh<_i460.SharedPreferences>()),
      registerFor: {_prod},
    );
    gh.factory<_i659.SessionProvider>(
      () => _i469.DevSessionProviderImpl(gh<_i460.SharedPreferences>()),
      registerFor: {_dev},
    );
    gh.lazySingleton<_i659.PreferencesProvider>(
      () => dataStoreModule.preferencesProviderImpl(
        gh<_i460.SharedPreferences>(),
      ),
    );
    return this;
  }
}

class _$DataStoreModule extends _i570.DataStoreModule {}
