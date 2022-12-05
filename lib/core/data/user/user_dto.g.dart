// GENERATED CODE - DO NOT MODIFY BY HAND

part of user_dto.dart;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserDTO _$$_UserDTOFromJson(Map<String, dynamic> json) => _$_UserDTO(
      id: const StringSerializer().fromJson(json['id']),
      name: const StringSerializer().fromJson(json['name']),
      email: const StringSerializer().fromJson(json['email']),
      shifts: (json['shifts'] as List<dynamic>?)?.map((e) => e as String),
      todos: (json['todos'] as List<dynamic>?)?.map((e) => e as String),
      createdAt: const TimestampConverter().fromJson(json['created_at']),
      updatedAt: const TimestampConverter().fromJson(json['updated_at']),
      deletedAt: const TimestampConverter().fromJson(json['deleted_at']),
    );

Map<String, dynamic> _$$_UserDTOToJson(_$_UserDTO instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', const StringSerializer().toJson(instance.id));
  writeNotNull('name', const StringSerializer().toJson(instance.name));
  writeNotNull('email', const StringSerializer().toJson(instance.email));
  writeNotNull('shifts', instance.shifts?.toList());
  writeNotNull('todos', instance.todos?.toList());
  writeNotNull(
      'created_at', const TimestampConverter().toJson(instance.createdAt));
  writeNotNull(
      'updated_at', const TimestampConverter().toJson(instance.updatedAt));
  writeNotNull(
      'deleted_at', const TimestampConverter().toJson(instance.deletedAt));
  return val;
}
