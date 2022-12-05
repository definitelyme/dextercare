library todo_facade.dart;

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:dextercare/core/domain/base_facade.dart';
import 'package:dextercare/core/domain/entities/entities.dart';
import 'package:dextercare/core/domain/response/index.dart';
import 'package:dextercare/features/todo/domain/entities/index.dart';
import 'package:kt_dart/collection.dart';

abstract class TodoFacade with BaseFacade {
  const TodoFacade();

  FirebaseFirestore get firestore;

  Future<Todo?> get(Todo todo);

  Stream<Either<FirestoreResponse, KtList<Todo>>> watchTodos(User user, DateTime date);

  Stream<Either<Response, KtList<Shift>>> get shifts;

  Stream<Either<Response, Todo>> get watch;

  Future<Either<Response, Todo>> createOrUpdate(Todo todo);
}
