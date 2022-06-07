import 'dart:convert';

import 'package:rocket_chat_client/web_socket/web_socket_connection.dart';

import '../models/channel.dart';
import '../models/room.dart';

class WebSocketService {
  static const String defaultMsgId = "42";

  WebSocketConnection socketConnection;

  WebSocketService(this.socketConnection);

  void streamNotifyUser(String id, List<String> params) {
    Map msg = {
      "msg": "sub",
      "id": id,
      "name": "stream-notify-user",
      "params": params
    };

    socketConnection.sendMessage(jsonEncode(msg));
  }

  void streamNotifyRoom(String id, List<String> params) {
    Map msg = {
      "msg": "sub",
      "id": id,
      "name": "stream-notify-room",
      "params": params,
    };

    socketConnection.sendMessage(jsonEncode(msg));
  }

  void streamChannelMessagesUnsubscribe(Channel channel) {
    Map msg = {
      "msg": "unsub",
      "id": channel.id! + "subscription-id",
    };
    socketConnection.sendMessage(jsonEncode(msg));
  }

  void streamRoomMessagesSubscribe(String id, String roomId) {
    Map msg = {
      "msg": "sub",
      "id": id,
      "name": "stream-room-messages",
      "params": [roomId, false]
    };
    socketConnection.sendMessage(jsonEncode(msg));
  }

  void streamRoomMessagesUnsubscribe(String id) {
    Map msg = {
      "msg": "unsub",
      "id": id,
    };
    socketConnection.sendMessage(jsonEncode(msg));
  }

  void sendMessageOnChannel(
      String message, Channel channel) {
    Map msg = {
      "msg": "method",
      "method": "sendMessage",
      "id": defaultMsgId,
      "params": [
        {"rid": channel.id, "msg": message}
      ]
    };

    socketConnection.sendMessage(jsonEncode(msg));
  }

  void sendMessageOnRoom(
      String message, Room room) {
    Map msg = {
      "msg": "method",
      "method": "sendMessage",
      "id": defaultMsgId,
      "params": [
        {"rid": room.id, "msg": message}
      ]
    };

    socketConnection.sendMessage(jsonEncode(msg));
  }

  void sendUserPresence() {
    Map msg = {
      "msg": "method",
      "method": "UserPresence:setDefaultStatus",
      "id": defaultMsgId,
      "params": ["online"]
    };
    socketConnection.sendMessage(jsonEncode(msg));
  }
}
