import 'package:rocket_chat_client/src/services/authentication_service.dart';
import 'package:rocket_chat_client/src/services/channel_service.dart';
import 'package:rocket_chat_client/src/services/message_service.dart';
import 'package:rocket_chat_client/src/services/subscription_service.dart';
import 'package:rocket_chat_client/src/utils/constants.dart';

import 'models/authentication.dart';

class RocketChatClient {
  final String url;

  LoginResponseData? loginData;

  final authService = AuthenticationService();
  final channelService = ChannelService();
  final messageService = MessageService();
  final subscriptionService = SubscriptionService();

  RocketChatClient({required this.url});

  Future<bool> login({required String user, required String password}) async {
    try {
      final res = await authService.login(user, password);
      if (Constants.statusSuccess == res.status) {
        loginData = res.data;
        return true;
      }
    } catch (e) {
      print('$e');
    }
    return false;
  }
}
