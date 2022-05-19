import 'dart:convert';
import 'package:rocket_chat_client/models/reaction.dart';
import 'package:rocket_chat_client/models/room/room_display_response.dart';
import 'package:rocket_chat_client/models/user.dart';

import 'bot.dart';
import 'mention.dart';
import 'message_attachment.dart';
import 'package:json_annotation/json_annotation.dart';

part 'message.g.dart';

@JsonSerializable()
class Message {
  @JsonKey(name: '_id')
  String? id;
  String? alias;
  String? msg;
  bool? parseUrls;
  Bot? bot;
  bool? groupable;
  String? t;
  DateTime? ts;
  @JsonKey(name: 'u')
  UserModel? user;
  String? rid;

  @JsonKey(name: '_updatedAt')
  DateTime? updatedAt;
  Map<String, Reaction>? reactions;
  List<Mention>? mentions;
  List<String>? channels;
  Map<String, String>? starred;
  String? emoji;
  String? avatar;
  List<MessageAttachment>? attachments;
  UserModel? editedBy;
  DateTime? editedAt;
  List<String>? urls;
  List<Md>? md;

  Message({
    this.alias,
    this.msg,
    this.parseUrls,
    this.bot,
    this.groupable,
    this.t,
    this.ts,
    this.user,
    this.rid,
    this.reactions,
    this.mentions,
    this.channels,
    this.starred,
    this.emoji,
    this.avatar,
    this.attachments,
    this.editedBy,
    this.editedAt,
    this.urls,
  });

  factory Message.fromJson(Map<String, dynamic> json) => _$MessageFromJson(json);
  Map<String, dynamic> toJson() => _$MessageToJson(this);

  @override
  String toString() {
    return 'Message{_id: $id, alias: $alias, msg: $msg, parseUrls: $parseUrls, bot: $bot, groupable: $groupable, t: $t, ts: $ts, user: $user, rid: $rid, _updatedAt: $updatedAt, reactions: $reactions, mentions: $mentions, channels: $channels, starred: $starred, emoji: $emoji, avatar: $avatar, attachments: $attachments, editedBy: $editedBy, editedBy: $editedBy, urls: $urls}';
  }
}
