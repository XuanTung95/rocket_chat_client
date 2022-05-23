import 'dart:convert';

import 'method_message_request.dart';
import 'method_request.dart';
import 'room_users_method_param.dart';

class AddUserToRoomRequest extends MethodMessageRequest {
  AddUserToRoomRequest({String id = '42', required RoomUserMethodParam param})
      : super(
            message: jsonEncode(MethodRequest(
                msg: "method",
                id: id,
                method: "addUsersToRoom",
                params: [param.toJson()]).toJson()));
}
