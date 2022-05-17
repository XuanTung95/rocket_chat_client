

class RoomUpdateUserRequest {
  String? roomId;
  String? userId;

  RoomUpdateUserRequest({this.roomId, this.userId});

  RoomUpdateUserRequest.fromJson(Map<String, dynamic> json) {
    roomId = json['roomId'];
    userId = json['userId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['roomId'] = roomId;
    data['userId'] = userId;
    return data;
  }
}