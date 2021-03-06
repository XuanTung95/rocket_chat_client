import 'dart:convert';

import 'package:rocket_chat_client/models/user.dart';

class SubscriptionUpdate {
  String? id;
  bool? open;
  bool? alert;
  int? unread;
  int? userMentions;
  int? groupMentions;
  DateTime? ts;
  String? rid;
  String? name;
  String? fname;
  String? t;
  UserModel? u;
  DateTime? ls;
  DateTime? updatedAt;
  List<String>? roles;

  SubscriptionUpdate({
    this.id,
    this.open,
    this.alert,
    this.unread,
    this.userMentions,
    this.groupMentions,
    this.ts,
    this.rid,
    this.name,
    this.fname,
    this.t,
    this.u,
    this.ls,
    this.updatedAt,
    this.roles,
  });

  SubscriptionUpdate.fromJson(Map<String, dynamic> json) {
    id = json['_id'];
    open = json['open'];
    alert = json['alert'];
    unread = json['unread'];
    userMentions = json['userMentions'];
    groupMentions = json['groupMentions'];
    ts = json['ts'] != null ? DateTime.parse(json['ts']) : null;
    rid = json['rid'];
    name = json['name'];
    fname = json['fname'];
    t = json['t'];
    u = json['u'] != null ? UserModel.fromJson(json['u']) : null;
    ls = json['ls'] != null ? DateTime.parse(json['ls']) : null;
    updatedAt = json['_updatedAt'] != null
        ? DateTime.parse(json['_updatedAt'])
        : null;
    if (json['roles'] != null) {
      List<dynamic> jsonList = json['roles'].runtimeType == String //
          ? jsonDecode(json['roles'])
          : json['roles'];
      roles = jsonList
          .where((json) => json != null)
          .map((value) => value.toString())
          .toList();
    } else {
      roles = null;
    }
  }

  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "open": open,
      "alert": alert,
      "unread": unread,
      "userMentions": userMentions,
      "groupMentions": groupMentions,
      "ts": ts?.toIso8601String(),
      "rid": rid,
      "name": name,
      "fname": fname,
      "t": t,
      "u": u,
      "ls": ls?.toIso8601String(),
      "updatedAt": updatedAt?.toIso8601String(),
      "roles": jsonEncode(roles),
    };
  }

  @override
  String toString() {
    return 'SubscriptionUpdate{id: $id, open: $open, alert: $alert, unread: $unread, userMentions: $userMentions, groupMentions: $groupMentions, ts: $ts, rid: $rid, name: $name, fname: $fname, t: $t, u: $u, ls: $ls, updatedAt: $updatedAt, roles: $roles}';
  }
}
