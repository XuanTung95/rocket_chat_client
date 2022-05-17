
import 'dart:async';


String hostToWS ({required String host, bool ssl = false}) {
  host = host.replaceAllMapped(RegExp(r'/^(https?:\/\/)?/'), (_) => '');
  return "ws${ssl ? 's' : ''}://$host";
}

String getUserAvatar(String baseUrl, String username, {String? etag}) {
  return '$baseUrl/avatar/$username${etag != null ? '?etag=$etag' : ''}';
}
