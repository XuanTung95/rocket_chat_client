import 'dart:convert';

import 'method_message_request.dart';
import 'method_request.dart';
import 'room_users_method_param.dart';

class GetRoomByNameRequest extends MethodMessageRequest {
  GetRoomByNameRequest({String id = '592', required String type, required String name})
      : super(
            message: jsonEncode(MethodRequest(
                msg: "method",
                id: id,
                method: "getRoomByTypeAndName",
                params: [type, name]).toJson()));
}
