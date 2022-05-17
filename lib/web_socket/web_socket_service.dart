import 'dart:convert';

import 'package:auto_reconnect_websocket/auto_reconnect_websocket.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

import '../models/authentication.dart';
import '../models/channel.dart';
import '../models/room.dart';
import '../models/user.dart';


class WebSocketService {
  AutoReconnectWebSocket connectToWebSocket(
      String url, LoginResponse authentication) {

    AutoReconnectWebSocket webSocketChannel = AutoReconnectWebSocket(url: url, onConnectError: (error) async {
      await Future.delayed(Duration(seconds: 5));
      return true;
    }, onClose: () async {
      await Future.delayed(Duration(seconds: 5));
      return true;
    });
    webSocketChannel.connect().then((value) {
      _sendConnectRequest(webSocketChannel);
      _sendLoginRequest(webSocketChannel, authentication);
    });

    return webSocketChannel;
  }

  void _sendConnectRequest(AutoReconnectWebSocket webSocketChannel) {
    Map msg = {
      "msg": "connect",
      "version": "1",
      "support": ["1", "pre2", "pre1"]
    };
    webSocketChannel.sink?.add(jsonEncode(msg));
  }

  void _sendLoginRequest(
      AutoReconnectWebSocket webSocketChannel, LoginResponse authentication) {
    Map msg = {
      "msg": "method",
      "method": "login",
      "id": "42",
      "params": [
        {"resume": authentication.data!.authToken}
      ]
    };

    webSocketChannel.sink?.add(jsonEncode(msg));
  }

  void streamNotifyUserSubscribe(AutoReconnectWebSocket webSocketChannel, UserModel user) {
    Map msg = {
      "msg": "sub",
      "id": user.id! + "subscription-id",
      "name": "stream-notify-user",
      "params": [user.id! + "/notification", false]
    };

    webSocketChannel.sink?.add(jsonEncode(msg));
  }

  void streamChannelMessagesSubscribe(
      WebSocketChannel webSocketChannel, Channel channel) {
    Map msg = {
      "msg": "sub",
      "id": channel.id! + "subscription-id",
      "name": "stream-room-messages",
      "params": [channel.id, false]
    };
    webSocketChannel.sink.add(jsonEncode(msg));
  }

  void streamChannelMessagesUnsubscribe(
      WebSocketChannel webSocketChannel, Channel channel) {
    Map msg = {
      "msg": "unsub",
      "id": channel.id! + "subscription-id",
    };
    webSocketChannel.sink.add(jsonEncode(msg));
  }

  void streamRoomMessagesSubscribe(
      WebSocketChannel webSocketChannel, Room room) {
    Map msg = {
      "msg": "sub",
      "id": room.id! + "subscription-id",
      "name": "stream-room-messages",
      "params": [room.id, false]
    };
    webSocketChannel.sink.add(jsonEncode(msg));
  }

  void streamRoomMessagesUnsubscribe(
      WebSocketChannel webSocketChannel, Room room) {
    Map msg = {
      "msg": "unsub",
      "id": room.id! + "subscription-id",
    };
    webSocketChannel.sink.add(jsonEncode(msg));
  }

  void sendMessageOnChannel(
      String message, AutoReconnectWebSocket webSocketChannel, Channel channel) {
    Map msg = {
      "msg": "method",
      "method": "sendMessage",
      "id": "42",
      "params": [
        {"rid": channel.id, "msg": message}
      ]
    };

    webSocketChannel.sink?.add(jsonEncode(msg));
  }

  void sendMessageOnRoom(
      String message, AutoReconnectWebSocket webSocketChannel, Room room) {
    Map msg = {
      "msg": "method",
      "method": "sendMessage",
      "id": "42",
      "params": [
        {"rid": room.id, "msg": message}
      ]
    };

    webSocketChannel.sink?.add(jsonEncode(msg));
  }

  void sendUserPresence(WebSocketChannel webSocketChannel) {
    Map msg = {
      "msg": "method",
      "method": "UserPresence:setDefaultStatus",
      "id": "42",
      "params": ["online"]
    };
    webSocketChannel.sink.add(jsonEncode(msg));
  }
}
