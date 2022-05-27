class MethodRequest {
  String? msg;
  String? id;
  String? method;
  List<dynamic>? params;

  MethodRequest({this.msg, this.id, this.method, this.params});

  MethodRequest.fromJson(Map<String, dynamic> json) {
    msg = json['msg'];
    id = json['id'];
    method = json['method'];
    if (json['params'] != null) {
      params = [];
      json['params'].forEach((v) {
        params!.add(v);
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['msg'] = msg;
    data['id'] = id;
    data['method'] = method;
    if (params != null) {
      data['params'] = params;
    }
    return data;
  }
}
