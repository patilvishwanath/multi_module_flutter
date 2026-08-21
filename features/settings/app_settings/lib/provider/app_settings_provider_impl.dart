import 'package:injectable/injectable.dart';

import 'app_settings_provider.dart';

@Injectable(as: AppSettingsProvider, env: [Environment.prod])
class ProdAppSettingsProviderImpl extends AppSettingsProvider {
  @override
  String getAppLanguage() {
    return "English";
  }

  @override
  String getEnvironment() {
    return Environment.prod;
  }
}

@Injectable(as: AppSettingsProvider, env: [Environment.dev])
class DevAppSettingsProviderImpl extends AppSettingsProvider {
  @override
  String getAppLanguage() {
    return "English";
  }

  @override
  String getEnvironment() {
    return Environment.dev;
  }
}
