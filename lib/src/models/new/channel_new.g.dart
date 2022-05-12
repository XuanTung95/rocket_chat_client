// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'channel_new.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChannelNew _$ChannelNewFromJson(Map<String, dynamic> json) => ChannelNew(
      name: json['name'] as String?,
      members:
          (json['members'] as List<dynamic>?)?.map((e) => e as String).toList(),
      readOnly: json['readOnly'] as bool?,
    );

Map<String, dynamic> _$ChannelNewToJson(ChannelNew instance) =>
    <String, dynamic>{
      'name': instance.name,
      'members': instance.members,
      'readOnly': instance.readOnly,
    };
