
import 'dart:convert';

import 'package:rocket_chat_client/models/notification/push_notification_ejson.dart';

class PushNotificationData {
  String? image;
  String? soundname;
  String? style;
  PushNotificationEJson? ejson; // this is string
  String? notId;
  String? title;
  String? message;
  String? msgcnt;

  PushNotificationData(
      {this.image,
        this.soundname,
        this.style,
        this.ejson,
        this.notId,
        this.title,
        this.message,
        this.msgcnt});


  PushNotificationData.fromJson(Map<String, dynamic> json) {
    image = json['image'];
    soundname = json['soundname'];
    style = json['style'];

    final _ejson = json['ejson'];
    Map? ejsonMap;
    if (_ejson is String) {
      ejsonMap = jsonDecode(_ejson);
    } else if (_ejson is Map) {
      ejsonMap = _ejson;
    }
    if (ejsonMap != null) {
      ejson = PushNotificationEJson.fromJson(ejsonMap.cast<String, dynamic>());
    }
    notId = json['notId'];
    title = json['title'];
    message = json['message'];
    msgcnt = json['msgcnt'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['image'] = this.image;
    data['soundname'] = this.soundname;
    data['style'] = this.style;
    data['ejson'] = this.ejson;
    data['notId'] = this.notId;
    data['title'] = this.title;
    data['message'] = this.message;
    data['msgcnt'] = this.msgcnt;
    return data;
  }

}