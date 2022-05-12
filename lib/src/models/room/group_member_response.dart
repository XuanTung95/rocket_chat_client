

import 'package:rocket_chat_client/src/models/user.dart';

class GroupMembersResponse {
  List<UserModel>? members;
  int? count;
  int? offset;
  int? total;
  bool? success;

  GroupMembersResponse(
      {this.members, this.count, this.offset, this.total, this.success});

  GroupMembersResponse.fromJson(Map<String, dynamic> json) {
    if (json['members'] != null) {
      members = <UserModel>[];
      json['members'].forEach((v) {
        members!.add(UserModel.fromJson(v));
      });
    }
    count = json['count'];
    offset = json['offset'];
    total = json['total'];
    success = json['success'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    if (members != null) {
      data['members'] = members!.map((v) => v.toJson()).toList();
    }
    data['count'] = count;
    data['offset'] = offset;
    data['total'] = total;
    data['success'] = success;
    return data;
  }
}
