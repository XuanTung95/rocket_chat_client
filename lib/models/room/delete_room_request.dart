

class DeleteRoomRequest {
  String? roomId;

  DeleteRoomRequest({this.roomId,});

  DeleteRoomRequest.fromJson(Map<String, dynamic> json) {
    roomId = json['roomId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['roomId'] = roomId;
    return data;
  }
}