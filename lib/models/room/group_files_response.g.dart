// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group_files_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GroupFilesResponse _$GroupFilesResponseFromJson(Map<String, dynamic> json) =>
    GroupFilesResponse(
      files: (json['files'] as List<dynamic>?)
          ?.map((e) => AttachFileModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      count: json['count'] as int?,
      offset: json['offset'] as int?,
      total: json['total'] as int?,
      success: json['success'] as bool?,
    );

Map<String, dynamic> _$GroupFilesResponseToJson(GroupFilesResponse instance) =>
    <String, dynamic>{
      'files': instance.files,
      'count': instance.count,
      'offset': instance.offset,
      'total': instance.total,
      'success': instance.success,
    };

AttachFileModel _$AttachFileModelFromJson(Map<String, dynamic> json) =>
    AttachFileModel(
      sId: json['_id'] as String?,
      name: json['name'] as String?,
      size: json['size'] as int?,
      type: json['type'] as String?,
      rid: json['rid'] as String?,
      description: json['description'] as String?,
      store: json['store'] as String?,
      complete: json['complete'] as bool?,
      uploading: json['uploading'] as bool?,
      extension: json['extension'] as String?,
      progress: json['progress'] as int?,
      user: json['user'] == null
          ? null
          : UserModel.fromJson(json['user'] as Map<String, dynamic>?),
      updatedAt: json['_updatedAt'] == null
          ? null
          : DateTime.parse(json['_updatedAt'] as String),
      instanceId: json['instanceId'] as String?,
      etag: json['etag'] as String?,
      path: json['path'] as String?,
      token: json['token'] as String?,
      uploadedAt: json['uploadedAt'] == null
          ? null
          : DateTime.parse(json['uploadedAt'] as String),
      url: json['url'] as String?,
    );

Map<String, dynamic> _$AttachFileModelToJson(AttachFileModel instance) =>
    <String, dynamic>{
      '_id': instance.sId,
      'name': instance.name,
      'size': instance.size,
      'type': instance.type,
      'rid': instance.rid,
      'description': instance.description,
      'store': instance.store,
      'complete': instance.complete,
      'uploading': instance.uploading,
      'extension': instance.extension,
      'progress': instance.progress,
      'user': instance.user,
      '_updatedAt': instance.updatedAt?.toIso8601String(),
      'instanceId': instance.instanceId,
      'etag': instance.etag,
      'path': instance.path,
      'token': instance.token,
      'uploadedAt': instance.uploadedAt?.toIso8601String(),
      'url': instance.url,
    };
