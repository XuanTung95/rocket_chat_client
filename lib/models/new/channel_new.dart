
import 'package:json_annotation/json_annotation.dart';

part 'channel_new.g.dart';

@JsonSerializable()
class ChannelNew {
  String? name;
  List<String>? members;
  bool? readOnly;

  ChannelNew({
    this.name,
    this.members,
    this.readOnly
  });

  factory ChannelNew.fromJson(Map<String, dynamic> json) => _$ChannelNewFromJson(json);
  Map<String, dynamic> toJson() => _$ChannelNewToJson(this);

  @override
  String toString() {
    return 'ChannelNew{name: $name}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ChannelNew &&
          runtimeType == other.runtimeType &&
          name == other.name;

  @override
  int get hashCode => name.hashCode;
}
