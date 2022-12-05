library user.dart;

import 'package:dextercare/core/domain/entities/entities.dart';
import 'package:dextercare/features/todo/domain/entities/index.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';

part 'user.freezed.dart';

@Freezed(when: FreezedWhenOptions.none, map: FreezedMapOptions.none)
class User extends BaseEntity with _$User {
  const factory User({
    required UniqueId<String?> id,
    required DisplayName name,
    required EmailAddress email,
    KtList<Shift>? shifts,
    KtList<Todo>? todos,
    DateTime? createdAt,
    DateTime? updatedAt,
    DateTime? deletedAt,
  }) = _User;

  const User._();

  factory User.blank({
    String? id,
    String? name,
    String? email,
    Iterable<Shift>? shifts,
    Iterable<Todo>? todos,
    DateTime? createdAt,
    DateTime? updatedAt,
    DateTime? deletedAt,
  }) =>
      User(
        id: UniqueId.fromExternal(id),
        name: DisplayName(name),
        email: EmailAddress(email),
        shifts: shifts?.toImmutableList(),
        todos: todos?.toImmutableList(),
        createdAt: createdAt,
        updatedAt: updatedAt,
        deletedAt: deletedAt,
      );
}
