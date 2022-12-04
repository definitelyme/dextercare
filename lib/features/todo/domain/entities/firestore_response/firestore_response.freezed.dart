// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of firestore_response.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FirestoreResponse {
  String? get code => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  ResponseType get type => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FirestoreResponseCopyWith<FirestoreResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FirestoreResponseCopyWith<$Res> {
  factory $FirestoreResponseCopyWith(
          FirestoreResponse value, $Res Function(FirestoreResponse) then) =
      _$FirestoreResponseCopyWithImpl<$Res, FirestoreResponse>;
  @useResult
  $Res call({String? code, String message, ResponseType type});
}

/// @nodoc
class _$FirestoreResponseCopyWithImpl<$Res, $Val extends FirestoreResponse>
    implements $FirestoreResponseCopyWith<$Res> {
  _$FirestoreResponseCopyWithImpl(this._value, this._then);

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
abstract class _$$_FirestoreResponse_SuccessCopyWith<$Res>
    implements $FirestoreResponseCopyWith<$Res> {
  factory _$$_FirestoreResponse_SuccessCopyWith(
          _$_FirestoreResponse_Success value,
          $Res Function(_$_FirestoreResponse_Success) then) =
      __$$_FirestoreResponse_SuccessCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? code, String message, ResponseType type});
}

/// @nodoc
class __$$_FirestoreResponse_SuccessCopyWithImpl<$Res>
    extends _$FirestoreResponseCopyWithImpl<$Res, _$_FirestoreResponse_Success>
    implements _$$_FirestoreResponse_SuccessCopyWith<$Res> {
  __$$_FirestoreResponse_SuccessCopyWithImpl(
      _$_FirestoreResponse_Success _value,
      $Res Function(_$_FirestoreResponse_Success) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = null,
    Object? type = null,
  }) {
    return _then(_$_FirestoreResponse_Success(
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

class _$_FirestoreResponse_Success extends _FirestoreResponse_Success
    with DiagnosticableTreeMixin {
  const _$_FirestoreResponse_Success(
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
    return 'FirestoreResponse.success(code: $code, message: $message, type: $type)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'FirestoreResponse.success'))
      ..add(DiagnosticsProperty('code', code))
      ..add(DiagnosticsProperty('message', message))
      ..add(DiagnosticsProperty('type', type));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FirestoreResponse_Success &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode => Object.hash(runtimeType, code, message, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FirestoreResponse_SuccessCopyWith<_$_FirestoreResponse_Success>
      get copyWith => __$$_FirestoreResponse_SuccessCopyWithImpl<
          _$_FirestoreResponse_Success>(this, _$identity);
}

abstract class _FirestoreResponse_Success extends FirestoreResponse {
  const factory _FirestoreResponse_Success(
      {final String? code,
      required final String message,
      final ResponseType type}) = _$_FirestoreResponse_Success;
  const _FirestoreResponse_Success._() : super._();

  @override
  String? get code;
  @override
  String get message;
  @override
  ResponseType get type;
  @override
  @JsonKey(ignore: true)
  _$$_FirestoreResponse_SuccessCopyWith<_$_FirestoreResponse_Success>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FirestoreResponse_FailureCopyWith<$Res>
    implements $FirestoreResponseCopyWith<$Res> {
  factory _$$_FirestoreResponse_FailureCopyWith(
          _$_FirestoreResponse_Failure value,
          $Res Function(_$_FirestoreResponse_Failure) then) =
      __$$_FirestoreResponse_FailureCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? code, String message, ResponseType type});
}

/// @nodoc
class __$$_FirestoreResponse_FailureCopyWithImpl<$Res>
    extends _$FirestoreResponseCopyWithImpl<$Res, _$_FirestoreResponse_Failure>
    implements _$$_FirestoreResponse_FailureCopyWith<$Res> {
  __$$_FirestoreResponse_FailureCopyWithImpl(
      _$_FirestoreResponse_Failure _value,
      $Res Function(_$_FirestoreResponse_Failure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = null,
    Object? type = null,
  }) {
    return _then(_$_FirestoreResponse_Failure(
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

class _$_FirestoreResponse_Failure extends _FirestoreResponse_Failure
    with DiagnosticableTreeMixin {
  const _$_FirestoreResponse_Failure(
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
    return 'FirestoreResponse.failure(code: $code, message: $message, type: $type)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'FirestoreResponse.failure'))
      ..add(DiagnosticsProperty('code', code))
      ..add(DiagnosticsProperty('message', message))
      ..add(DiagnosticsProperty('type', type));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FirestoreResponse_Failure &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode => Object.hash(runtimeType, code, message, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FirestoreResponse_FailureCopyWith<_$_FirestoreResponse_Failure>
      get copyWith => __$$_FirestoreResponse_FailureCopyWithImpl<
          _$_FirestoreResponse_Failure>(this, _$identity);
}

abstract class _FirestoreResponse_Failure extends FirestoreResponse {
  const factory _FirestoreResponse_Failure(
      {final String? code,
      required final String message,
      final ResponseType type}) = _$_FirestoreResponse_Failure;
  const _FirestoreResponse_Failure._() : super._();

  @override
  String? get code;
  @override
  String get message;
  @override
  ResponseType get type;
  @override
  @JsonKey(ignore: true)
  _$$_FirestoreResponse_FailureCopyWith<_$_FirestoreResponse_Failure>
      get copyWith => throw _privateConstructorUsedError;
}
