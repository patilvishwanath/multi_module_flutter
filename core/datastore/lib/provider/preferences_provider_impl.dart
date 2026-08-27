import 'package:datastore/datastore.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PreferencesProviderImpl implements PreferencesProvider {
  final SharedPreferences prefs;

  PreferencesProviderImpl(this.prefs);

  @override
  String getAppLanguage() {
    return prefs.getString(PreferencesString.appLanguageKey) ??
        PreferencesString.englishLanguage;
  }

  @override
  String getBaseUrl() {
    return prefs.getString(PreferencesString.baseUrlKey) ??
        PreferencesString.devBaseUrl;
  }

  @override
  void setAppLanguage(String language) {
    prefs.setString(PreferencesString.appLanguageKey, language);
  }

  @override
  void setBaseUrl(String baseUrl) {
    prefs.setString(PreferencesString.baseUrlKey, baseUrl);
  }
}
