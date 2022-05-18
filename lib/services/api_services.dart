import 'package:dio/dio.dart';

import '../api/rocket_chat_api.dart';

class ApiServices {
  late RocketChatApi _client;
  final headersInterceptor = RequestHeadersInterceptor();

  String? get authToken => headersInterceptor.authToken;
  String? get userId => headersInterceptor.userId;

  void setTokenInfo({required String token, required String userId}) {
    headersInterceptor.authToken = token;
    headersInterceptor.userId = userId;
  }

  ApiServices({String baseUrl = "https://localhost:3000"}) {
    Dio dio = Dio();
    dio.interceptors.addAll([
      headersInterceptor,
      LogInterceptor(requestBody: true,
          responseBody: true,
          requestHeader: false,
          responseHeader: false),
    ],);
    _client = RocketChatApi(dio, baseUrl: baseUrl);
  }

  RocketChatApi get client => _client;
}

class RequestHeadersInterceptor extends Interceptor {
  String? authToken;
  String? userId;

  @override
  void onRequest(RequestOptions options,
      RequestInterceptorHandler handler,) {
    options.headers['Content-type'] = 'application/json';
    options.headers['X-Auth-Token'] = authToken ?? '';
    options.headers['X-User-Id'] = userId ?? '';
    handler.next(options);
  }

}