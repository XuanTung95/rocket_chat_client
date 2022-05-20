

class RoomSettingRequest {
  String? rid;
  String? roomName;
  String? roomDescription;
  String? roomAnnouncement;
  String? roomTopic;

  RoomSettingRequest(
      {this.rid,
        this.roomName,
        this.roomDescription,
        this.roomAnnouncement,
        this.roomTopic});

  RoomSettingRequest.fromJson(Map<String, dynamic> json) {
    rid = json['rid'];
    roomName = json['roomName'];
    roomDescription = json['roomDescription'];
    roomAnnouncement = json['roomAnnouncement'];
    roomTopic = json['roomTopic'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['rid'] = rid;
    if (roomName != null) {
      data['roomName'] = roomName;
    }
    if (roomDescription != null) {
      data['roomDescription'] = roomDescription;
    }
    if (roomAnnouncement != null) {
      data['roomAnnouncement'] = roomAnnouncement;
    }
    if (roomTopic != null) {
      data['roomTopic'] = roomTopic;
    }
    return data;
  }
}