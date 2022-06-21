// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'room_display_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RoomDisplayResponse _$RoomDisplayResponseFromJson(Map<String, dynamic> json) =>
    RoomDisplayResponse(
      update: (json['update'] as List<dynamic>?)
          ?.map((e) => RoomDisplay.fromJson(e as Map<String, dynamic>))
          .toList(),
      remove: (json['remove'] as List<dynamic>?)
          ?.map((e) => RoomDisplay.fromJson(e as Map<String, dynamic>))
          .toList(),
      success: json['success'] as bool?,
    );

Map<String, dynamic> _$RoomDisplayResponseToJson(
        RoomDisplayResponse instance) =>
    <String, dynamic>{
      'update': instance.update,
      'remove': instance.remove,
      'success': instance.success,
    };

RoomDisplay _$RoomDisplayFromJson(Map<String, dynamic> json) => RoomDisplay(
      id: json['_id'] as String?,
      t: json['t'] as String?,
      usernames: (json['usernames'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      usersCount: json['usersCount'] as int?,
      msgs: json['msgs'] as int?,
      ts: json['ts'] == null ? null : DateTime.parse(json['ts'] as String),
      uids: (json['uids'] as List<dynamic>?)?.map((e) => e as String).toList(),
      ro: json['ro'] as bool?,
      sysMes: json['sysMes'] as bool?,
      sUpdatedAt: json['_updatedAt'] == null
          ? null
          : DateTime.parse(json['_updatedAt'] as String),
      lastMessage: json['lastMessage'] == null
          ? null
          : Message.fromJson(json['lastMessage'] as Map<String, dynamic>),
      lm: json['lm'] == null ? null : DateTime.parse(json['lm'] as String),
      fname: json['fname'] as String?,
      customFields: json['customFields'] == null
          ? null
          : CustomFields.fromJson(json['customFields'] as Map<String, dynamic>),
      description: json['description'] as String?,
      broadcast: json['broadcast'] as bool?,
      encrypted: json['encrypted'] as bool?,
      name: json['name'] as String?,
      u: json['u'] == null
          ? null
          : RoomMember.fromJson(json['u'] as Map<String, dynamic>),
      avatarETag: json['avatarETag'] as String?,
      prid: json['prid'] as String?,
    )
      ..announcement = json['announcement'] as String?
      ..topic = json['topic'] as String?;

Map<String, dynamic> _$RoomDisplayToJson(RoomDisplay instance) =>
    <String, dynamic>{
      '_id': instance.id,
      't': instance.t,
      'fname': instance.fname,
      'customFields': instance.customFields,
      'broadcast': instance.broadcast,
      'encrypted': instance.encrypted,
      'name': instance.name,
      'msgs': instance.msgs,
      'usersCount': instance.usersCount,
      'u': instance.u,
      'ts': instance.ts?.toIso8601String(),
      'ro': instance.ro,
      'sysMes': instance.sysMes,
      '_updatedAt': instance.sUpdatedAt?.toIso8601String(),
      'usernames': instance.usernames,
      'uids': instance.uids,
      'lastMessage': instance.lastMessage,
      'lm': instance.lm?.toIso8601String(),
      'description': instance.description,
      'prid': instance.prid,
      'announcement': instance.announcement,
      'topic': instance.topic,
      'avatarETag': instance.avatarETag,
    };

RoomMember _$RoomMemberFromJson(Map<String, dynamic> json) => RoomMember(
      sId: json['_id'] as String?,
      username: json['username'] as String?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$RoomMemberToJson(RoomMember instance) =>
    <String, dynamic>{
      '_id': instance.sId,
      'username': instance.username,
      'name': instance.name,
    };

Md _$MdFromJson(Map<String, dynamic> json) => Md(
      type: json['type'] as String?,
      value: (json['value'] as List<dynamic>?)
          ?.map((e) => Value.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$MdToJson(Md instance) => <String, dynamic>{
      'type': instance.type,
      'value': instance.value,
    };

Value _$ValueFromJson(Map<String, dynamic> json) => Value(
      type: json['type'] as String?,
      value: json['value'],
    );

Map<String, dynamic> _$ValueToJson(Value instance) => <String, dynamic>{
      'type': instance.type,
      'value': instance.value,
    };
