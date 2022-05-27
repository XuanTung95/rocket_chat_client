

import 'dart:convert';

class CreateDirectMessageResponse {
  DirectMessageResponse? message;
  bool? success;

  CreateDirectMessageResponse({this.message, this.success});

  CreateDirectMessageResponse.fromJson(Map<String, dynamic> json) {
    if (json['message'] is String) {
      message = DirectMessageResponse.fromJson(jsonDecode(json['message']));
    } else if (json['message'] is Map) {
      message = DirectMessageResponse.fromJson(json['message']);
    }
    success = json['success'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['message'] = this.message?.toJson();
    data['success'] = this.success;
    return data;
  }
}

class DirectMessageResponse {
  String? msg;
  String? id;
  DirectMessage? result;

  DirectMessageResponse({this.msg, this.id, this.result});

  DirectMessageResponse.fromJson(Map<String, dynamic> json) {
    msg = json['msg'];
    id = json['id'];
    result =
    json['result'] != null ? new DirectMessage.fromJson(json['result']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['msg'] = this.msg;
    data['id'] = this.id;
    if (this.result != null) {
      data['result'] = this.result!.toJson();
    }
    return data;
  }
}

class DirectMessage {
  String? t;
  String? rid;
  List<String>? usernames;

  DirectMessage({this.t, this.rid, this.usernames});

  DirectMessage.fromJson(Map<String, dynamic> json) {
    t = json['t'];
    rid = json['rid'];
    usernames = json['usernames'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['t'] = this.t;
    data['rid'] = this.rid;
    data['usernames'] = this.usernames;
    return data;
  }
}