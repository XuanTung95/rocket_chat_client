
import 'notification_message.dart';
import 'notification_user.dart';

class NotificationPayload {
  String? id;
  String? rid;
  NotificationUser? sender;
  String? type;
  NotificationMessage? message;

  NotificationPayload({
    this.id,
    this.rid,
    this.sender,
    this.type,
    this.message,
  });

  NotificationPayload.fromJson(Map<String, dynamic>? json) {
    if (json != null) {
      id = json['_id'];
      rid = json['rid'];
      sender = json['sender'] != null
          ? NotificationUser.fromJson(json['sender'])
          : null;
      type = json['type'];
      message = json['message'] != null
          ? NotificationMessage.fromJson(json['message'])
          : null;
    }
  }

  @override
  String toString() {
    return 'NotificationPayload{id: $id, rid: $rid, sender: $sender, type: $type, message: $message}';
  }
}
