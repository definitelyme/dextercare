// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of todo_dto.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TodoDTO _$TodoDTOFromJson(Map<String, dynamic> json) {
  return _TodoDTO.fromJson(json);
}

/// @nodoc
mixin _$TodoDTO {
  @StringSerializer()
  String? get id => throw _privateConstructorUsedError;
  @StringSerializer()
  String? get title => throw _privateConstructorUsedError;
  @StringSerializer()
  String? get description => throw _privateConstructorUsedError;
  @BooleanSerializer()
  bool? get assignToNextShift => throw _privateConstructorUsedError;
  Iterable<String>? get nurses => throw _privateConstructorUsedError;
  ShiftDTO? get shift => throw _privateConstructorUsedError;
  @StringSerializer()
  String? get color => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime? get completedAt => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime? get deletedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TodoDTOCopyWith<TodoDTO> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoDTOCopyWith<$Res> {
  factory $TodoDTOCopyWith(TodoDTO value, $Res Function(TodoDTO) then) =
      _$TodoDTOCopyWithImpl<$Res, TodoDTO>;
  @useResult
  $Res call(
      {@StringSerializer() String? id,
      @StringSerializer() String? title,
      @StringSerializer() String? description,
      @BooleanSerializer() bool? assignToNextShift,
      Iterable<String>? nurses,
      ShiftDTO? shift,
      @StringSerializer() String? color,
      @TimestampConverter() DateTime? completedAt,
      @TimestampConverter() DateTime? createdAt,
      @TimestampConverter() DateTime? updatedAt,
      @TimestampConverter() DateTime? deletedAt});

  $ShiftDTOCopyWith<$Res>? get shift;
}

/// @nodoc
class _$TodoDTOCopyWithImpl<$Res, $Val extends TodoDTO>
    implements $TodoDTOCopyWith<$Res> {
  _$TodoDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? assignToNextShift = freezed,
    Object? nurses = freezed,
    Object? shift = freezed,
    Object? color = freezed,
    Object? completedAt = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? deletedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      assignToNextShift: freezed == assignToNextShift
          ? _value.assignToNextShift
          : assignToNextShift // ignore: cast_nullable_to_non_nullable
              as bool?,
      nurses: freezed == nurses
          ? _value.nurses
          : nurses // ignore: cast_nullable_to_non_nullable
              as Iterable<String>?,
      shift: freezed == shift
          ? _value.shift
          : shift // ignore: cast_nullable_to_non_nullable
              as ShiftDTO?,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
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

  @override
  @pragma('vm:prefer-inline')
  $ShiftDTOCopyWith<$Res>? get shift {
    if (_value.shift == null) {
      return null;
    }

    return $ShiftDTOCopyWith<$Res>(_value.shift!, (value) {
      return _then(_value.copyWith(shift: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_TodoDTOCopyWith<$Res> implements $TodoDTOCopyWith<$Res> {
  factory _$$_TodoDTOCopyWith(
          _$_TodoDTO value, $Res Function(_$_TodoDTO) then) =
      __$$_TodoDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@StringSerializer() String? id,
      @StringSerializer() String? title,
      @StringSerializer() String? description,
      @BooleanSerializer() bool? assignToNextShift,
      Iterable<String>? nurses,
      ShiftDTO? shift,
      @StringSerializer() String? color,
      @TimestampConverter() DateTime? completedAt,
      @TimestampConverter() DateTime? createdAt,
      @TimestampConverter() DateTime? updatedAt,
      @TimestampConverter() DateTime? deletedAt});

  @override
  $ShiftDTOCopyWith<$Res>? get shift;
}

/// @nodoc
class __$$_TodoDTOCopyWithImpl<$Res>
    extends _$TodoDTOCopyWithImpl<$Res, _$_TodoDTO>
    implements _$$_TodoDTOCopyWith<$Res> {
  __$$_TodoDTOCopyWithImpl(_$_TodoDTO _value, $Res Function(_$_TodoDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? assignToNextShift = freezed,
    Object? nurses = freezed,
    Object? shift = freezed,
    Object? color = freezed,
    Object? completedAt = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? deletedAt = freezed,
  }) {
    return _then(_$_TodoDTO(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      assignToNextShift: freezed == assignToNextShift
          ? _value.assignToNextShift
          : assignToNextShift // ignore: cast_nullable_to_non_nullable
              as bool?,
      nurses: freezed == nurses
          ? _value.nurses
          : nurses // ignore: cast_nullable_to_non_nullable
              as Iterable<String>?,
      shift: freezed == shift
          ? _value.shift
          : shift // ignore: cast_nullable_to_non_nullable
              as ShiftDTO?,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
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
@JsonSerializable()
class _$_TodoDTO extends _TodoDTO with DiagnosticableTreeMixin {
  const _$_TodoDTO(
      {@StringSerializer() this.id,
      @StringSerializer() this.title,
      @StringSerializer() this.description,
      @BooleanSerializer() this.assignToNextShift,
      this.nurses,
      this.shift,
      @StringSerializer() this.color,
      @TimestampConverter() this.completedAt,
      @TimestampConverter() this.createdAt,
      @TimestampConverter() this.updatedAt,
      @TimestampConverter() this.deletedAt})
      : super._();

  factory _$_TodoDTO.fromJson(Map<String, dynamic> json) =>
      _$$_TodoDTOFromJson(json);

  @override
  @StringSerializer()
  final String? id;
  @override
  @StringSerializer()
  final String? title;
  @override
  @StringSerializer()
  final String? description;
  @override
  @BooleanSerializer()
  final bool? assignToNextShift;
  @override
  final Iterable<String>? nurses;
  @override
  final ShiftDTO? shift;
  @override
  @StringSerializer()
  final String? color;
  @override
  @TimestampConverter()
  final DateTime? completedAt;
  @override
  @TimestampConverter()
  final DateTime? createdAt;
  @override
  @TimestampConverter()
  final DateTime? updatedAt;
  @override
  @TimestampConverter()
  final DateTime? deletedAt;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TodoDTO(id: $id, title: $title, description: $description, assignToNextShift: $assignToNextShift, nurses: $nurses, shift: $shift, color: $color, completedAt: $completedAt, createdAt: $createdAt, updatedAt: $updatedAt, deletedAt: $deletedAt)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TodoDTO'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('assignToNextShift', assignToNextShift))
      ..add(DiagnosticsProperty('nurses', nurses))
      ..add(DiagnosticsProperty('shift', shift))
      ..add(DiagnosticsProperty('color', color))
      ..add(DiagnosticsProperty('completedAt', completedAt))
      ..add(DiagnosticsProperty('createdAt', createdAt))
      ..add(DiagnosticsProperty('updatedAt', updatedAt))
      ..add(DiagnosticsProperty('deletedAt', deletedAt));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TodoDTO &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.assignToNextShift, assignToNextShift) ||
                other.assignToNextShift == assignToNextShift) &&
            const DeepCollectionEquality().equals(other.nurses, nurses) &&
            (identical(other.shift, shift) || other.shift == shift) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.completedAt, completedAt) ||
                other.completedAt == completedAt) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.deletedAt, deletedAt) ||
                other.deletedAt == deletedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      description,
      assignToNextShift,
      const DeepCollectionEquality().hash(nurses),
      shift,
      color,
      completedAt,
      createdAt,
      updatedAt,
      deletedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TodoDTOCopyWith<_$_TodoDTO> get copyWith =>
      __$$_TodoDTOCopyWithImpl<_$_TodoDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TodoDTOToJson(
      this,
    );
  }
}

abstract class _TodoDTO extends TodoDTO {
  const factory _TodoDTO(
      {@StringSerializer() final String? id,
      @StringSerializer() final String? title,
      @StringSerializer() final String? description,
      @BooleanSerializer() final bool? assignToNextShift,
      final Iterable<String>? nurses,
      final ShiftDTO? shift,
      @StringSerializer() final String? color,
      @TimestampConverter() final DateTime? completedAt,
      @TimestampConverter() final DateTime? createdAt,
      @TimestampConverter() final DateTime? updatedAt,
      @TimestampConverter() final DateTime? deletedAt}) = _$_TodoDTO;
  const _TodoDTO._() : super._();

  factory _TodoDTO.fromJson(Map<String, dynamic> json) = _$_TodoDTO.fromJson;

  @override
  @StringSerializer()
  String? get id;
  @override
  @StringSerializer()
  String? get title;
  @override
  @StringSerializer()
  String? get description;
  @override
  @BooleanSerializer()
  bool? get assignToNextShift;
  @override
  Iterable<String>? get nurses;
  @override
  ShiftDTO? get shift;
  @override
  @StringSerializer()
  String? get color;
  @override
  @TimestampConverter()
  DateTime? get completedAt;
  @override
  @TimestampConverter()
  DateTime? get createdAt;
  @override
  @TimestampConverter()
  DateTime? get updatedAt;
  @override
  @TimestampConverter()
  DateTime? get deletedAt;
  @override
  @JsonKey(ignore: true)
  _$$_TodoDTOCopyWith<_$_TodoDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
