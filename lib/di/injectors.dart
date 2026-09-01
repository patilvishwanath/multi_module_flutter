import 'package:app_settings/app_settings.dart';
import 'package:data/data.dart';
import 'package:datastore/datastore.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:login/login.dart';

import '../config/app_env_config_impl.dart';

final getIt = GetIt.instance;

@InjectableInit()
Future<void> configureDependencies(String environment) async {
  // App Env Config registration
  getIt.registerLazySingleton<AppEnvConfig>(() => AppEnvConfigImpl());

  await configureAppSettingsDependencies(getIt, environment);
  await configureDataStoreDependencies(getIt, environment);
  await configureDataDependencies(getIt, environment);
  await configureLoginDependencies(getIt, environment);
}
