
import 'notification_payload.dart';

class NotificationArgs {
  String? title;
  String? text;
  DateTime? ts;
  NotificationPayload? payload;

  NotificationArgs({
    this.title,
    this.text,
    this.payload,
  });

  NotificationArgs.fromJson(Map<String, dynamic> json) {
    if (json != null) {
      title = json['title'];
      text = json['text'];
      ts = DateTime.now();
      payload = json['payload'] != null
          ? NotificationPayload.fromJson(json['payload'])
          : null;
    }
  }

  @override
  String toString() {
    return 'NotificationArgs{title: $title, text: $text, ts: $ts, payload: $payload}';
  }
}
