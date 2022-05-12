class RoomDisplayResponse {
  List<RoomDisplay>? update;
  List<RoomDisplay>? remove;
  bool? success;

  RoomDisplayResponse({this.update, this.remove, this.success});

  RoomDisplayResponse.fromJson(Map<String, dynamic> json) {
    if (json['update'] != null) {
      update = <RoomDisplay>[];
      json['update'].forEach((v) {
        update!.add(RoomDisplay.fromJson(v));
      });
    }
    if (json['remove'] != null) {
      remove = <RoomDisplay>[];
      json['remove'].forEach((v) {
        remove!.add(RoomDisplay.fromJson(v));
      });
    }
    success = json['success'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (update != null) {
      data['update'] = update!.map((v) => v.toJson()).toList();
    }
    if (remove != null) {
      data['remove'] = remove!.map((v) => v.toJson()).toList();
    }
    data['success'] = success;
    return data;
  }
}

class RoomDisplay {
  String? sId;
  String? t;
  String? fname;
  CustomFields? customFields;
  bool? broadcast;
  bool? encrypted;
  String? name;
  int? msgs;
  int? usersCount;
  RoomMember? u;
  String? ts;
  bool? ro;
  bool? sysMes;
  String? sUpdatedAt;
  List<String>? usernames;
  List<String>? uids;
  // bool? default;
  LastMessage? lastMessage;
  String? lm;
  String? description;
  String? prid;

  RoomDisplay(
      {this.sId,
      this.t,
      this.usernames,
      this.usersCount,
      this.msgs,
      this.ts,
      this.uids,
      this.ro,
      this.sysMes,
      this.sUpdatedAt,
      this.lastMessage,
      this.lm,
      this.fname,
      this.customFields,
      this.description,
      this.broadcast,
      this.encrypted,
      this.name,
      this.u,
      this.prid});

  RoomDisplay.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    t = json['t'];
    usernames = json['usernames'].cast<String>();
    usersCount = json['usersCount'];
    msgs = json['msgs'];
    ts = json['ts'];
    uids = json['uids'].cast<String>();
// default = json['default'];
    ro = json['ro'];
    sysMes = json['sysMes'];
    sUpdatedAt = json['_updatedAt'];
    lastMessage = json['lastMessage'] != null
        ? LastMessage.fromJson(json['lastMessage'])
        : null;
    lm = json['lm'];
    fname = json['fname'];
    customFields = json['customFields'] != null
        ? CustomFields.fromJson(json['customFields'])
        : null;
    description = json['description'];
    broadcast = json['broadcast'];
    encrypted = json['encrypted'];
    name = json['name'];
    u = json['u'] != null ? RoomMember.fromJson(json['u']) : null;
    prid = json['prid'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['_id'] = sId;
    data['t'] = t;
    data['usernames'] = usernames;
    data['usersCount'] = usersCount;
    data['msgs'] = msgs;
    data['ts'] = ts;
    data['uids'] = uids;
    // data['default'] = this.default;
    data['ro'] = ro;
    data['sysMes'] = sysMes;
    data['_updatedAt'] = sUpdatedAt;
    if (lastMessage != null) {
      data['lastMessage'] = lastMessage!.toJson();
    }
    data['lm'] = lm;
    data['fname'] = fname;
    if (customFields != null) {
      data['customFields'] = customFields!.toJson();
    }
    data['description'] = description;
    data['broadcast'] = broadcast;
    data['encrypted'] = encrypted;
    data['name'] = name;
    if (u != null) {
      data['u'] = u!.toJson();
    }
    data['prid'] = prid;
    return data;
  }
}

class LastMessage {
  String? sId;
  String? rid;
  String? msg;
  String? ts;
  RoomMember? u;
  String? sUpdatedAt;
  List<Urls>? urls;
  List<Mentions>? mentions;

  // List<Null>? channels;
  List<Md>? md;

  LastMessage(
      {this.sId,
      this.rid,
      this.msg,
      this.ts,
      this.u,
      this.sUpdatedAt,
      this.urls,
      this.mentions,
      this.md});

  LastMessage.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    rid = json['rid'];
    msg = json['msg'];
    ts = json['ts'];
    u = json['u'] != null ? RoomMember.fromJson(json['u']) : null;
    sUpdatedAt = json['_updatedAt'];
    if (json['urls'] != null) {
      urls = <Urls>[];
      json['urls'].forEach((v) {
        urls!.add(Urls.fromJson(v));
      });
    }
    if (json['mentions'] != null) {
      mentions = <Mentions>[];
      json['mentions'].forEach((v) {
        mentions!.add(Mentions.fromJson(v));
      });
    }
    // if (json['channels'] != null) {
    //   channels = <Null>[];
    //   json['channels'].forEach((v) { channels!.add(new Null.fromJson(v)); });
    // }
    if (json['md'] != null) {
      md = <Md>[];
      json['md'].forEach((v) {
        md!.add(Md.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['_id'] = sId;
    data['rid'] = rid;
    data['msg'] = msg;
    data['ts'] = ts;
    if (u != null) {
      data['u'] = u!.toJson();
    }
    data['_updatedAt'] = sUpdatedAt;
    if (urls != null) {
      data['urls'] = urls!.map((v) => v.toJson()).toList();
    }
    if (mentions != null) {
      data['mentions'] = mentions!.map((v) => v.toJson()).toList();
    }
    // if (this.channels != null) {
    //   data['channels'] = this.channels!.map((v) => v.toJson()).toList();
    // }
    if (md != null) {
      data['md'] = md!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class RoomMember {
  String? sId;
  String? username;
  String? name;

  RoomMember({this.sId, this.username, this.name});

  RoomMember.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    username = json['username'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['_id'] = sId;
    data['username'] = username;
    data['name'] = name;
    return data;
  }
}

class Urls {
  String? url;

  Urls({this.url});

  Urls.fromJson(Map<String, dynamic> json) {
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['url'] = url;
    return data;
  }
}

class Mentions {
  String? sId;
  String? name;
  String? username;
  String? type;

  Mentions({this.sId, this.name, this.username, this.type});

  Mentions.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    name = json['name'];
    username = json['username'];
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['_id'] = sId;
    data['name'] = name;
    data['username'] = username;
    data['type'] = type;
    return data;
  }
}

class Md {
  String? type;
  List<Value>? value;

  Md({this.type, this.value});

  Md.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    if (json['value'] != null) {
      value = <Value>[];
      json['value'].forEach((v) {
        value!.add(Value.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['type'] = type;
    if (value != null) {
      data['value'] = value!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Value {
  String? type;
  String? value;

  Value({this.type, this.value});

  Value.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    value = json['value'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['type'] = type;
    data['value'] = value;
    return data;
  }
}

class CustomFields {
  Map? data;

  CustomFields({data});

  CustomFields.fromJson(Map<String, dynamic> json) {
    data = json;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    return data;
  }
}
