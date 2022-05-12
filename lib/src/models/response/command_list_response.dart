
class CommandListResponse {
  List<Commands>? commands;
  int? offset;
  int? count;
  int? total;
  bool? success;

  CommandListResponse(
      {this.commands, this.offset, this.count, this.total, this.success});

  CommandListResponse.fromJson(Map<String, dynamic> json) {
    if (json['commands'] != null) {
      commands = <Commands>[];
      json['commands'].forEach((v) {
        commands!.add(new Commands.fromJson(v));
      });
    }
    offset = json['offset'];
    count = json['count'];
    total = json['total'];
    success = json['success'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.commands != null) {
      data['commands'] = this.commands!.map((v) => v.toJson()).toList();
    }
    data['offset'] = this.offset;
    data['count'] = this.count;
    data['total'] = this.total;
    data['success'] = this.success;
    return data;
  }
}

class Commands {
  String? command;
  String? params;
  String? description;
  bool? clientOnly;
  bool? providesPreview;
  String? permission;

  Commands(
      {this.command,
        this.params,
        this.description,
        this.clientOnly,
        this.providesPreview,
        this.permission});

  Commands.fromJson(Map<String, dynamic> json) {
    command = json['command'];
    params = json['params'];
    description = json['description'];
    clientOnly = json['clientOnly'];
    providesPreview = json['providesPreview'];
    permission = json['permission'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['command'] = this.command;
    data['params'] = this.params;
    data['description'] = this.description;
    data['clientOnly'] = this.clientOnly;
    data['providesPreview'] = this.providesPreview;
    data['permission'] = this.permission;
    return data;
  }
}
