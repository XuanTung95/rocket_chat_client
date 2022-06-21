

class RoomSettingRequest {
  String? rid;
  String? roomName;
  String? roomDescription;
  String? roomAnnouncement;
  String? roomTopic;
  String? roomAvatar;

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
    roomAvatar = json['roomAvatar'];
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
    if (roomAvatar != null) {
      data['roomAvatar'] = roomAvatar;
    }
    return data;
  }
}