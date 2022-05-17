
import 'package:rocket_chat_client/services/api_services.dart';

import '../models/new/message_new.dart';
import '../models/response/message_new_response.dart';

class MessageService {
  ApiServices api;
  MessageService(this.api);

  Future<MessageNewResponse> postMessage(
      MessageNew message,) async {
    return api.client.postMessage(message);
  }
}
