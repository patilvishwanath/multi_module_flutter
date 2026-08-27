import 'package:injectable/injectable.dart';

import 'package:datastore/datastore.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../provider/preferences_provider_impl.dart';

@module
abstract class DataStoreModule {
  @preResolve
  Future<SharedPreferences> get prefs => SharedPreferences.getInstance();

  @lazySingleton
  PreferencesProvider preferencesProviderImpl(SharedPreferences prefs) =>
      PreferencesProviderImpl(prefs);
}
