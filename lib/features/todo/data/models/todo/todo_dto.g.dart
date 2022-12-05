// GENERATED CODE - DO NOT MODIFY BY HAND

part of todo_dto.dart;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TodoDTO _$$_TodoDTOFromJson(Map<String, dynamic> json) => _$_TodoDTO(
      id: const StringSerializer().fromJson(json['id']),
      title: const StringSerializer().fromJson(json['title']),
      description: const StringSerializer().fromJson(json['description']),
      assignToNextShift:
          const BooleanSerializer().fromJson(json['assign_to_next_shift']),
      nurses: (json['nurses'] as List<dynamic>?)?.map((e) => e as String),
      shift: json['shift'] == null
          ? null
          : ShiftDTO.fromJson(json['shift'] as Map<String, dynamic>),
      color: const StringSerializer().fromJson(json['color']),
      completedAt: const TimestampConverter().fromJson(json['completed_at']),
      createdAt: const TimestampConverter().fromJson(json['created_at']),
      updatedAt: const TimestampConverter().fromJson(json['updated_at']),
      deletedAt: const TimestampConverter().fromJson(json['deleted_at']),
    );

Map<String, dynamic> _$$_TodoDTOToJson(_$_TodoDTO instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', const StringSerializer().toJson(instance.id));
  writeNotNull('title', const StringSerializer().toJson(instance.title));
  writeNotNull(
      'description', const StringSerializer().toJson(instance.description));
  writeNotNull('assign_to_next_shift',
      const BooleanSerializer().toJson(instance.assignToNextShift));
  writeNotNull('nurses', instance.nurses?.toList());
  writeNotNull('shift', instance.shift?.toJson());
  writeNotNull('color', const StringSerializer().toJson(instance.color));
  writeNotNull(
      'completed_at', const TimestampConverter().toJson(instance.completedAt));
  writeNotNull(
      'created_at', const TimestampConverter().toJson(instance.createdAt));
  writeNotNull(
      'updated_at', const TimestampConverter().toJson(instance.updatedAt));
  writeNotNull(
      'deleted_at', const TimestampConverter().toJson(instance.deletedAt));
  return val;
}
