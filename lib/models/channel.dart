import 'package:rocket_chat_client/models/user.dart';

class Channel {
  String? id;
  String? name;
  String? t;
  List<String>? usernames;
  int? msgs;
  UserModel? user;
  DateTime? ts;

  Channel({
    this.id,
    this.name,
    this.t,
    this.usernames,
    this.msgs,
    this.user,
    this.ts,
  });

  Channel.fromMap(Map<String, dynamic>? json) {
    if (json != null) {
      id = json['_id'];
      name = json['name'];
      t = json['t'];
      usernames = List<String>.from(json['usernames']);
      msgs = json['msgs'];
      user = json['u'] != null ? UserModel.fromJson(json['u']) : null;
      ts = DateTime.parse(json['ts']);
    }
  }

  Map<String, dynamic> toMap() => {
        '_id': id,
        'name': name,
        't': t,
        'usernames': usernames,
        'msgs': msgs,
        'u': user != null ? user!.toJson() : null,
        'ts': ts != null ? ts!.toIso8601String() : null,
      };

  @override
  String toString() {
    return 'Channel{_id: $id, name: $name, t: $t, usernames: $usernames, msgs: $msgs, user: $user, ts: $ts}';
  }
}
