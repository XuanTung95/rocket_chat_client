import 'dart:convert';

import 'package:auto_reconnect_websocket/auto_reconnect_websocket.dart';
import 'package:flutter/foundation.dart';

class WebSocketConnection extends ValueNotifier<SocketConnectionStatus> {
  static const String loginMsgId = "420";

  final String url;
  late AutoReconnectWebSocket _autoWebSocket;
  final void Function(Map<String, dynamic>) onMessage;
  int lastPong = DateTime.now().millisecondsSinceEpoch;
  String? _authToken;
  final VoidCallback? onLoggedIn;

  String? get authToken => _authToken;

  set authToken(String? value) {
    _authToken = value;
  }

  /// Handle when cannot create a connection
  Future<bool> onConnectError(dynamic error) async {
    return false;
  }

  Future<bool> reconnect() async {
    return _autoWebSocket.reconnect();
  }

  WebSocketConnection({required this.url, required this.onMessage, this.onLoggedIn})
      : super(SocketConnectionStatus.disconnected) {
    _autoWebSocket = AutoReconnectWebSocket(
      url: url,
      onClosed: (error) {
        return onConnectError(error);
      },
    );
    _autoWebSocket.stateChangeListeners.add((state) async {
      switch (_autoWebSocket.state) {
        case ConnectionState.connected:
          _onWebSocketConnected();
          break;
        case ConnectionState.connecting:
          value = SocketConnectionStatus.connecting;
          break;
        case ConnectionState.disconnected:
          value = SocketConnectionStatus.disconnected;
          break;
      }
    });
    _autoWebSocket.stream.listen((dynamic msg) => handleIncomingMessage(msg));
  }

  void handleIncomingMessage(dynamic message) {
    // print('receive: [$message] ${message.runtimeType}');
    if (message is String) {
      try {
        final json = jsonDecode(message);
        if (json is Map<String, dynamic>) {
          final _msg = json['msg'];
          final _id = json['id'];
          if (_msg == 'ping') {
            _sendPong();
          } else if (_id == loginMsgId) {
            if (json['result']?['token'] == _authToken) {
              _onLoginSuccess();
            } else {
              _onLoginFailed();
            }
          } else {
            onMessage(json);
          }
        }
      } catch (e, st) {
        print('$e $st');
      }
    } else {
      print('ws: message type invalid $message');
    }
  }

  Future connectAndLogin() async {
    await _autoWebSocket.connect();
  }

  _onLoginSuccess() {
    value = SocketConnectionStatus.loggedIn;
    onLoggedIn?.call();
  }

  _onLoginFailed() {
    print('Login Failed maybe retry connect');
  }

  Future _onWebSocketConnected() async {
    print('_onWebSocketConnected');
    assert(_autoWebSocket.sink != null);
    value = SocketConnectionStatus.connecting;
    await _sendConnectRequest();
    value = SocketConnectionStatus.connected;
    await _sendLoginRequest();
  }

  Future _sendConnectRequest() async {
    assert(_autoWebSocket.sink != null);
    Map msg = {
      "msg": "connect",
      "version": "1",
      "support": ["1", "pre2", "pre1"]
    };
    sendMessage(jsonEncode(msg));
  }

  void sendMessage(String msg) {
    if (_autoWebSocket.sink == null) {
      print('Cannot send msg [$msg], status: [$value], socket status: [${_autoWebSocket.state}]');
    }
    print('send: [$msg]');
    _autoWebSocket.sink!.add(msg);
  }

  Future _sendPing() async {
    String msg = '{"msg":"ping"}';
    sendMessage(msg);
    lastPong = DateTime.now().millisecondsSinceEpoch;
  }

  Future _sendPong() async {
    String msg = '{"msg":"pong"}';
    sendMessage(msg);
    lastPong = DateTime.now().millisecondsSinceEpoch;
  }

  Future<bool> _sendLoginRequest() async {
    assert(_autoWebSocket.sink != null);
    if (authToken == null || _autoWebSocket.sink == null) return false;
    Map msg = {
      "msg": "method",
      "method": "login",
      "id": loginMsgId,
      "params": [
        {"resume": authToken}
      ]
    };
    sendMessage(jsonEncode(msg));
    return true;
  }

  @override
  void dispose() {
    super.dispose();
    _autoWebSocket.dispose();
  }
}

enum SocketConnectionStatus {
  disconnected,
  connecting,
  connected,
  loggedIn,
}
