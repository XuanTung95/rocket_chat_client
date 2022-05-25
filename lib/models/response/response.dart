class SuccessResponse {
  bool? success;

  String? error;
  String? errorType;


  SuccessResponse({
    this.success = false,
  });

  SuccessResponse.fromJson(Map<String, dynamic>? json) {
    if (json != null) {
      success = json['success'];
      error = json['error'];
      errorType = json['errorType'];
    }
  }

  Map<String, dynamic> toJson() => {
        'success': success,
        'error': error,
        'errorType': errorType,
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
