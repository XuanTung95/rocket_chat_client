


import 'dart:convert';

class AutoCompleteSelector {
  String term = '';
  List<String> exceptions = [];

  String urlEncode() {
    Map map = {"term": term};
    if (exceptions.isNotEmpty) {
      map.addAll({"exceptions" : exceptions});
    }
    return jsonEncode(map);
  }
}