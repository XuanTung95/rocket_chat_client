// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'default_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DefaultResponse _$DefaultResponseFromJson(Map<String, dynamic> json) =>
    DefaultResponse(
      status: json['status'] as String?,
      data: json['data'] == null
          ? null
          : DefaultMsgResponse.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DefaultResponseToJson(DefaultResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'data': instance.data,
    };

DefaultMsgResponse _$DefaultMsgResponseFromJson(Map<String, dynamic> json) =>
    DefaultMsgResponse(
      message: json['message'] as String?,
    );

Map<String, dynamic> _$DefaultMsgResponseToJson(DefaultMsgResponse instance) =>
    <String, dynamic>{
      'message': instance.message,
    };
