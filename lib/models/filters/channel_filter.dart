
import '../channel.dart';
import 'filter.dart';

class ChannelFilter extends Filter {
  Channel channel;

  ChannelFilter(this.channel);

  @override
  Map<String, dynamic> toJson() => {
        'roomId': channel.id,
      };

  @override
  String toString() {
    return 'ChannelFilter{channel: $channel}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ChannelFilter &&
          runtimeType == other.runtimeType &&
          channel == other.channel;

  @override
  int get hashCode => channel.hashCode;
}
