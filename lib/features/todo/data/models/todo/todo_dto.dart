library todo_dto.dart;

import 'package:dextercare/core/data/index.dart';
import 'package:dextercare/features/todo/domain/entities/index.dart';
import 'package:dextercare/managers/serializer/serializers.dart';
import 'package:dextercare/utils/utils.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';

part 'todo_dto.g.dart';
part 'todo_dto.freezed.dart';

@Freezed(when: FreezedWhenOptions.none, map: FreezedMapOptions.none)
class TodoDTO with _$TodoDTO {
  const TodoDTO._();

  const factory TodoDTO({
    @StringSerializer() String? id,
    @StringSerializer() String? title,
    @StringSerializer() String? description,
    @BooleanSerializer() bool? assignToNextShift,
    Iterable<String>? nurses,
    ShiftDTO? shift,
    @StringSerializer() String? color,
    @TimestampConverter() DateTime? completedAt,
    @TimestampConverter() DateTime? createdAt,
    @TimestampConverter() DateTime? updatedAt,
    @TimestampConverter() DateTime? deletedAt,
  }) = _TodoDTO;

  /// Maps Todo? to a Data Transfer Object.
  factory TodoDTO.fromDomain(Todo? instance) => TodoDTO(
        id: instance?.id.value,
        title: instance?.title.getOrNull,
        description: instance?.description.getOrNull,
        assignToNextShift: instance?.assignToNextShift,
        nurses: instance?.nurses?.map((e) => e.id.value!).iter,
        shift: ShiftDTO.fromDomain(instance?.shift),
        color: instance?.color != null && instance!.color.isValid ? Palette.stringHex(instance.color.getOrNull!, withAlpha: false) : null,
        completedAt: instance?.completedAt,
        createdAt: instance?.createdAt,
        updatedAt: instance?.updatedAt,
        deletedAt: instance?.deletedAt,
      );

  /// Maps the incoming Json to a Data Transfer Object (DTO).
  factory TodoDTO.fromJson(Map<String, dynamic> json) => _$TodoDTOFromJson(json);

  /// Maps the Data Transfer Object to a Todo Object.
  Todo get domain => Todo.blank(
        id: id,
        title: title,
        description: description,
        assignToNextShift: assignToNextShift,
        hexColor: color,
        shift: shift?.domain,
        completedAt: completedAt,
        createdAt: createdAt,
        updatedAt: updatedAt,
        deletedAt: deletedAt,
      );

  Todo addUsers(Iterable<UserDTO> users) => domain.copyWith(
        nurses: users.map((e) => e.domain).toImmutableList(),
      );
}
