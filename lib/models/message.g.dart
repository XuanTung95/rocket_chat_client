// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Message _$MessageFromJson(Map<String, dynamic> json) => Message(
      alias: json['alias'] as String?,
      msg: json['msg'] as String?,
      parseUrls: json['parseUrls'] as bool?,
      bot: json['bot'] == null
          ? null
          : Bot.fromJson(json['bot'] as Map<String, dynamic>?),
      groupable: json['groupable'] as bool?,
      t: json['t'] as String?,
      ts: json['ts'] == null ? null : DateTime.parse(json['ts'] as String),
      user: json['u'] == null
          ? null
          : UserModel.fromJson(json['u'] as Map<String, dynamic>?),
      rid: json['rid'] as String?,
      reactions: (json['reactions'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, Reaction.fromJson(e as Map<String, dynamic>)),
      ),
      mentions: (json['mentions'] as List<dynamic>?)
          ?.map((e) => Mention.fromJson(e))
          .toList(),
      channels: (json['channels'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      starred: (json['starred'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
      emoji: json['emoji'] as String?,
      avatar: json['avatar'] as String?,
      attachments: (json['attachments'] as List<dynamic>?)
          ?.map((e) => MessageAttachment.fromJson(e as Map<String, dynamic>))
          .toList(),
      editedBy: json['editedBy'] == null
          ? null
          : UserModel.fromJson(json['editedBy'] as Map<String, dynamic>?),
      editedAt: json['editedAt'] == null
          ? null
          : DateTime.parse(json['editedAt'] as String),
      urls: (json['urls'] as List<dynamic>?)?.map((e) => e as String).toList(),
    )
      ..id = json['_id'] as String?
      ..updatedAt = json['_updatedAt'] == null
          ? null
          : DateTime.parse(json['_updatedAt'] as String)
      ..md = (json['md'] as List<dynamic>?)
          ?.map((e) => Md.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$MessageToJson(Message instance) => <String, dynamic>{
      '_id': instance.id,
      'alias': instance.alias,
      'msg': instance.msg,
      'parseUrls': instance.parseUrls,
      'bot': instance.bot,
      'groupable': instance.groupable,
      't': instance.t,
      'ts': instance.ts?.toIso8601String(),
      'u': instance.user,
      'rid': instance.rid,
      '_updatedAt': instance.updatedAt?.toIso8601String(),
      'reactions': instance.reactions,
      'mentions': instance.mentions,
      'channels': instance.channels,
      'starred': instance.starred,
      'emoji': instance.emoji,
      'avatar': instance.avatar,
      'attachments': instance.attachments,
      'editedBy': instance.editedBy,
      'editedAt': instance.editedAt?.toIso8601String(),
      'urls': instance.urls,
      'md': instance.md,
    };
