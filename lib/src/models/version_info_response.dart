

class VersionInfoResponse {
  String? version;
  bool? success;

  VersionInfoResponse({this.version, this.success});

  VersionInfoResponse.fromJson(Map<String, dynamic> json) {
    version = json['version'];
    success = json['success'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['version'] = this.version;
    data['success'] = this.success;
    return data;
  }
}