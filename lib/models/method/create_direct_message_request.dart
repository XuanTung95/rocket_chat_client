import 'dart:convert';

import 'method_message_request.dart';
import 'method_request.dart';

class CreateDirectMessageRequest extends MethodMessageRequest {
  CreateDirectMessageRequest({String id = '629', required String targetUserName,})
      : super(
            message: jsonEncode(MethodRequest(
                msg: "method",
                id: id,
                method: "createDirectMessage",
                params: [targetUserName]).toJson()));
}
