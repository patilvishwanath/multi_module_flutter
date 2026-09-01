import 'package:datastore/datastore.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:uuid/uuid.dart';

@Injectable(as: SessionProvider, env: ['dev'])
class DevSessionProviderImpl extends SessionProvider {
  final SharedPreferences prefs;

  DevSessionProviderImpl(this.prefs);

  @override
  String getAccessToken() {
    return prefs.getString(SessionString.accessTokenKey) ?? "";
  }

  @override
  String getClientId() {
    return Uuid().v4();
  }

  @override
  String getRefreshToken() {
    return prefs.getString(SessionString.refreshTokenKey) ?? "";
  }

  @override
  String getUserId() {
    return prefs.getString(SessionString.userIdKey) ?? "123";
  }

  @override
  void setAccessToken(String accessToken) {
    prefs.setString(SessionString.accessTokenKey, accessToken);
  }

  @override
  void setRefreshToken(String refreshToken) {
    prefs.setString(SessionString.refreshTokenKey, refreshToken);
  }

  @override
  void setUserId(String userId) {
    prefs.setString(SessionString.userIdKey, userId);
  }
}

@Injectable(as: SessionProvider, env: ['qa'])
class QaSessionProviderImpl extends SessionProvider {
  final SharedPreferences prefs;

  QaSessionProviderImpl(this.prefs);

  @override
  String getAccessToken() {
    return prefs.getString(SessionString.accessTokenKey) ?? "";
  }

  @override
  String getClientId() {
    return Uuid().v4();
  }

  @override
  String getRefreshToken() {
    return prefs.getString(SessionString.refreshTokenKey) ?? "";
  }

  @override
  String getUserId() {
    return prefs.getString(SessionString.userIdKey) ?? "456";
  }

  @override
  void setAccessToken(String accessToken) {
    prefs.setString(SessionString.accessTokenKey, accessToken);
  }

  @override
  void setRefreshToken(String refreshToken) {
    prefs.setString(SessionString.refreshTokenKey, refreshToken);
  }

  @override
  void setUserId(String userId) {
    prefs.setString(SessionString.userIdKey, userId);
  }
}

@Injectable(as: SessionProvider, env: ['prod'])
class ProdSessionProviderImpl extends SessionProvider {
  final SharedPreferences prefs;

  ProdSessionProviderImpl(this.prefs);

  @override
  String getAccessToken() {
    return prefs.getString(SessionString.accessTokenKey) ?? "";
  }

  @override
  String getClientId() {
    return Uuid().v4();
  }

  @override
  String getRefreshToken() {
    return prefs.getString(SessionString.refreshTokenKey) ?? "";
  }

  @override
  String getUserId() {
    return prefs.getString(SessionString.userIdKey) ?? "789";
  }

  @override
  void setAccessToken(String accessToken) {
    prefs.setString(SessionString.accessTokenKey, accessToken);
  }

  @override
  void setRefreshToken(String refreshToken) {
    prefs.setString(SessionString.refreshTokenKey, refreshToken);
  }

  @override
  void setUserId(String userId) {
    prefs.setString(SessionString.userIdKey, userId);
  }
}
