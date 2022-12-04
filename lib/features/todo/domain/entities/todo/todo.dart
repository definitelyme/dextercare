library todo.dart;

import 'package:dextercare/core/domain/entities/entities.dart';
import 'package:dextercare/utils/utils.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';

part 'todo.freezed.dart';

@Freezed(when: FreezedWhenOptions.none, map: FreezedMapOptions.none)
class Todo extends BaseEntity with _$Todo {
  const factory Todo({
    required UniqueId<String?> id,
    required BasicTextField title,
    required BasicTextField description,
    @Default(true) bool assignToNextShift,
    @Default(KtList.empty()) KtList<User> nurses,
    @Default(KtList.empty()) KtList<Shift> shifts,
    DateTime? completedAt,
    DateTime? createdAt,
    DateTime? updatedAt,
    DateTime? deletedAt,
  }) = _Todo;

  const Todo._();

  factory Todo.blank({
    String? id,
    String? title,
    String? description,
    bool? assignToNextShift,
    Iterable<User> nurses = const [],
    Iterable<Shift> shifts = const [],
    DateTime? completedAt,
    DateTime? createdAt,
    DateTime? updatedAt,
    DateTime? deletedAt,
  }) =>
      Todo(
        id: UniqueId.fromExternal(id),
        title: BasicTextField(title),
        description: BasicTextField(description),
        assignToNextShift: assignToNextShift ?? true,
        nurses: nurses.toImmutableList(),
        shifts: shifts.toImmutableList(),
        completedAt: completedAt,
        createdAt: createdAt,
        updatedAt: updatedAt,
        deletedAt: deletedAt,
      );

  bool get isDone => completedAt != null && completedAt!.isBefore(localTime);
}
