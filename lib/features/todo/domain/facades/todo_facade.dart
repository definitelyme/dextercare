library todo_facade.dart;

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:dextercare/features/todo/domain/entities/index.dart';
import 'package:kt_dart/collection.dart';

abstract class TodoFacade {
  FirebaseFirestore get firestore;

  @override
  Future<Todo?> get single;

  Future<Either<FirestoreResponse, Unit>> create(Todo todo);

  Stream<Either<FirestoreResponse, KtList<Todo>>> get watch;
}
