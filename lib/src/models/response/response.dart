class SuccessResponse {
  bool? success;

  SuccessResponse({
    this.success = false,
  });

  SuccessResponse.fromJson(Map<String, dynamic>? json) {
    if (json != null) {
      success = json['success'];
    }
  }

  Map<String, dynamic> toJson() => {
        'success': success,
      };

  @override
  String toString() {
    return 'Response{success: $success}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SuccessResponse &&
          runtimeType == other.runtimeType &&
          success == other.success;

  @override
  int get hashCode => success.hashCode;
}
