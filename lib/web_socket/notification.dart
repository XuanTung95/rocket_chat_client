import 'package:flutter/foundation.dart';

import 'notification_fields.dart';
import 'notification_result.dart';
import 'notification_type.dart';

class Notification {
  NotificationType? msg;
  String? collection;
  String? serverId;
  List<String>? subs;
  List<String>? methods;
  String? id;
  NotificationFields? fields;
  NotificationResult? result;

  Notification({
    this.msg,
    this.collection,
    this.serverId,
    this.subs,
    this.methods,
    this.id,
    this.fields,
    this.result,
  });

  Notification.fromJson(Map<String, dynamic> json) {
    if (json != null) {
      msg = notificationTypeFromString(json['msg']);
      collection = json['collection'];
      serverId = json['server_id'];
      subs = json['subs'] != null ? List<String>.from(json['subs']) : null;
      methods =
          json['methods'] != null ? List<String>.from(json['methods']) : null;
      id = json["id"];
      fields = json['fields'] != null
          ? NotificationFields.fromMap(json["fields"])
          : null;
      result = json['result'] != null
          ? NotificationResult.fromJson(json['result'])
          : null;
    }
  }

  @override
  String toString() {
    return 'Notification{msg: ${describeEnum(msg!)}, collection: $collection, serverId: $serverId, subs: $subs, methods: $methods, id: $id, fields: $fields, result: $result}';
  }
}
