import 'dart:convert';

import 'package:rocket_chat_client/src/services/api_services.dart';

import '../models/new/message_new.dart';
import '../models/response/message_new_response.dart';

class MessageService {

  Future<MessageNewResponse> postMessage(
      MessageNew message,) async {
    return ApiServices.get().postMessage(message);
  }
}
