import 'package:json_annotation/json_annotation.dart';

part 'default_response.g.dart';

@JsonSerializable()
class DefaultResponse {
  String? status;
  DefaultMsgResponse? data;

  DefaultResponse({
    this.status,
    this.data,
  });

  factory DefaultResponse.fromJson(Map<String, dynamic> json) => _$DefaultResponseFromJson(json);
  Map<String, dynamic> toJson() => _$DefaultResponseToJson(this);


}

@JsonSerializable()
class DefaultMsgResponse{
  String? message;

  DefaultMsgResponse({
    this.message,
  });

  factory DefaultMsgResponse.fromJson(Map<String, dynamic> json) => _$DefaultMsgResponseFromJson(json);
  Map<String, dynamic> toJson() => _$DefaultMsgResponseToJson(this);

}