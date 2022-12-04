// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of todo.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Todo {
  UniqueId<String?> get id => throw _privateConstructorUsedError;
  BasicTextField get title => throw _privateConstructorUsedError;
  BasicTextField get description => throw _privateConstructorUsedError;
  bool get assignToNextShift => throw _privateConstructorUsedError;
  KtList<User> get nurses => throw _privateConstructorUsedError;
  KtList<Shift> get shifts => throw _privateConstructorUsedError;
  DateTime? get completedAt => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  DateTime? get deletedAt => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TodoCopyWith<Todo> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoCopyWith<$Res> {
  factory $TodoCopyWith(Todo value, $Res Function(Todo) then) =
      _$TodoCopyWithImpl<$Res, Todo>;
  @useResult
  $Res call(
      {UniqueId<String?> id,
      BasicTextField title,
      BasicTextField description,
      bool assignToNextShift,
      KtList<User> nurses,
      KtList<Shift> shifts,
      DateTime? completedAt,
      DateTime? createdAt,
      DateTime? updatedAt,
      DateTime? deletedAt});
}

/// @nodoc
class _$TodoCopyWithImpl<$Res, $Val extends Todo>
    implements $TodoCopyWith<$Res> {
  _$TodoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? assignToNextShift = null,
    Object? nurses = null,
    Object? shifts = null,
    Object? completedAt = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? deletedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId<String?>,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as BasicTextField,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as BasicTextField,
      assignToNextShift: null == assignToNextShift
          ? _value.assignToNextShift
          : assignToNextShift // ignore: cast_nullable_to_non_nullable
              as bool,
      nurses: null == nurses
          ? _value.nurses
          : nurses // ignore: cast_nullable_to_non_nullable
              as KtList<User>,
      shifts: null == shifts
          ? _value.shifts
          : shifts // ignore: cast_nullable_to_non_nullable
              as KtList<Shift>,
      completedAt: freezed == completedAt
          ? _value.completedAt
          : completedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      deletedAt: freezed == deletedAt
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TodoCopyWith<$Res> implements $TodoCopyWith<$Res> {
  factory _$$_TodoCopyWith(_$_Todo value, $Res Function(_$_Todo) then) =
      __$$_TodoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {UniqueId<String?> id,
      BasicTextField title,
      BasicTextField description,
      bool assignToNextShift,
      KtList<User> nurses,
      KtList<Shift> shifts,
      DateTime? completedAt,
      DateTime? createdAt,
      DateTime? updatedAt,
      DateTime? deletedAt});
}

/// @nodoc
class __$$_TodoCopyWithImpl<$Res> extends _$TodoCopyWithImpl<$Res, _$_Todo>
    implements _$$_TodoCopyWith<$Res> {
  __$$_TodoCopyWithImpl(_$_Todo _value, $Res Function(_$_Todo) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? assignToNextShift = null,
    Object? nurses = null,
    Object? shifts = null,
    Object? completedAt = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? deletedAt = freezed,
  }) {
    return _then(_$_Todo(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId<String?>,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as BasicTextField,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as BasicTextField,
      assignToNextShift: null == assignToNextShift
          ? _value.assignToNextShift
          : assignToNextShift // ignore: cast_nullable_to_non_nullable
              as bool,
      nurses: null == nurses
          ? _value.nurses
          : nurses // ignore: cast_nullable_to_non_nullable
              as KtList<User>,
      shifts: null == shifts
          ? _value.shifts
          : shifts // ignore: cast_nullable_to_non_nullable
              as KtList<Shift>,
      completedAt: freezed == completedAt
          ? _value.completedAt
          : completedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      deletedAt: freezed == deletedAt
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class _$_Todo extends _Todo with DiagnosticableTreeMixin {
  const _$_Todo(
      {required this.id,
      required this.title,
      required this.description,
      this.assignToNextShift = true,
      this.nurses = const KtList.empty(),
      this.shifts = const KtList.empty(),
      this.completedAt,
      this.createdAt,
      this.updatedAt,
      this.deletedAt})
      : super._();

  @override
  final UniqueId<String?> id;
  @override
  final BasicTextField title;
  @override
  final BasicTextField description;
  @override
  @JsonKey()
  final bool assignToNextShift;
  @override
  @JsonKey()
  final KtList<User> nurses;
  @override
  @JsonKey()
  final KtList<Shift> shifts;
  @override
  final DateTime? completedAt;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;
  @override
  final DateTime? deletedAt;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Todo(id: $id, title: $title, description: $description, assignToNextShift: $assignToNextShift, nurses: $nurses, shifts: $shifts, completedAt: $completedAt, createdAt: $createdAt, updatedAt: $updatedAt, deletedAt: $deletedAt)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Todo'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('assignToNextShift', assignToNextShift))
      ..add(DiagnosticsProperty('nurses', nurses))
      ..add(DiagnosticsProperty('shifts', shifts))
      ..add(DiagnosticsProperty('completedAt', completedAt))
      ..add(DiagnosticsProperty('createdAt', createdAt))
      ..add(DiagnosticsProperty('updatedAt', updatedAt))
      ..add(DiagnosticsProperty('deletedAt', deletedAt));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Todo &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.assignToNextShift, assignToNextShift) ||
                other.assignToNextShift == assignToNextShift) &&
            (identical(other.nurses, nurses) || other.nurses == nurses) &&
            (identical(other.shifts, shifts) || other.shifts == shifts) &&
            (identical(other.completedAt, completedAt) ||
                other.completedAt == completedAt) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.deletedAt, deletedAt) ||
                other.deletedAt == deletedAt));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      description,
      assignToNextShift,
      nurses,
      shifts,
      completedAt,
      createdAt,
      updatedAt,
      deletedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TodoCopyWith<_$_Todo> get copyWith =>
      __$$_TodoCopyWithImpl<_$_Todo>(this, _$identity);
}

abstract class _Todo extends Todo {
  const factory _Todo(
      {required final UniqueId<String?> id,
      required final BasicTextField title,
      required final BasicTextField description,
      final bool assignToNextShift,
      final KtList<User> nurses,
      final KtList<Shift> shifts,
      final DateTime? completedAt,
      final DateTime? createdAt,
      final DateTime? updatedAt,
      final DateTime? deletedAt}) = _$_Todo;
  const _Todo._() : super._();

  @override
  UniqueId<String?> get id;
  @override
  BasicTextField get title;
  @override
  BasicTextField get description;
  @override
  bool get assignToNextShift;
  @override
  KtList<User> get nurses;
  @override
  KtList<Shift> get shifts;
  @override
  DateTime? get completedAt;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  DateTime? get deletedAt;
  @override
  @JsonKey(ignore: true)
  _$$_TodoCopyWith<_$_Todo> get copyWith => throw _privateConstructorUsedError;
}
