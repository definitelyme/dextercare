enum ResponseType {
  success,
  failure;

  T when<T>({
    required T Function() success,
    required T Function() error,
  }) {
    switch (this) {
      case ResponseType.success:
        return success();
      case ResponseType.failure:
        return error();
    }
  }
}

mixin BaseException implements Exception {
  String get message;
}

mixin _BaseResponse implements BaseException {
  ResponseType get type;
}

mixin Response implements _BaseResponse {}

abstract class Failure implements Response {
  String? get code;

  @override
  ResponseType get type => ResponseType.failure;
}

abstract class Success implements Response {
  @override
  ResponseType get type => ResponseType.success;
}

class UnExpectedFailure implements Failure {
  @override
  final String? code;

  @override
  final String message;

  @override
  final ResponseType type;

  const UnExpectedFailure({
    required this.message,
    this.type = ResponseType.failure,
    this.code,
  });
}
