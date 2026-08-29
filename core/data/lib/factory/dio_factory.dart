import 'package:data/constants/constants.dart' as constants;
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class DioFactory {
  final String baseUrl;
  final String accessToken;
  final String language;
  final String clientId;

  DioFactory({
    required this.baseUrl,
    required this.clientId,
    required this.accessToken,
    required this.language,
  });

  Dio getDio() {
    Dio dio = Dio();

    Map<String, String> headers = {
      constants.contentType: constants.applicationJson,
      constants.accept: constants.applicationJson,
      constants.authorization: accessToken,
      constants.defaultLanguage: language,
      constants.clientId: clientId,
    };

    dio.options = BaseOptions(
      baseUrl: baseUrl,
      headers: headers,
      receiveTimeout: const Duration(seconds: 60),
      sendTimeout: const Duration(seconds: 60),
    );

    if (!kReleaseMode) {
      dio.interceptors.add(
        PrettyDioLogger(
          requestHeader: true,
          requestBody: true,
          request: true,
          responseHeader: true,
        ),
      );
    }
    return dio;
  }
}
