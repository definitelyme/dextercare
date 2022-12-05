library shift.entity.dart;

import 'package:dextercare/core/domain/entities/entities.dart';
import 'package:dextercare/features/todo/domain/entities/index.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';

part 'shift.entity.freezed.dart';

@Freezed(when: FreezedWhenOptions.none, map: FreezedMapOptions.none)
class Shift extends BaseEntity with _$Shift {
  const factory Shift({
    required UniqueId<String?> id,
    required BasicTextField name,
    required BasicTextField startTime,
    required BasicTextField endTime,
    KtList<User>? nurses,
    KtList<Todo>? todos,
    DateTime? createdAt,
    DateTime? updatedAt,
    DateTime? deletedAt,
  }) = _Shift;

  const Shift._();

  factory Shift.blank({
    String? id,
    String? name,
    String? startTime,
    String? endTime,
    Iterable<User>? nurses,
    Iterable<Todo>? todos,
    DateTime? createdAt,
    DateTime? updatedAt,
    DateTime? deletedAt,
  }) =>
      Shift(
        id: id != null ? UniqueId.fromExternal(id) : UniqueId.random(),
        name: BasicTextField(name),
        startTime: BasicTextField(startTime),
        endTime: BasicTextField(endTime),
        nurses: nurses?.toImmutableList(),
        todos: todos?.toImmutableList(),
        createdAt: createdAt,
        updatedAt: updatedAt,
        deletedAt: deletedAt,
      );
}
