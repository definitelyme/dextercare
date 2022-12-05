library todo_facade_impl.dart;

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:dextercare/core/data/index.dart';
import 'package:dextercare/core/domain/entities/entities.dart';
import 'package:dextercare/core/domain/response/index.dart';
import 'package:dextercare/features/todo/data/models/index.dart';
import 'package:dextercare/features/todo/domain/entities/firestore_response/firestore_response.dart';
import 'package:dextercare/features/todo/domain/entities/todo/todo.dart';
import 'package:dextercare/features/todo/domain/facades/todo_facade.dart';
import 'package:dextercare/utils/utils.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';

@Injectable(as: TodoFacade)
class TodoFacadeImpl extends TodoFacade {
  @override
  final FirebaseFirestore firestore;

  const TodoFacadeImpl(this.firestore);

  Future<bool> docExists(DocumentReference<Object?> doc) async => (await doc.get()).exists;

  @override
  Future<Either<Response, Todo>> createOrUpdate(Todo todo) async {
    try {
      final createdAt = todo.createdAt == null ? localTime : null;
      final dto = TodoDTO.fromDomain(todo);
      final data = dto.copyWith(createdAt: createdAt, updatedAt: localTime).toJson();

      await firestore.todos.doc(dto.id).set(data, SetOptions(merge: true));
      return right(todo);
    } on FirebaseException catch (e) {
      return handleFirestoreException(e);
    }
  }

  @override
  Future<Todo?> get(Todo todo) async {
    final _doc = await firestore.todos.doc(todo.id.value).get();
    final dto = TodoDTO.fromJson(_doc.data() as Map<String, dynamic>);
    return dto.domain;
  }

  @override
  Stream<Either<FirestoreResponse, KtList<Todo>>> watchTodos(User user, DateTime date) async* {
    final _date = DateTime(date.year, date.month, date.day);
    final _localTime = DateTime(localTime.year, localTime.month, localTime.day);

    yield* firestore.todos
        .where('nurses', arrayContains: user.id.value)
        .orderBy('created_at')
        .where(
          'created_at',
          isGreaterThanOrEqualTo: _date.isAfter(_localTime) || _date.isAtSameMomentAs(_localTime) ? _date : null,
          isLessThanOrEqualTo: _date.isBefore(_localTime) ? _date : null,
        )
        .snapshots()
        .map(
      (snapshot) {
        final list = snapshot.docs;
        return right<FirestoreResponse, KtList<Todo>>(
          list.map((e) => TodoDTO.fromJson(e.data() as Map<String, dynamic>).domain).toImmutableList(),
        );
      },
    );
  }

  @override
  Stream<Either<FirestoreResponse, Todo>> get watch async* {
    yield* firestore.users.user.snapshots().map(
          (snapshot) => right<FirestoreResponse, Todo>(
            TodoDTO.fromJson(snapshot.data() as Map<String, dynamic>).domain,
          ),
        );
  }

  @override
  Stream<Either<Response, KtList<Shift>>> get shifts async* {
    yield* firestore.shifts.snapshots().map(
      (snapshot) {
        final list = snapshot.docs;
        return right<FirestoreResponse, KtList<Shift>>(
          list.map((e) => ShiftDTO.fromJson(e.data() as Map<String, dynamic>).domain).toImmutableList(),
        );
      },
    );
  }
}
