// GENERATED CODE - DO NOT MODIFY BY HAND

part of shift_dto.dart;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ShiftDTO _$$_ShiftDTOFromJson(Map<String, dynamic> json) => _$_ShiftDTO(
      id: const StringSerializer().fromJson(json['id']),
      name: const StringSerializer().fromJson(json['name']),
      startTime: const StringSerializer().fromJson(json['start_time']),
      endTime: const StringSerializer().fromJson(json['end_time']),
      nurses: (json['nurses'] as List<dynamic>?)?.map((e) => e as String),
      todos: (json['todos'] as List<dynamic>?)?.map((e) => e as String),
      createdAt: const TimestampConverter().fromJson(json['created_at']),
      updatedAt: const TimestampConverter().fromJson(json['updated_at']),
      deletedAt: const TimestampConverter().fromJson(json['deleted_at']),
    );

Map<String, dynamic> _$$_ShiftDTOToJson(_$_ShiftDTO instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', const StringSerializer().toJson(instance.id));
  writeNotNull('name', const StringSerializer().toJson(instance.name));
  writeNotNull(
      'start_time', const StringSerializer().toJson(instance.startTime));
  writeNotNull('end_time', const StringSerializer().toJson(instance.endTime));
  writeNotNull('nurses', instance.nurses?.toList());
  writeNotNull('todos', instance.todos?.toList());
  writeNotNull(
      'created_at', const TimestampConverter().toJson(instance.createdAt));
  writeNotNull(
      'updated_at', const TimestampConverter().toJson(instance.updatedAt));
  writeNotNull(
      'deleted_at', const TimestampConverter().toJson(instance.deletedAt));
  return val;
}
