class ResponseWrapper<T> {
  final T? payload;
  final bool status;

  ResponseWrapper({ required this.status, this.payload});

  factory ResponseWrapper.fromJson(
      bool status, dynamic json, T Function(dynamic) fromJsonT) {
    return ResponseWrapper(
      status: status,
      payload: status && json is! String && json['payload'] != null
          ? fromJsonT(json['payload'])
          : null,
    );
  }
}
