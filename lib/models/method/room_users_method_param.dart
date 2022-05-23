
class RoomUserMethodParam {
  String? rid;
  List<String>? users;

  RoomUserMethodParam({this.rid, this.users});

  RoomUserMethodParam.fromJson(Map<String, dynamic> json) {
    rid = json['rid'];
    users = json['users'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['rid'] = this.rid;
    data['users'] = this.users;
    return data;
  }
}