class Mention {
  String? id;
  String? name;
  String? username;

  Mention({
    this.id,
    this.name,
    this.username,
  });

  Mention.fromJson(dynamic json) {
    id = json["_id"];
    name = json["name"];
    username = json["username"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["_id"] = id;
    map["name"] = name;
    map["username"] = username;
    return map;
  }

  @override
  String toString() {
    return 'Mention{usernames: $username}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Mention &&
          runtimeType == other.runtimeType &&
          username == other.username;

  @override
  int get hashCode => username.hashCode;
}
