
import '../channel.dart';
import '../user.dart';
import 'channel_filter.dart';

class ChannelCountersFilter extends ChannelFilter {
  UserModel? user;

  ChannelCountersFilter(Channel channel, {this.user}) : super(channel);

  Map<String, dynamic> toMap() => {
        'roomId': channel.id,
        'userId': user != null ? user!.id : null,
      };

  @override
  String toString() {
    return 'ChannelCountersFilter{user: $user}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      super == other &&
          other is ChannelCountersFilter &&
          runtimeType == other.runtimeType &&
          user == other.user;

  @override
  int get hashCode => super.hashCode ^ user.hashCode;
}
