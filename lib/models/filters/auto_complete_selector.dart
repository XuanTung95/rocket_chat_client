import 'dart:convert';

class AutoCompleteSelector {
  String term = '';
  List<String> exceptions = [];

  String urlEncode() {
    Map map = {"term": term};
    if (exceptions.isNotEmpty) {
      map.addAll({"exceptions": exceptions});
    }
    return jsonEncode(map);
  }
}

class GetListUserSelector {
  final String regex;

  GetListUserSelector(this.regex);

  String urlEncode() {
    Map map = {
      r"$or": [
        {
          "emails.address": {r"$regex": regex, r"$options": "i"}
        },
        {
          "username": {r"$regex": regex, r"$options": "i"}
        },
        {
          "name": {r"$regex": regex, r"$options": "i"}
        }
      ]
    };

    return jsonEncode(map);
  }
}
