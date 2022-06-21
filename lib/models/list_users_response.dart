

import 'package:rocket_chat_client/models/user.dart';

class ListUsersResponse {
  List<UserModel>? users;
  bool? success;
  int? count;
  int? offset;
  int? total;

  ListUsersResponse({this.users, this.success});

  ListUsersResponse.fromJson(Map<String, dynamic> json) {
    if (json['users'] != null) {
      users = <UserModel>[];
      json['users'].forEach((v) {
        users!.add(UserModel.fromJson(v));
      });
    }
    success = json['success'];
    count = json['count'];
    offset = json['offset'];
    total = json['total'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (users != null) {
      data['users'] = users!.map((v) => v.toJson()).toList();
    }
    data['success'] = success;
    data['count'] = count;
    data['offset'] = offset;
    data['total'] = total;
    return data;
  }
}