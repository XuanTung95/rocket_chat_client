import 'dart:convert';

import 'message.dart';

class ChannelMessages {
  List<Message>? messages;
  int? count;
  int? offset;
  int? total;
  bool? success;

  ChannelMessages({
    this.messages,
    this.count,
    this.offset,
    this.total,
    this.success = false,
  });

  ChannelMessages.fromJson(Map<String, dynamic>? json) {
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

  Map<String, dynamic> toJson() {
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
    return 'ChannelMessages{messages: $messages, count: $count, offset: $offset, total: $total, success: $success}';
  }
}
