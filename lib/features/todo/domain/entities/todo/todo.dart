library todo.dart;

import 'package:dartz/dartz.dart';
import 'package:dextercare/core/domain/entities/entities.dart';
import 'package:dextercare/core/domain/response/index.dart';
import 'package:dextercare/utils/utils.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';

part 'todo.freezed.dart';

enum TodoStatus {
  in_progress('in_progress'),
  overdue('overdue'),
  upcoming('upcoming'),
  completed('completed');

  final String name;

  const TodoStatus(this.name);

  bool get isInProgress => this == TodoStatus.in_progress;
  bool get isOverdue => this == TodoStatus.overdue;
  bool get isUpcoming => this == TodoStatus.upcoming;
  bool get isCompleted => this == TodoStatus.completed;

  static TodoStatus fromName(String? name) => TodoStatus.values.firstWhere((e) => e.name.toLowerCase() == name?.toLowerCase());

  static String? toName(TodoStatus? status) => status?.name;

  String get formattedName => name.split('_').map((e) => e.titleCase()).join(' ');

  Color get bgColor {
    switch (this) {
      case TodoStatus.in_progress:
        return Colors.blue;
      case TodoStatus.overdue:
        return Colors.red;
      case TodoStatus.upcoming:
        return Colors.green;
      case TodoStatus.completed:
        return Colors.grey;
    }
  }
}

@Freezed(when: FreezedWhenOptions.none, map: FreezedMapOptions.none)
class Todo extends BaseEntity with _$Todo {
  static const List<Color> colors = [
    Colors.blue,
    Colors.red,
    Colors.green,
    Colors.grey,
  ];

  const factory Todo({
    required UniqueId<String?> id,
    required BasicTextField title,
    required BasicTextField description,
    @Default(true) bool assignToNextShift,
    KtList<User>? nurses,
    required Shift shift,
    required ColorField color,
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
    Iterable<User>? nurses,
    Shift? shift,
    String? hexColor,
    DateTime? completedAt,
    DateTime? createdAt,
    DateTime? updatedAt,
    DateTime? deletedAt,
  }) =>
      Todo(
        id: id != null ? UniqueId.fromExternal(id) : UniqueId.random(),
        title: BasicTextField(title),
        description: BasicTextField(description),
        assignToNextShift: assignToNextShift ?? true,
        nurses: nurses?.toImmutableList(),
        shift: shift ?? Shift.blank(),
        color: ColorField(hexColor == null ? null : Palette.fromHex(hexColor)),
        completedAt: completedAt,
        createdAt: createdAt,
        updatedAt: updatedAt,
        deletedAt: deletedAt,
      );

  bool get isDone => completedAt != null;
  bool get isInProgress => createdAt != null && createdAt?.day == localTime.day && !isDone;
  bool get isOverdue => createdAt != null && createdAt!.isBefore(localTime) && !isDone;
  bool get isUpcoming => createdAt != null && createdAt!.isAfter(localTime) && !isDone;

  TodoStatus get status {
    if (isInProgress) {
      return TodoStatus.in_progress;
    } else if (isOverdue) {
      return TodoStatus.overdue;
    } else if (isUpcoming) {
      return TodoStatus.upcoming;
    } else if (isDone) {
      return TodoStatus.completed;
    } else {
      return TodoStatus.in_progress;
    }
  }

  Todo markAsDone() => copyWith(completedAt: localTime);

  Option<FieldObjectException<dynamic>> get failure => title.mapped.fold((f) => some(f), (_) => none());
}
