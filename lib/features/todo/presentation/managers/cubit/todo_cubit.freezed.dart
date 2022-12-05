// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of todo_cubit.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TodoState {
  bool get validate => throw _privateConstructorUsedError;
  bool get isSaving => throw _privateConstructorUsedError;
  bool get isFetching => throw _privateConstructorUsedError;
  DateTime get currentDate => throw _privateConstructorUsedError;
  Todo get todo => throw _privateConstructorUsedError;
  KtList<Shift> get shifts => throw _privateConstructorUsedError;
  KtList<Todo> get todos => throw _privateConstructorUsedError;
  Option<FirestoreResponse?> get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TodoStateCopyWith<TodoState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoStateCopyWith<$Res> {
  factory $TodoStateCopyWith(TodoState value, $Res Function(TodoState) then) =
      _$TodoStateCopyWithImpl<$Res, TodoState>;
  @useResult
  $Res call(
      {bool validate,
      bool isSaving,
      bool isFetching,
      DateTime currentDate,
      Todo todo,
      KtList<Shift> shifts,
      KtList<Todo> todos,
      Option<FirestoreResponse?> status});

  $TodoCopyWith<$Res> get todo;
}

/// @nodoc
class _$TodoStateCopyWithImpl<$Res, $Val extends TodoState>
    implements $TodoStateCopyWith<$Res> {
  _$TodoStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? validate = null,
    Object? isSaving = null,
    Object? isFetching = null,
    Object? currentDate = null,
    Object? todo = null,
    Object? shifts = null,
    Object? todos = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      validate: null == validate
          ? _value.validate
          : validate // ignore: cast_nullable_to_non_nullable
              as bool,
      isSaving: null == isSaving
          ? _value.isSaving
          : isSaving // ignore: cast_nullable_to_non_nullable
              as bool,
      isFetching: null == isFetching
          ? _value.isFetching
          : isFetching // ignore: cast_nullable_to_non_nullable
              as bool,
      currentDate: null == currentDate
          ? _value.currentDate
          : currentDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      todo: null == todo
          ? _value.todo
          : todo // ignore: cast_nullable_to_non_nullable
              as Todo,
      shifts: null == shifts
          ? _value.shifts
          : shifts // ignore: cast_nullable_to_non_nullable
              as KtList<Shift>,
      todos: null == todos
          ? _value.todos
          : todos // ignore: cast_nullable_to_non_nullable
              as KtList<Todo>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Option<FirestoreResponse?>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TodoCopyWith<$Res> get todo {
    return $TodoCopyWith<$Res>(_value.todo, (value) {
      return _then(_value.copyWith(todo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_TodoStateCopyWith<$Res> implements $TodoStateCopyWith<$Res> {
  factory _$$_TodoStateCopyWith(
          _$_TodoState value, $Res Function(_$_TodoState) then) =
      __$$_TodoStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool validate,
      bool isSaving,
      bool isFetching,
      DateTime currentDate,
      Todo todo,
      KtList<Shift> shifts,
      KtList<Todo> todos,
      Option<FirestoreResponse?> status});

  @override
  $TodoCopyWith<$Res> get todo;
}

/// @nodoc
class __$$_TodoStateCopyWithImpl<$Res>
    extends _$TodoStateCopyWithImpl<$Res, _$_TodoState>
    implements _$$_TodoStateCopyWith<$Res> {
  __$$_TodoStateCopyWithImpl(
      _$_TodoState _value, $Res Function(_$_TodoState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? validate = null,
    Object? isSaving = null,
    Object? isFetching = null,
    Object? currentDate = null,
    Object? todo = null,
    Object? shifts = null,
    Object? todos = null,
    Object? status = null,
  }) {
    return _then(_$_TodoState(
      validate: null == validate
          ? _value.validate
          : validate // ignore: cast_nullable_to_non_nullable
              as bool,
      isSaving: null == isSaving
          ? _value.isSaving
          : isSaving // ignore: cast_nullable_to_non_nullable
              as bool,
      isFetching: null == isFetching
          ? _value.isFetching
          : isFetching // ignore: cast_nullable_to_non_nullable
              as bool,
      currentDate: null == currentDate
          ? _value.currentDate
          : currentDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      todo: null == todo
          ? _value.todo
          : todo // ignore: cast_nullable_to_non_nullable
              as Todo,
      shifts: null == shifts
          ? _value.shifts
          : shifts // ignore: cast_nullable_to_non_nullable
              as KtList<Shift>,
      todos: null == todos
          ? _value.todos
          : todos // ignore: cast_nullable_to_non_nullable
              as KtList<Todo>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Option<FirestoreResponse?>,
    ));
  }
}

/// @nodoc

class _$_TodoState extends _TodoState {
  const _$_TodoState(
      {this.validate = false,
      this.isSaving = false,
      this.isFetching = false,
      required this.currentDate,
      required this.todo,
      this.shifts = const KtList.empty(),
      this.todos = const KtList.empty(),
      this.status = const None()})
      : super._();

  @override
  @JsonKey()
  final bool validate;
  @override
  @JsonKey()
  final bool isSaving;
  @override
  @JsonKey()
  final bool isFetching;
  @override
  final DateTime currentDate;
  @override
  final Todo todo;
  @override
  @JsonKey()
  final KtList<Shift> shifts;
  @override
  @JsonKey()
  final KtList<Todo> todos;
  @override
  @JsonKey()
  final Option<FirestoreResponse?> status;

  @override
  String toString() {
    return 'TodoState(validate: $validate, isSaving: $isSaving, isFetching: $isFetching, currentDate: $currentDate, todo: $todo, shifts: $shifts, todos: $todos, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TodoState &&
            (identical(other.validate, validate) ||
                other.validate == validate) &&
            (identical(other.isSaving, isSaving) ||
                other.isSaving == isSaving) &&
            (identical(other.isFetching, isFetching) ||
                other.isFetching == isFetching) &&
            (identical(other.currentDate, currentDate) ||
                other.currentDate == currentDate) &&
            (identical(other.todo, todo) || other.todo == todo) &&
            (identical(other.shifts, shifts) || other.shifts == shifts) &&
            (identical(other.todos, todos) || other.todos == todos) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, validate, isSaving, isFetching,
      currentDate, todo, shifts, todos, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TodoStateCopyWith<_$_TodoState> get copyWith =>
      __$$_TodoStateCopyWithImpl<_$_TodoState>(this, _$identity);
}

abstract class _TodoState extends TodoState {
  const factory _TodoState(
      {final bool validate,
      final bool isSaving,
      final bool isFetching,
      required final DateTime currentDate,
      required final Todo todo,
      final KtList<Shift> shifts,
      final KtList<Todo> todos,
      final Option<FirestoreResponse?> status}) = _$_TodoState;
  const _TodoState._() : super._();

  @override
  bool get validate;
  @override
  bool get isSaving;
  @override
  bool get isFetching;
  @override
  DateTime get currentDate;
  @override
  Todo get todo;
  @override
  KtList<Shift> get shifts;
  @override
  KtList<Todo> get todos;
  @override
  Option<FirestoreResponse?> get status;
  @override
  @JsonKey(ignore: true)
  _$$_TodoStateCopyWith<_$_TodoState> get copyWith =>
      throw _privateConstructorUsedError;
}
