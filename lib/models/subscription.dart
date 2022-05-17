import 'dart:convert';

import 'package:rocket_chat_client/models/subscription_update.dart';

class Subscription {
  List<SubscriptionUpdate>? update;
  List<SubscriptionUpdate>? remove;
  bool? success;

  Subscription({
    this.update,
    this.remove,
    this.success,
  });

  Subscription.fromJson(Map<String, dynamic>? json) {
    if (json != null) {
      if (json['update'] != null) {
        List<dynamic> jsonList = json['update'].runtimeType == String //
            ? jsonDecode(json['update'])
            : json['update'];
        update = jsonList
            .where((json) => json != null)
            .map((value) => SubscriptionUpdate.fromJson(value))
            .toList();
      } else {
        update = null;
      }

      if (json['remove'] != null) {
        List<dynamic> jsonList = json['remove'].runtimeType == String //
            ? jsonDecode(json['remove'])
            : json['remove'];
        remove = jsonList
            .where((json) => json != null)
            .map((value) => SubscriptionUpdate.fromJson(value))
            .toList();
      } else {
        remove = null;
      }

      success = json['success'];
    }
  }

  Map<String, dynamic> toJson() {
    return {
      "update": update?.map((v) => v.toJson()).toList(),
      "remove": remove,
      "success": success,
    };
  }

  @override
  String toString() {
    return 'Subscription{update: $update, remove: $remove, success: $success}';
  }
}
