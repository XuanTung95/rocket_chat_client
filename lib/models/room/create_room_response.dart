
import 'package:rocket_chat_client/models/room/room_display_response.dart';

class CreateRoomResponse {
  RoomDisplay? group;
  bool? success;

  CreateRoomResponse({this.group, this.success});

  CreateRoomResponse.fromJson(Map<String, dynamic> json) {
    group = json['group'] != null ? RoomDisplay.fromJson(json['group']) : null;
    success = json['success'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (group != null) {
      data['group'] = group!.toJson();
    }
    data['success'] = success;
    return data;
  }
}