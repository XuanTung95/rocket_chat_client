
class PushNotificationEJson {
  String? host;
  String? messageId;
  String? notificationType;
  String? rid;
  PushNotificationSender? sender;
  String? senderName;
  String? type;
  String? name;

  PushNotificationEJson(
      {this.host,
        this.messageId,
        this.notificationType,
        this.rid,
        this.sender,
        this.senderName,
        this.type,
        this.name});

  PushNotificationEJson.fromJson(Map<String, dynamic> json) {
    host = json['host'];
    messageId = json['messageId'];
    notificationType = json['notificationType'];
    rid = json['rid'];
    sender =
    json['sender'] != null ? new PushNotificationSender.fromJson(json['sender']) : null;
    senderName = json['senderName'];
    type = json['type'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['host'] = this.host;
    data['messageId'] = this.messageId;
    data['notificationType'] = this.notificationType;
    data['rid'] = this.rid;
    if (this.sender != null) {
      data['sender'] = this.sender!.toJson();
    }
    data['senderName'] = this.senderName;
    data['type'] = this.type;
    data['name'] = this.name;
    return data;
  }
}

class PushNotificationSender {
  String? sId;
  String? username;
  String? name;

  PushNotificationSender({this.sId, this.username, this.name});

  PushNotificationSender.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    username = json['username'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['username'] = this.username;
    data['name'] = this.name;
    return data;
  }
}