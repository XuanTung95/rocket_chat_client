import 'dart:convert';

import 'package:rocket_chat_client/services/api_services.dart';

import '../models/channel.dart';
import '../models/channel_counters.dart';
import '../models/channel_messages.dart';
import '../models/filters/channel_history_filter.dart';
import '../models/new/channel_new.dart';
import '../models/response/channel_new_response.dart';
import '../models/response/response.dart';

class ChannelService {
  ApiServices api;
  ChannelService(this.api);


  Future<ChannelNewResponse> create(
      ChannelNew channelNew,) async {
    return api.client.createChannel(channelNew);
  }

  Future<ChannelMessages> messages(
      Channel channel,) async {
    return api.client.channelMessages(channel.id ?? '');
  }

  Future<SuccessResponse> markAsRead(
      Channel channel,) async {
    Map<String, String?> body = {"rid": channel.id};

    return api.client.markAsRead(body);
  }

  Future<ChannelMessages> history(
      ChannelHistoryFilter filter,) async {
    final map = filter.toJson();
    return api.client.channelHistory(roomId: filter.channel.id ?? '',
        latest: map['latest'] ?? '',
    oldest: map['oldest'] ?? '',
    inclusive: filter.inclusive ?? false,
    offset: filter.offset ?? 0,
    count: filter.count ?? 20,
    unreads: filter.unreads ?? false,
    );
  }

  Future<ChannelCounters> counters(
    Channel channel,
  ) async {
    return api.client.channelCounters(channel.id ?? '');
  }

}
