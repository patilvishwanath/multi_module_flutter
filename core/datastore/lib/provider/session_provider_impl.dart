import 'package:datastore/provider/session_provider.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: SessionProvider, env: [Environment.dev])
class DevSessionProviderImpl extends SessionProvider {
  @override
  String getAccessToken() {
    return '123';
  }

  @override
  String getCliendtId() {
    return '123';
  }

  @override
  String getRefreshToken() {
    return '123';
  }

  @override
  String getUserId() {
    return '123';
  }
}

@Injectable(as: SessionProvider, env: [Environment.prod])
class ProdSessionProviderImpl extends SessionProvider {
  @override
  String getAccessToken() {
    return '456';
  }

  @override
  String getCliendtId() {
    return '456';
  }

  @override
  String getRefreshToken() {
    return '456';
  }

  @override
  String getUserId() {
    return '456';
  }
}