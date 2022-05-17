import 'package:json_annotation/json_annotation.dart';

class DefaultDateTimeConverter implements JsonConverter<DateTime, String> {
  const DefaultDateTimeConverter();

  @override
  DateTime fromJson(String json) {
    return DateTime.parse(json);
  }

  @override
  String toJson(DateTime json) => json.toIso8601String();
}