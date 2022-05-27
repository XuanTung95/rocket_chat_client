import 'package:json_annotation/json_annotation.dart';

import '../message.dart';

part 'room_display_response.g.dart';

@JsonSerializable()
class RoomDisplayResponse {
  List<RoomDisplay>? update;
  List<RoomDisplay>? remove;
  bool? success;

  RoomDisplayResponse({this.update, this.remove, this.success});

  factory RoomDisplayResponse.fromJson(Map<String, dynamic> json) => _$RoomDisplayResponseFromJson(json);
  Map<String, dynamic> toJson() => _$RoomDisplayResponseToJson(this);

}

@JsonSerializable()
class RoomDisplay {
  @JsonKey(name: '_id')
  String? id;
  String? t;
  String? fname;
  CustomFields? customFields;
  bool? broadcast;
  bool? encrypted;
  String? name;
  int? msgs;
  int? usersCount;
  RoomMember? u;
  DateTime? ts;
  bool? ro;
  bool? sysMes;
  @JsonKey(name: '_updatedAt')
  DateTime? sUpdatedAt;
  List<String>? usernames;
  List<String>? uids;
  // bool? default;
  Message? lastMessage;
  DateTime? lm;
  String? description;
  String? prid;
  String? announcement;
  String? topic;

  RoomDisplay(
      {this.id,
      this.t,
      this.usernames,
      this.usersCount,
      this.msgs,
      this.ts,
      this.uids,
      this.ro,
      this.sysMes,
      this.sUpdatedAt,
      this.lastMessage,
      this.lm,
      this.fname,
      this.customFields,
      this.description,
      this.broadcast,
      this.encrypted,
      this.name,
      this.u,
      this.prid});

  factory RoomDisplay.fromJson(Map<String, dynamic> json) => _$RoomDisplayFromJson(json);
  Map<String, dynamic> toJson() => _$RoomDisplayToJson(this);
}

@JsonSerializable()
class RoomMember {
  @JsonKey(name: '_id')
  String? sId;
  String? username;
  String? name;

  RoomMember({this.sId, this.username, this.name});

  factory RoomMember.fromJson(Map<String, dynamic> json) => _$RoomMemberFromJson(json);
  Map<String, dynamic> toJson() => _$RoomMemberToJson(this);
}

@JsonSerializable()
class Md {
  String? type;
  List<Value>? value;

  Md({this.type, this.value});

  factory Md.fromJson(Map<String, dynamic> json) => _$MdFromJson(json);
  Map<String, dynamic> toJson() => _$MdToJson(this);
}

@JsonSerializable()
class Value {
  String? type;
  dynamic value;

  Value({this.type, this.value});

  factory Value.fromJson(Map<String, dynamic> json) => _$ValueFromJson(json);
  Map<String, dynamic> toJson() => _$ValueToJson(this);
}

class CustomFields {
  Map? data;

  CustomFields({data});

  CustomFields.fromJson(Map<String, dynamic> json) {
    data = json;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    return data;
  }
}
