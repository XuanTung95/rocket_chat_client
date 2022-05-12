/** A function that emits a side effect and does not return anything. */
// export type Procedure = (...args: any[]) => void

import 'dart:async';

/** Delay invocation of a function until some time after it was last called */
void Function() debounce ({required void Function() func,
  int waitMilliseconds = 100,
  required bool immediate}
) {
  StreamSubscription? subscription;

  return () {
    subscription?.cancel();
    final doLater = () {
      subscription = null;
      if (!immediate) func();
    };

    final callNow = immediate && subscription == null;
    if (subscription != null) subscription?.cancel();
    var future = new Future.delayed(Duration(milliseconds: waitMilliseconds));
    subscription = future.asStream().listen((_) => doLater());
    if (callNow) func();
  };
}

/** Convert a http/s protocol address to a websocket URL */
String hostToWS ({required String host, bool ssl = false}) {
  host = host.replaceAllMapped(RegExp(r'/^(https?:\/\/)?/'), (_) => '');
  return "ws${ssl ? 's' : ''}://${host}";
}

String getUserAvatar(String baseUrl, String username, {String? etag}) {
  return '$baseUrl/avatar/$username${etag != null ? '?etag=$etag' : ''}';
}
