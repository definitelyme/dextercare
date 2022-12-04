// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of auth_watcher_cubit.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthWatcherState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isLoggingOut => throw _privateConstructorUsedError;
  User? get user => throw _privateConstructorUsedError;
  Option<User?> get option => throw _privateConstructorUsedError;
  Option<AuthResponse?> get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthWatcherStateCopyWith<AuthWatcherState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthWatcherStateCopyWith<$Res> {
  factory $AuthWatcherStateCopyWith(
          AuthWatcherState value, $Res Function(AuthWatcherState) then) =
      _$AuthWatcherStateCopyWithImpl<$Res, AuthWatcherState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool isLoggingOut,
      User? user,
      Option<User?> option,
      Option<AuthResponse?> status});

  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class _$AuthWatcherStateCopyWithImpl<$Res, $Val extends AuthWatcherState>
    implements $AuthWatcherStateCopyWith<$Res> {
  _$AuthWatcherStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isLoggingOut = null,
    Object? user = freezed,
    Object? option = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoggingOut: null == isLoggingOut
          ? _value.isLoggingOut
          : isLoggingOut // ignore: cast_nullable_to_non_nullable
              as bool,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      option: null == option
          ? _value.option
          : option // ignore: cast_nullable_to_non_nullable
              as Option<User?>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Option<AuthResponse?>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_AuthWatcherStateCopyWith<$Res>
    implements $AuthWatcherStateCopyWith<$Res> {
  factory _$$_AuthWatcherStateCopyWith(
          _$_AuthWatcherState value, $Res Function(_$_AuthWatcherState) then) =
      __$$_AuthWatcherStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool isLoggingOut,
      User? user,
      Option<User?> option,
      Option<AuthResponse?> status});

  @override
  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class __$$_AuthWatcherStateCopyWithImpl<$Res>
    extends _$AuthWatcherStateCopyWithImpl<$Res, _$_AuthWatcherState>
    implements _$$_AuthWatcherStateCopyWith<$Res> {
  __$$_AuthWatcherStateCopyWithImpl(
      _$_AuthWatcherState _value, $Res Function(_$_AuthWatcherState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isLoggingOut = null,
    Object? user = freezed,
    Object? option = null,
    Object? status = null,
  }) {
    return _then(_$_AuthWatcherState(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoggingOut: null == isLoggingOut
          ? _value.isLoggingOut
          : isLoggingOut // ignore: cast_nullable_to_non_nullable
              as bool,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      option: null == option
          ? _value.option
          : option // ignore: cast_nullable_to_non_nullable
              as Option<User?>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Option<AuthResponse?>,
    ));
  }
}

/// @nodoc

class _$_AuthWatcherState extends _AuthWatcherState {
  const _$_AuthWatcherState(
      {this.isLoading = false,
      this.isLoggingOut = false,
      this.user,
      this.option = const None(),
      this.status = const None()})
      : super._();

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool isLoggingOut;
  @override
  final User? user;
  @override
  @JsonKey()
  final Option<User?> option;
  @override
  @JsonKey()
  final Option<AuthResponse?> status;

  @override
  String toString() {
    return 'AuthWatcherState(isLoading: $isLoading, isLoggingOut: $isLoggingOut, user: $user, option: $option, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthWatcherState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isLoggingOut, isLoggingOut) ||
                other.isLoggingOut == isLoggingOut) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.option, option) || other.option == option) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, isLoading, isLoggingOut, user, option, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthWatcherStateCopyWith<_$_AuthWatcherState> get copyWith =>
      __$$_AuthWatcherStateCopyWithImpl<_$_AuthWatcherState>(this, _$identity);
}

abstract class _AuthWatcherState extends AuthWatcherState {
  const factory _AuthWatcherState(
      {final bool isLoading,
      final bool isLoggingOut,
      final User? user,
      final Option<User?> option,
      final Option<AuthResponse?> status}) = _$_AuthWatcherState;
  const _AuthWatcherState._() : super._();

  @override
  bool get isLoading;
  @override
  bool get isLoggingOut;
  @override
  User? get user;
  @override
  Option<User?> get option;
  @override
  Option<AuthResponse?> get status;
  @override
  @JsonKey(ignore: true)
  _$$_AuthWatcherStateCopyWith<_$_AuthWatcherState> get copyWith =>
      throw _privateConstructorUsedError;
}
