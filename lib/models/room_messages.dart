import 'dart:convert';

import 'message.dart';

class RoomMessages {
  List<Message>? messages;
  int? count;
  int? offset;
  int? total;
  bool? success;

  RoomMessages({
    this.messages,
    this.count,
    this.offset,
    this.total,
    this.success = false,
  });

  RoomMessages.fromMap(Map<String, dynamic>? json) {
    if (json != null) {
      if (json['messages'] != null) {
        List<dynamic> jsonList = json['messages'].runtimeType == String //
            ? jsonDecode(json['messages'])
            : json['messages'];
        messages = jsonList
            .where((json) => json != null)
            .map((json) => Message.fromJson(json))
            .toList();
      } else {
        messages = null;
      }

      count = json['count'];
      offset = json['offset'];
      total = json['total'];
      success = json['success'];
    }
  }

  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = {};

    if (messages != null) {
      map['messages'] = messages
              ?.where((json) => json != null)
              .map((message) => message.toJson())
              .toList() ??
          [];
    }

    if (count != null) {
      map['count'] = count;
    }

    if (offset != null) {
      map['offset'] = offset;
    }

    if (total != null) {
      map['total'] = total;
    }

    if (success != null) {
      map['success'] = success;
    }

    return map;
  }

  @override
  String toString() {
    return 'RoomMessages{messages: $messages, count: $count, offset: $offset, total: $total, success: $success}';
  }
}
