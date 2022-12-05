// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of shift_dto.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ShiftDTO _$ShiftDTOFromJson(Map<String, dynamic> json) {
  return _ShiftDTO.fromJson(json);
}

/// @nodoc
mixin _$ShiftDTO {
  @StringSerializer()
  String? get id => throw _privateConstructorUsedError;
  @StringSerializer()
  String? get name => throw _privateConstructorUsedError;
  @StringSerializer()
  String? get startTime => throw _privateConstructorUsedError;
  @StringSerializer()
  String? get endTime => throw _privateConstructorUsedError;
  Iterable<String>? get nurses => throw _privateConstructorUsedError;
  Iterable<String>? get todos => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime? get deletedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ShiftDTOCopyWith<ShiftDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShiftDTOCopyWith<$Res> {
  factory $ShiftDTOCopyWith(ShiftDTO value, $Res Function(ShiftDTO) then) =
      _$ShiftDTOCopyWithImpl<$Res, ShiftDTO>;
  @useResult
  $Res call(
      {@StringSerializer() String? id,
      @StringSerializer() String? name,
      @StringSerializer() String? startTime,
      @StringSerializer() String? endTime,
      Iterable<String>? nurses,
      Iterable<String>? todos,
      @TimestampConverter() DateTime? createdAt,
      @TimestampConverter() DateTime? updatedAt,
      @TimestampConverter() DateTime? deletedAt});
}

/// @nodoc
class _$ShiftDTOCopyWithImpl<$Res, $Val extends ShiftDTO>
    implements $ShiftDTOCopyWith<$Res> {
  _$ShiftDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? startTime = freezed,
    Object? endTime = freezed,
    Object? nurses = freezed,
    Object? todos = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? deletedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      startTime: freezed == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as String?,
      endTime: freezed == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as String?,
      nurses: freezed == nurses
          ? _value.nurses
          : nurses // ignore: cast_nullable_to_non_nullable
              as Iterable<String>?,
      todos: freezed == todos
          ? _value.todos
          : todos // ignore: cast_nullable_to_non_nullable
              as Iterable<String>?,
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
abstract class _$$_ShiftDTOCopyWith<$Res> implements $ShiftDTOCopyWith<$Res> {
  factory _$$_ShiftDTOCopyWith(
          _$_ShiftDTO value, $Res Function(_$_ShiftDTO) then) =
      __$$_ShiftDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@StringSerializer() String? id,
      @StringSerializer() String? name,
      @StringSerializer() String? startTime,
      @StringSerializer() String? endTime,
      Iterable<String>? nurses,
      Iterable<String>? todos,
      @TimestampConverter() DateTime? createdAt,
      @TimestampConverter() DateTime? updatedAt,
      @TimestampConverter() DateTime? deletedAt});
}

/// @nodoc
class __$$_ShiftDTOCopyWithImpl<$Res>
    extends _$ShiftDTOCopyWithImpl<$Res, _$_ShiftDTO>
    implements _$$_ShiftDTOCopyWith<$Res> {
  __$$_ShiftDTOCopyWithImpl(
      _$_ShiftDTO _value, $Res Function(_$_ShiftDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? startTime = freezed,
    Object? endTime = freezed,
    Object? nurses = freezed,
    Object? todos = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? deletedAt = freezed,
  }) {
    return _then(_$_ShiftDTO(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      startTime: freezed == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as String?,
      endTime: freezed == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as String?,
      nurses: freezed == nurses
          ? _value.nurses
          : nurses // ignore: cast_nullable_to_non_nullable
              as Iterable<String>?,
      todos: freezed == todos
          ? _value.todos
          : todos // ignore: cast_nullable_to_non_nullable
              as Iterable<String>?,
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
class _$_ShiftDTO extends _ShiftDTO with DiagnosticableTreeMixin {
  const _$_ShiftDTO(
      {@StringSerializer() this.id,
      @StringSerializer() this.name,
      @StringSerializer() this.startTime,
      @StringSerializer() this.endTime,
      this.nurses,
      this.todos,
      @TimestampConverter() this.createdAt,
      @TimestampConverter() this.updatedAt,
      @TimestampConverter() this.deletedAt})
      : super._();

  factory _$_ShiftDTO.fromJson(Map<String, dynamic> json) =>
      _$$_ShiftDTOFromJson(json);

  @override
  @StringSerializer()
  final String? id;
  @override
  @StringSerializer()
  final String? name;
  @override
  @StringSerializer()
  final String? startTime;
  @override
  @StringSerializer()
  final String? endTime;
  @override
  final Iterable<String>? nurses;
  @override
  final Iterable<String>? todos;
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
    return 'ShiftDTO(id: $id, name: $name, startTime: $startTime, endTime: $endTime, nurses: $nurses, todos: $todos, createdAt: $createdAt, updatedAt: $updatedAt, deletedAt: $deletedAt)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ShiftDTO'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('startTime', startTime))
      ..add(DiagnosticsProperty('endTime', endTime))
      ..add(DiagnosticsProperty('nurses', nurses))
      ..add(DiagnosticsProperty('todos', todos))
      ..add(DiagnosticsProperty('createdAt', createdAt))
      ..add(DiagnosticsProperty('updatedAt', updatedAt))
      ..add(DiagnosticsProperty('deletedAt', deletedAt));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ShiftDTO &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime) &&
            const DeepCollectionEquality().equals(other.nurses, nurses) &&
            const DeepCollectionEquality().equals(other.todos, todos) &&
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
      name,
      startTime,
      endTime,
      const DeepCollectionEquality().hash(nurses),
      const DeepCollectionEquality().hash(todos),
      createdAt,
      updatedAt,
      deletedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ShiftDTOCopyWith<_$_ShiftDTO> get copyWith =>
      __$$_ShiftDTOCopyWithImpl<_$_ShiftDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ShiftDTOToJson(
      this,
    );
  }
}

abstract class _ShiftDTO extends ShiftDTO {
  const factory _ShiftDTO(
      {@StringSerializer() final String? id,
      @StringSerializer() final String? name,
      @StringSerializer() final String? startTime,
      @StringSerializer() final String? endTime,
      final Iterable<String>? nurses,
      final Iterable<String>? todos,
      @TimestampConverter() final DateTime? createdAt,
      @TimestampConverter() final DateTime? updatedAt,
      @TimestampConverter() final DateTime? deletedAt}) = _$_ShiftDTO;
  const _ShiftDTO._() : super._();

  factory _ShiftDTO.fromJson(Map<String, dynamic> json) = _$_ShiftDTO.fromJson;

  @override
  @StringSerializer()
  String? get id;
  @override
  @StringSerializer()
  String? get name;
  @override
  @StringSerializer()
  String? get startTime;
  @override
  @StringSerializer()
  String? get endTime;
  @override
  Iterable<String>? get nurses;
  @override
  Iterable<String>? get todos;
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
  _$$_ShiftDTOCopyWith<_$_ShiftDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
