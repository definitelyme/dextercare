library shift_dto.dart;

import 'package:dextercare/core/data/index.dart';
import 'package:dextercare/core/domain/entities/entities.dart';
import 'package:dextercare/features/todo/data/models/index.dart';
import 'package:dextercare/managers/serializer/serializers.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';

part 'shift_dto.g.dart';
part 'shift_dto.freezed.dart';

@Freezed(when: FreezedWhenOptions.none, map: FreezedMapOptions.none)
class ShiftDTO with _$ShiftDTO {
  const ShiftDTO._();

  const factory ShiftDTO({
    @StringSerializer() String? id,
    @StringSerializer() String? name,
    @StringSerializer() String? startTime,
    @StringSerializer() String? endTime,
    Iterable<String>? nurses,
    Iterable<String>? todos,
    @TimestampConverter() DateTime? createdAt,
    @TimestampConverter() DateTime? updatedAt,
    @TimestampConverter() DateTime? deletedAt,
  }) = _ShiftDTO;

  /// Maps Shift? to a Data Transfer Object.
  factory ShiftDTO.fromDomain(Shift? instance) => ShiftDTO(
        id: instance?.id.value,
        name: instance?.name.getOrNull,
        startTime: instance?.startTime.getOrNull,
        endTime: instance?.endTime.getOrNull,
        nurses: instance?.nurses?.map((e) => e.id.value!).iter,
        todos: instance?.todos?.map((e) => e.id.value!).iter,
        createdAt: instance?.createdAt,
        updatedAt: instance?.updatedAt,
        deletedAt: instance?.deletedAt,
      );

  /// Maps the incoming Json to a Data Transfer Object (DTO).
  factory ShiftDTO.fromJson(Map<String, dynamic> json) => _$ShiftDTOFromJson(json);

  /// Maps the Data Transfer Object to a Shift Object.
  Shift get domain => Shift.blank(
        id: id,
        name: name,
        startTime: startTime,
        endTime: endTime,
        createdAt: createdAt,
        updatedAt: updatedAt,
        deletedAt: deletedAt,
      );

  Shift addUsers(Iterable<UserDTO> users) => domain.copyWith(
        nurses: users.map((e) => e.domain).toImmutableList(),
      );

  Shift addTodos(Iterable<TodoDTO> todos) => domain.copyWith(
        todos: todos.map((e) => e.domain).toImmutableList(),
      );
}
