
import '../room.dart';
import 'filter.dart';

class RoomFilter extends Filter {
  Room room;

  RoomFilter(this.room);

  Map<String, dynamic> toJson() => {
        'roomId': room.id,
      };

  @override
  String toString() {
    return 'RoomFilter{room: $room}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is RoomFilter &&
          runtimeType == other.runtimeType &&
          room == other.room;

  @override
  int get hashCode => room.hashCode;
}
