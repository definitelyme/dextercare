library user_dto.dart;

import 'package:dextercare/core/data/index.dart';
import 'package:dextercare/core/domain/entities/entities.dart';
import 'package:dextercare/features/todo/data/models/index.dart';
import 'package:dextercare/managers/serializer/serializers.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';

part 'user_dto.g.dart';
part 'user_dto.freezed.dart';

@Freezed(when: FreezedWhenOptions.none, map: FreezedMapOptions.none)
class UserDTO with _$UserDTO {
  const UserDTO._();

  const factory UserDTO({
    @StringSerializer() String? id,
    @StringSerializer() String? name,
    @StringSerializer() String? email,
    Iterable<String>? shifts,
    Iterable<String>? todos,
    @TimestampConverter() DateTime? createdAt,
    @TimestampConverter() DateTime? updatedAt,
    @TimestampConverter() DateTime? deletedAt,
  }) = _UserDTO;

  /// Maps User? to a Data Transfer Object.
  factory UserDTO.fromDomain(User? instance) => UserDTO(
        id: instance?.id.value,
        name: instance?.name.getOrNull,
        email: instance?.email.getOrNull,
        shifts: instance?.shifts?.map((e) => e.id.value!).iter,
        todos: instance?.todos?.map((e) => e.id.value!).asList(),
        createdAt: instance?.createdAt,
        updatedAt: instance?.updatedAt,
        deletedAt: instance?.deletedAt,
      );

  /// Maps the incoming Json to a Data Transfer Object (DTO).
  factory UserDTO.fromJson(Map<String, dynamic> json) => _$UserDTOFromJson(json);

  /// Maps the Data Transfer Object to a User Object.
  User get domain => User.blank(
        id: id,
        name: name,
        email: email,
        createdAt: createdAt,
        updatedAt: updatedAt,
        deletedAt: deletedAt,
      );

  User addShifts(Iterable<ShiftDTO> shifts) => domain.copyWith(
        shifts: shifts.map((e) => e.domain).toImmutableList(),
      );

  User addTodos(Iterable<TodoDTO> todos) => domain.copyWith(
        todos: todos.map((e) => e.domain).toImmutableList(),
      );
}
