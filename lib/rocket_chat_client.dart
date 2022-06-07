library rocket_chat_client;

import 'package:flutter/cupertino.dart';
import 'package:rocket_chat_client/services/api_services.dart';
import 'package:rocket_chat_client/utils/util.dart';
import 'package:rocket_chat_client/web_socket/web_socket_connection.dart';
import 'package:rocket_chat_client/web_socket/web_socket_service.dart';

import 'api/rocket_chat_api.dart';

class RocketChatClient {
  final String url;
  late ApiServices _apiServices;
  late WebSocketConnection socketConnection;
  late WebSocketService socketService;
  RocketChatApi get api => _apiServices.client;

  String? get authToken => _apiServices.authToken;
  String? get userId => _apiServices.userId;
  VoidCallback? onLoggedIn;
  List<void Function(Map<String, dynamic>)> onMessageCallback = [];

  RocketChatClient({required this.url,}) {
    _apiServices = ApiServices(baseUrl: url);
    String socketUrl = '${hostToWS(host: url)}/websocket';
    print('url $url socket $socketUrl');
    socketConnection = WebSocketConnection(onMessage: (Map<String, dynamic> msg) {
      for(final item in onMessageCallback) {
        item(msg);
      }
    }, url: socketUrl, onLoggedIn: () {
      print("onLoggedIn");
      onLoggedIn?.call();
    });
    socketService = WebSocketService(socketConnection);
  }

  void setTokenInfo({required String token, required String userId}) {
    _apiServices.setTokenInfo(token: token, userId: userId);
    socketConnection.authToken = token;
  }

  void connectWebSocket() {
    socketConnection.connectAndLogin();
  }

  void dispose() {
    socketConnection.dispose();
  }
}
