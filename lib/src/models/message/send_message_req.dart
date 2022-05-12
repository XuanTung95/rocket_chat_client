
import '../message_attachment.dart';

class SendMessageRequest {
  NewMessageRequest? message;

  SendMessageRequest({this.message});

  SendMessageRequest.fromJson(Map<String, dynamic> json) {
    message =
    json['message'] != null ? new NewMessageRequest.fromJson(json['message']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.message != null) {
      data['message'] = this.message!.toJson();
    }
    return data;
  }
}

class NewMessageRequest {
  String? rid;
  String? msg;
  String? alias;
  String? emoji;
  String? avatar;
  List<MessageAttachment>? attachments;

  NewMessageRequest(
      {this.rid,
        this.msg,
        this.alias,
        this.emoji,
        this.avatar,
        this.attachments});

  NewMessageRequest.fromJson(Map<String, dynamic> json) {
    rid = json['rid'];
    msg = json['msg'];
    alias = json['alias'];
    emoji = json['emoji'];
    avatar = json['avatar'];
    if (json['attachments'] != null) {
      attachments = <MessageAttachment>[];
      json['attachments'].forEach((v) {
        attachments!.add(new MessageAttachment.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['rid'] = this.rid;
    data['msg'] = this.msg;
    data['alias'] = this.alias;
    data['emoji'] = this.emoji;
    data['avatar'] = this.avatar;
    if (this.attachments != null) {
      data['attachments'] = this.attachments!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

