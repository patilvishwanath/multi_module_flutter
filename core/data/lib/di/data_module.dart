import 'package:data/data.dart';
import 'package:datastore/datastore.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

abstract class DataModule {
  @Named(DataModuleKeys.baseUrl)
  String provideBaseUrl(PreferencesProvider preferencesProvider) =>
      preferencesProvider.getBaseUrl();

  @Named('ClientId')
  String provideClientI(SessionProvider sessionProvider) =>
      sessionProvider.getClientId();

  @Named(DataModuleKeys.accessToken)
  String provideAccessToken(SessionProvider sessionProvider) =>
      sessionProvider.getAccessToken();

  @Named(DataModuleKeys.language)
  String provideAppLanguage(PreferencesProvider preferencesProvider) =>
      preferencesProvider.getAppLanguage();

  @lazySingleton
  Future<Dio> dio(
    @Named(DataModuleKeys.baseUrl) String baseUrl,
    @Named('ClientId') String clientId,
    @Named(DataModuleKeys.accessToken) String accessToken,
    @Named(DataModuleKeys.language) String language,
  ) async {
    return DioFactory(
      baseUrl: baseUrl,
      clientId: clientId,
      accessToken: accessToken,
      language: language,
    ).getDio();
  }
}
