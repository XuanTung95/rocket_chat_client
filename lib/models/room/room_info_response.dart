import 'package:rocket_chat_client/models/room/room_display_response.dart';
import 'package:json_annotation/json_annotation.dart';


part 'room_info_response.g.dart';

@JsonSerializable()
class RoomInfoResponse {
  RoomDisplay? room;
  bool? success;

  RoomInfoResponse({this.room, this.success});

  factory RoomInfoResponse.fromJson(Map<String, dynamic> json) => _$RoomInfoResponseFromJson(json);
  Map<String, dynamic> toJson() => _$RoomInfoResponseToJson(this);

}