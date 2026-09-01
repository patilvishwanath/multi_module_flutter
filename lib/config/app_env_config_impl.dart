import 'package:data/data.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import 'flavors.dart';

class AppEnvConfigImpl implements AppEnvConfig {
  @override
  String get baseUrl => _required('API_BASE_URL');

  @override
  String get clientId => _required('CLIENT_ID');

  String _required(String key) {
    final value = dotenv.env[key];

    if (value == null || value.isEmpty) {
      throw StateError('$key is not configured');
    }

    return value;
  }

  @override
  String get appEnv => _required('APP_ENV');

  @override
  String get defaultLanguage => _required('DEFAULT_LANGUAGE');

  @override
  String get environment => F.name.toString();

  @override
  String get apiBaseUrl => _required('API_BASE_URL');

  @override
  String get loginBaseUrl => _required('LOGIN_BASE_URL');

  @override
  String get paymentBaseUrl => _required('PAYMENT_BASE_URL');
}
