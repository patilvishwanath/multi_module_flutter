import 'package:data/data.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

import '../response/login_response.dart';

part 'login_service.g.dart';

@LazySingleton()
@RestApi()
abstract class LoginService {
  @factoryMethod
  factory LoginService(Dio dio, AppEnvConfig appEnvConfig) =>
      _LoginService(dio, baseUrl: appEnvConfig.loginBaseUrl);

  @POST("/login")
  Future<HttpResponse<LoginResponse>> login(
    @Field("email") String email,
    @Field("password") String password,
  );
}
