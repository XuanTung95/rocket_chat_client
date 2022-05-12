import 'package:json_annotation/json_annotation.dart';

part 'login.g.dart';

@JsonSerializable()
class LoginModel {
  String? user;
  String? password;
  String? resume;


  LoginModel({
    this.user,
    this.password,
    this.resume,
  });


  factory LoginModel.fromJson(Map<String, dynamic> json) => _$LoginModelFromJson(json);
  Map<String, dynamic> toJson() => _$LoginModelToJson(this);


}