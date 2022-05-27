class PushTokenRequest {
  String? value;
  String? type;
  String? appName;

  PushTokenRequest({this.value, this.type, this.appName});

  PushTokenRequest.fromJson(Map<String, dynamic> json) {
    value = json['value'];
    type = json['type'];
    appName = json['appName'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['value'] = this.value;
    data['type'] = this.type;
    data['appName'] = this.appName;
    return data;
  }
}