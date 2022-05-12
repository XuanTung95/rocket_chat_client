import 'package:rocket_chat_client/src/models/room/room_display_response.dart';

class CreateRoomResponse {
  RoomDisplay? group;
  bool? success;

  CreateRoomResponse({this.group, this.success});

  CreateRoomResponse.fromJson(Map<String, dynamic> json) {
    group = json['group'] != null ? new RoomDisplay.fromJson(json['group']) : null;
    success = json['success'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.group != null) {
      data['group'] = this.group!.toJson();
    }
    data['success'] = this.success;
    return data;
  }
}