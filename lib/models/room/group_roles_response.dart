import 'package:json_annotation/json_annotation.dart';

import '../user.dart';

part 'group_roles_response.g.dart';

@JsonSerializable()
class GroupRolesResponse {
  List<GroupRole>? roles;
  bool? success;

  GroupRolesResponse({this.roles, this.success});

  factory GroupRolesResponse.fromJson(Map<String, dynamic> json) => _$GroupRolesResponseFromJson(json);
  Map<String, dynamic> toJson() => _$GroupRolesResponseToJson(this);
}

@JsonSerializable()
class GroupRole {
  String? rid;
  UserModel? u;
  List<String>? roles;
  String? sId;

  GroupRole({this.rid, this.u, this.roles, this.sId});

  factory GroupRole.fromJson(Map<String, dynamic> json) => _$GroupRoleFromJson(json);
  Map<String, dynamic> toJson() => _$GroupRoleToJson(this);

}
