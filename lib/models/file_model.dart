import 'package:json_annotation/json_annotation.dart';

part 'file_model.g.dart';

@JsonSerializable()
class FileModel {

  @JsonKey(name: '_id')
  String? id;
  String? name;
  String? type;

  FileModel();

  factory FileModel.fromJson(Map<String, dynamic> json) => _$FileModelFromJson(json);
  Map<String, dynamic> toJson() => _$FileModelToJson(this);
}