// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of user_dto.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserDTO _$UserDTOFromJson(Map<String, dynamic> json) {
  return _UserDTO.fromJson(json);
}

/// @nodoc
mixin _$UserDTO {
  @StringSerializer()
  String? get id => throw _privateConstructorUsedError;
  @StringSerializer()
  String? get name => throw _privateConstructorUsedError;
  @StringSerializer()
  String? get email => throw _privateConstructorUsedError;
  Iterable<String>? get shifts => throw _privateConstructorUsedError;
  Iterable<String>? get todos => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime? get deletedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserDTOCopyWith<UserDTO> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDTOCopyWith<$Res> {
  factory $UserDTOCopyWith(UserDTO value, $Res Function(UserDTO) then) =
      _$UserDTOCopyWithImpl<$Res, UserDTO>;
  @useResult
  $Res call(
      {@StringSerializer() String? id,
      @StringSerializer() String? name,
      @StringSerializer() String? email,
      Iterable<String>? shifts,
      Iterable<String>? todos,
      @TimestampConverter() DateTime? createdAt,
      @TimestampConverter() DateTime? updatedAt,
      @TimestampConverter() DateTime? deletedAt});
}

/// @nodoc
class _$UserDTOCopyWithImpl<$Res, $Val extends UserDTO>
    implements $UserDTOCopyWith<$Res> {
  _$UserDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? shifts = freezed,
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
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      shifts: freezed == shifts
          ? _value.shifts
          : shifts // ignore: cast_nullable_to_non_nullable
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
abstract class _$$_UserDTOCopyWith<$Res> implements $UserDTOCopyWith<$Res> {
  factory _$$_UserDTOCopyWith(
          _$_UserDTO value, $Res Function(_$_UserDTO) then) =
      __$$_UserDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@StringSerializer() String? id,
      @StringSerializer() String? name,
      @StringSerializer() String? email,
      Iterable<String>? shifts,
      Iterable<String>? todos,
      @TimestampConverter() DateTime? createdAt,
      @TimestampConverter() DateTime? updatedAt,
      @TimestampConverter() DateTime? deletedAt});
}

/// @nodoc
class __$$_UserDTOCopyWithImpl<$Res>
    extends _$UserDTOCopyWithImpl<$Res, _$_UserDTO>
    implements _$$_UserDTOCopyWith<$Res> {
  __$$_UserDTOCopyWithImpl(_$_UserDTO _value, $Res Function(_$_UserDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? shifts = freezed,
    Object? todos = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? deletedAt = freezed,
  }) {
    return _then(_$_UserDTO(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      shifts: freezed == shifts
          ? _value.shifts
          : shifts // ignore: cast_nullable_to_non_nullable
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
class _$_UserDTO extends _UserDTO with DiagnosticableTreeMixin {
  const _$_UserDTO(
      {@StringSerializer() this.id,
      @StringSerializer() this.name,
      @StringSerializer() this.email,
      this.shifts,
      this.todos,
      @TimestampConverter() this.createdAt,
      @TimestampConverter() this.updatedAt,
      @TimestampConverter() this.deletedAt})
      : super._();

  factory _$_UserDTO.fromJson(Map<String, dynamic> json) =>
      _$$_UserDTOFromJson(json);

  @override
  @StringSerializer()
  final String? id;
  @override
  @StringSerializer()
  final String? name;
  @override
  @StringSerializer()
  final String? email;
  @override
  final Iterable<String>? shifts;
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
    return 'UserDTO(id: $id, name: $name, email: $email, shifts: $shifts, todos: $todos, createdAt: $createdAt, updatedAt: $updatedAt, deletedAt: $deletedAt)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UserDTO'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('email', email))
      ..add(DiagnosticsProperty('shifts', shifts))
      ..add(DiagnosticsProperty('todos', todos))
      ..add(DiagnosticsProperty('createdAt', createdAt))
      ..add(DiagnosticsProperty('updatedAt', updatedAt))
      ..add(DiagnosticsProperty('deletedAt', deletedAt));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserDTO &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            const DeepCollectionEquality().equals(other.shifts, shifts) &&
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
      email,
      const DeepCollectionEquality().hash(shifts),
      const DeepCollectionEquality().hash(todos),
      createdAt,
      updatedAt,
      deletedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserDTOCopyWith<_$_UserDTO> get copyWith =>
      __$$_UserDTOCopyWithImpl<_$_UserDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserDTOToJson(
      this,
    );
  }
}

abstract class _UserDTO extends UserDTO {
  const factory _UserDTO(
      {@StringSerializer() final String? id,
      @StringSerializer() final String? name,
      @StringSerializer() final String? email,
      final Iterable<String>? shifts,
      final Iterable<String>? todos,
      @TimestampConverter() final DateTime? createdAt,
      @TimestampConverter() final DateTime? updatedAt,
      @TimestampConverter() final DateTime? deletedAt}) = _$_UserDTO;
  const _UserDTO._() : super._();

  factory _UserDTO.fromJson(Map<String, dynamic> json) = _$_UserDTO.fromJson;

  @override
  @StringSerializer()
  String? get id;
  @override
  @StringSerializer()
  String? get name;
  @override
  @StringSerializer()
  String? get email;
  @override
  Iterable<String>? get shifts;
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
  _$$_UserDTOCopyWith<_$_UserDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
