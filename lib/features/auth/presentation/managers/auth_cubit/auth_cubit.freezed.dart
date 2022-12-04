// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of auth_cubit.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isGoogleAuthLoading => throw _privateConstructorUsedError;
  bool get isAppleAuthLoading => throw _privateConstructorUsedError;
  Option<AuthResponse?> get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthStateCopyWith<AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool isGoogleAuthLoading,
      bool isAppleAuthLoading,
      Option<AuthResponse?> status});
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isGoogleAuthLoading = null,
    Object? isAppleAuthLoading = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isGoogleAuthLoading: null == isGoogleAuthLoading
          ? _value.isGoogleAuthLoading
          : isGoogleAuthLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isAppleAuthLoading: null == isAppleAuthLoading
          ? _value.isAppleAuthLoading
          : isAppleAuthLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Option<AuthResponse?>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AuthStateCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory _$$_AuthStateCopyWith(
          _$_AuthState value, $Res Function(_$_AuthState) then) =
      __$$_AuthStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool isGoogleAuthLoading,
      bool isAppleAuthLoading,
      Option<AuthResponse?> status});
}

/// @nodoc
class __$$_AuthStateCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_AuthState>
    implements _$$_AuthStateCopyWith<$Res> {
  __$$_AuthStateCopyWithImpl(
      _$_AuthState _value, $Res Function(_$_AuthState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isGoogleAuthLoading = null,
    Object? isAppleAuthLoading = null,
    Object? status = null,
  }) {
    return _then(_$_AuthState(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isGoogleAuthLoading: null == isGoogleAuthLoading
          ? _value.isGoogleAuthLoading
          : isGoogleAuthLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isAppleAuthLoading: null == isAppleAuthLoading
          ? _value.isAppleAuthLoading
          : isAppleAuthLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Option<AuthResponse?>,
    ));
  }
}

/// @nodoc

class _$_AuthState extends _AuthState {
  const _$_AuthState(
      {this.isLoading = false,
      this.isGoogleAuthLoading = false,
      this.isAppleAuthLoading = false,
      this.status = const None()})
      : super._();

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool isGoogleAuthLoading;
  @override
  @JsonKey()
  final bool isAppleAuthLoading;
  @override
  @JsonKey()
  final Option<AuthResponse?> status;

  @override
  String toString() {
    return 'AuthState(isLoading: $isLoading, isGoogleAuthLoading: $isGoogleAuthLoading, isAppleAuthLoading: $isAppleAuthLoading, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isGoogleAuthLoading, isGoogleAuthLoading) ||
                other.isGoogleAuthLoading == isGoogleAuthLoading) &&
            (identical(other.isAppleAuthLoading, isAppleAuthLoading) ||
                other.isAppleAuthLoading == isAppleAuthLoading) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, isLoading, isGoogleAuthLoading, isAppleAuthLoading, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthStateCopyWith<_$_AuthState> get copyWith =>
      __$$_AuthStateCopyWithImpl<_$_AuthState>(this, _$identity);
}

abstract class _AuthState extends AuthState {
  const factory _AuthState(
      {final bool isLoading,
      final bool isGoogleAuthLoading,
      final bool isAppleAuthLoading,
      final Option<AuthResponse?> status}) = _$_AuthState;
  const _AuthState._() : super._();

  @override
  bool get isLoading;
  @override
  bool get isGoogleAuthLoading;
  @override
  bool get isAppleAuthLoading;
  @override
  Option<AuthResponse?> get status;
  @override
  @JsonKey(ignore: true)
  _$$_AuthStateCopyWith<_$_AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}
