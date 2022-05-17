

import 'package:rocket_chat_client/models/user.dart';

class UsersAutocompleteResponse {
  List<UserModel>? items;
  bool? success;

  UsersAutocompleteResponse({this.items, this.success});

  UsersAutocompleteResponse.fromJson(Map<String, dynamic> json) {
    if (json['items'] != null) {
      items = <UserModel>[];
      json['items'].forEach((v) {
        items!.add(UserModel.fromJson(v));
      });
    }
    success = json['success'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (items != null) {
      data['items'] = items!.map((v) => v.toJson()).toList();
    }
    data['success'] = success;
    return data;
  }
}