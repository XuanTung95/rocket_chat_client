

import 'package:dio/dio.dart';

import '../api/rocket_chat_api.dart';

class ApiServices {
  static RocketChatApi? _client;

  static RocketChatApi get() {
    if (_client == null) {
      Dio dio = Dio();
      _client = RocketChatApi(dio);
    }
    return _client!;
  }
}