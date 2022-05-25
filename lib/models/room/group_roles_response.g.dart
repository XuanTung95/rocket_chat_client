// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group_roles_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GroupRolesResponse _$GroupRolesResponseFromJson(Map<String, dynamic> json) =>
    GroupRolesResponse(
      roles: (json['roles'] as List<dynamic>?)
          ?.map((e) => GroupRole.fromJson(e as Map<String, dynamic>))
          .toList(),
      success: json['success'] as bool?,
    );

Map<String, dynamic> _$GroupRolesResponseToJson(GroupRolesResponse instance) =>
    <String, dynamic>{
      'roles': instance.roles,
      'success': instance.success,
    };

GroupRole _$GroupRoleFromJson(Map<String, dynamic> json) => GroupRole(
      rid: json['rid'] as String?,
      u: json['u'] == null
          ? null
          : UserModel.fromJson(json['u'] as Map<String, dynamic>?),
      roles:
          (json['roles'] as List<dynamic>?)?.map((e) => e as String).toList(),
      sId: json['sId'] as String?,
    );

Map<String, dynamic> _$GroupRoleToJson(GroupRole instance) => <String, dynamic>{
      'rid': instance.rid,
      'u': instance.u,
      'roles': instance.roles,
      'sId': instance.sId,
    };
