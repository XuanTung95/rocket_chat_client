
import 'package:rocket_chat_client/models/user.dart';

class LoginResponse {
  String? status;
  LoginResponseData? data;

  LoginResponse({this.status, this.data});

  LoginResponse.fromJson(Map<String, dynamic>? json) {
    if (json != null) {
      status = json['status'];
      data = json['data'] != null ? LoginResponseData.fromMap(json['data']) : null;
    }
  }

  Map<String, dynamic> toJson() => {
        'status': status,
        'data': data != null ? data!.toMap() : null,
      };

  @override
  String toString() {
    return 'Authentication{status: $status}';
  }

}

class LoginResponseData {
  String? authToken;
  String? userId;
  UserModel? me;

  LoginResponseData({
    this.authToken,
    this.userId,
    this.me,
  });

  LoginResponseData.fromMap(Map<String, dynamic>? json) {
    if (json != null) {
      authToken = json['authToken'];
      userId = json['userId'];
      me = json['me'] != null ? UserModel.fromJson(json['me']) : null;
    }
  }

  Map<String, dynamic> toMap() => {
        'authToken': authToken,
        'userId': userId,
        'me': me != null ? me!.toJson() : null,
      };

  @override
  String toString() {
    return '_Data{authToken: $authToken, userId: $userId, me: $me}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is LoginResponseData &&
          runtimeType == other.runtimeType &&
          authToken == other.authToken &&
          userId == other.userId &&
          me == other.me;

  @override
  int get hashCode => authToken.hashCode ^ userId.hashCode ^ me.hashCode;
}
