// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of auth_response.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthResponse {
  String? get code => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  ResponseType get type => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthResponseCopyWith<AuthResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthResponseCopyWith<$Res> {
  factory $AuthResponseCopyWith(
          AuthResponse value, $Res Function(AuthResponse) then) =
      _$AuthResponseCopyWithImpl<$Res, AuthResponse>;
  @useResult
  $Res call({String? code, String message, ResponseType type});
}

/// @nodoc
class _$AuthResponseCopyWithImpl<$Res, $Val extends AuthResponse>
    implements $AuthResponseCopyWith<$Res> {
  _$AuthResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = null,
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ResponseType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AuthResponse_SuccessCopyWith<$Res>
    implements $AuthResponseCopyWith<$Res> {
  factory _$$_AuthResponse_SuccessCopyWith(_$_AuthResponse_Success value,
          $Res Function(_$_AuthResponse_Success) then) =
      __$$_AuthResponse_SuccessCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? code, String message, ResponseType type});
}

/// @nodoc
class __$$_AuthResponse_SuccessCopyWithImpl<$Res>
    extends _$AuthResponseCopyWithImpl<$Res, _$_AuthResponse_Success>
    implements _$$_AuthResponse_SuccessCopyWith<$Res> {
  __$$_AuthResponse_SuccessCopyWithImpl(_$_AuthResponse_Success _value,
      $Res Function(_$_AuthResponse_Success) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = null,
    Object? type = null,
  }) {
    return _then(_$_AuthResponse_Success(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ResponseType,
    ));
  }
}

/// @nodoc

class _$_AuthResponse_Success extends _AuthResponse_Success
    with DiagnosticableTreeMixin {
  const _$_AuthResponse_Success(
      {this.code, required this.message, this.type = ResponseType.success})
      : super._();

  @override
  final String? code;
  @override
  final String message;
  @override
  @JsonKey()
  final ResponseType type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthResponse.success(code: $code, message: $message, type: $type)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthResponse.success'))
      ..add(DiagnosticsProperty('code', code))
      ..add(DiagnosticsProperty('message', message))
      ..add(DiagnosticsProperty('type', type));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthResponse_Success &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode => Object.hash(runtimeType, code, message, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthResponse_SuccessCopyWith<_$_AuthResponse_Success> get copyWith =>
      __$$_AuthResponse_SuccessCopyWithImpl<_$_AuthResponse_Success>(
          this, _$identity);
}

abstract class _AuthResponse_Success extends AuthResponse {
  const factory _AuthResponse_Success(
      {final String? code,
      required final String message,
      final ResponseType type}) = _$_AuthResponse_Success;
  const _AuthResponse_Success._() : super._();

  @override
  String? get code;
  @override
  String get message;
  @override
  ResponseType get type;
  @override
  @JsonKey(ignore: true)
  _$$_AuthResponse_SuccessCopyWith<_$_AuthResponse_Success> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AuthResponse_FailureCopyWith<$Res>
    implements $AuthResponseCopyWith<$Res> {
  factory _$$_AuthResponse_FailureCopyWith(_$_AuthResponse_Failure value,
          $Res Function(_$_AuthResponse_Failure) then) =
      __$$_AuthResponse_FailureCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? code, String message, ResponseType type});
}

/// @nodoc
class __$$_AuthResponse_FailureCopyWithImpl<$Res>
    extends _$AuthResponseCopyWithImpl<$Res, _$_AuthResponse_Failure>
    implements _$$_AuthResponse_FailureCopyWith<$Res> {
  __$$_AuthResponse_FailureCopyWithImpl(_$_AuthResponse_Failure _value,
      $Res Function(_$_AuthResponse_Failure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = null,
    Object? type = null,
  }) {
    return _then(_$_AuthResponse_Failure(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ResponseType,
    ));
  }
}

/// @nodoc

class _$_AuthResponse_Failure extends _AuthResponse_Failure
    with DiagnosticableTreeMixin {
  const _$_AuthResponse_Failure(
      {this.code, required this.message, this.type = ResponseType.failure})
      : super._();

  @override
  final String? code;
  @override
  final String message;
  @override
  @JsonKey()
  final ResponseType type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthResponse.failure(code: $code, message: $message, type: $type)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthResponse.failure'))
      ..add(DiagnosticsProperty('code', code))
      ..add(DiagnosticsProperty('message', message))
      ..add(DiagnosticsProperty('type', type));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthResponse_Failure &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode => Object.hash(runtimeType, code, message, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthResponse_FailureCopyWith<_$_AuthResponse_Failure> get copyWith =>
      __$$_AuthResponse_FailureCopyWithImpl<_$_AuthResponse_Failure>(
          this, _$identity);
}

abstract class _AuthResponse_Failure extends AuthResponse {
  const factory _AuthResponse_Failure(
      {final String? code,
      required final String message,
      final ResponseType type}) = _$_AuthResponse_Failure;
  const _AuthResponse_Failure._() : super._();

  @override
  String? get code;
  @override
  String get message;
  @override
  ResponseType get type;
  @override
  @JsonKey(ignore: true)
  _$$_AuthResponse_FailureCopyWith<_$_AuthResponse_Failure> get copyWith =>
      throw _privateConstructorUsedError;
}
