import 'package:rocket_chat_client/models/user.dart';

class UserInfoResponse {
  UserModel? user;
  bool? success;

  UserInfoResponse({this.user, this.success});

  UserInfoResponse.fromJson(Map<String, dynamic> json) {
    user = json['user'] != null ? new UserModel.fromJson(json['user']) : null;
    success = json['success'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.user != null) {
      data['user'] = this.user!.toJson();
    }
    data['success'] = this.success;
    return data;
  }
}
