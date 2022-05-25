// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'room_info_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RoomInfoResponse _$RoomInfoResponseFromJson(Map<String, dynamic> json) =>
    RoomInfoResponse(
      room: json['room'] == null
          ? null
          : RoomDisplay.fromJson(json['room'] as Map<String, dynamic>),
      success: json['success'] as bool?,
    );

Map<String, dynamic> _$RoomInfoResponseToJson(RoomInfoResponse instance) =>
    <String, dynamic>{
      'room': instance.room,
      'success': instance.success,
    };
