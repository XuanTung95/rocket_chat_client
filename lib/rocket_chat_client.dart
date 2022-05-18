library rocket_chat_client;

import 'package:rocket_chat_client/services/api_services.dart';

import 'api/rocket_chat_api.dart';

class RocketChatClient {
  final String url;
  late ApiServices _apiServices;
  RocketChatApi get api => _apiServices.client;

  String? get authToken => _apiServices.authToken;
  String? get userId => _apiServices.userId;

  RocketChatClient({required this.url}) {
    _apiServices = ApiServices(baseUrl: url);
  }

  void setTokenInfo({required String token, required String userId}) {
    _apiServices.setTokenInfo(token: token, userId: userId);
  }
}
