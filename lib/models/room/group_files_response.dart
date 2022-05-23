import 'package:rocket_chat_client/models/user.dart';
import 'package:json_annotation/json_annotation.dart';

part 'group_files_response.g.dart';

@JsonSerializable()
class GroupFilesResponse {
  List<AttachFileModel>? files;
  int? count;
  int? offset;
  int? total;
  bool? success;

  GroupFilesResponse(
      {this.files, this.count, this.offset, this.total, this.success});

  factory GroupFilesResponse.fromJson(Map<String, dynamic> json) => _$GroupFilesResponseFromJson(json);
  Map<String, dynamic> toJson() => _$GroupFilesResponseToJson(this);
}

@JsonSerializable()
class AttachFileModel {
  @JsonKey(name: '_id')
  String? sId;
  String? name;
  int? size;
  String? type;
  String? rid;
  String? description;
  String? store;
  bool? complete;
  bool? uploading;
  String? extension;
  int? progress;
  UserModel? user;

  @JsonKey(name: '_updatedAt')
  DateTime? updatedAt;
  String? instanceId;
  String? etag;
  String? path;
  String? token;
  DateTime? uploadedAt;
  String? url;

  AttachFileModel(
      {this.sId,
        this.name,
        this.size,
        this.type,
        this.rid,
        this.description,
        this.store,
        this.complete,
        this.uploading,
        this.extension,
        this.progress,
        this.user,
        this.updatedAt,
        this.instanceId,
        this.etag,
        this.path,
        this.token,
        this.uploadedAt,
        this.url});

  factory AttachFileModel.fromJson(Map<String, dynamic> json) => _$AttachFileModelFromJson(json);
  Map<String, dynamic> toJson() => _$AttachFileModelToJson(this);
}
