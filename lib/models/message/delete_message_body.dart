class DeleteMessageBody {
  String? roomId;
  String? msgId;

  DeleteMessageBody({this.roomId, this.msgId});

  DeleteMessageBody.fromJson(Map<String, dynamic> json) {
    roomId = json['roomId'];
    msgId = json['msgId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['roomId'] = roomId;
    data['msgId'] = msgId;
    return data;
  }
}