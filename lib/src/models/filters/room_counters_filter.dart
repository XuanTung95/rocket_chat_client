import 'package:rocket_chat_client/src/models/filters/room_filter.dart';
import 'package:rocket_chat_client/src/models/room.dart';

import '../user.dart';

class RoomCountersFilter extends RoomFilter {
  UserModel? user;

  RoomCountersFilter(Room room, {this.user}) : super(room);

  Map<String, dynamic> toJson() => {
        'roomId': room.id,
        'userId': user != null ? user!.id : null,
      };

  @override
  String toString() {
    return 'RoomCountersFilter{user: $user}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      super == other &&
          other is RoomCountersFilter &&
          runtimeType == other.runtimeType &&
          user == other.user;

  @override
  int get hashCode => super.hashCode ^ user.hashCode;
}
