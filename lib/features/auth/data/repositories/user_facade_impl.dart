library user_facade_impl.dart;

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:dextercare/core/data/index.dart';
import 'package:dextercare/core/domain/entities/user/user.dart';
import 'package:dextercare/core/domain/response/index.dart';
import 'package:dextercare/features/auth/domain/index.dart';
import 'package:dextercare/features/todo/data/models/index.dart';
import 'package:dextercare/features/todo/domain/entities/firestore_response/firestore_response.dart';
import 'package:injectable/injectable.dart';
import 'package:dextercare/utils/utils.dart';

@Injectable(as: UserFacade)
class UserFacadeImpl extends UserFacade {
  @override
  final FirebaseFirestore firestore;

  const UserFacadeImpl(this.firestore);

  Future<bool> docExists(DocumentReference<Object?> doc) async => (await doc.get()).exists;

  @override
  Future<Either<Response, Unit>> createOrUpdate(User user) async {
    try {
      final _doc = firestore.users.user;

      if (!await docExists(_doc)) {
        // UserDTO.fromDomain(user).toJson().addTimestamps(createdAt: localTimestamp, updatedAt: localTimestamp),
        await _doc.set(UserDTO.fromDomain(user).toJson(), SetOptions(merge: true));
      } else {
        // await _doc.update(UserDTO.fromDomain(user).toJson().addTimestamps(updatedAt: localTimestamp));
        await _doc.update(UserDTO.fromDomain(user).toJson());
      }
      return right(unit);
    } on FirebaseException catch (e) {
      return handleFirestoreException(e);
    }
  }

  @override
  Future<User?> get(User user, {bool nested = true}) async {
    final _doc = await firestore.users.doc(user.id.value).get();
    final dto = UserDTO.fromJson(_doc.data() as Map<String, dynamic>);
    return dto.domain;
  }

  @override
  Stream<Either<FirestoreResponse, User>> get watch async* {
    yield* firestore.users.user.snapshots().map(
          (snapshot) => right<FirestoreResponse, User>(
            UserDTO.fromJson(snapshot.data() as Map<String, dynamic>).domain,
          ),
        );
  }

  @override
  Future<User?> currentUser({bool nested = true}) async {
    final _doc = await firestore.users.user.get();
    final dto = UserDTO.fromJson(_doc.data() as Map<String, dynamic>);
    var domain = dto.domain;

    if (nested) {
      final shifts = dto.shifts;
      if (shifts != null) {
        final docs = await Future.wait(shifts.map((e) => firestore.shifts.doc(e).get()));
        final shiftDTOs = docs.map((e) => ShiftDTO.fromJson(e.data() as Map<String, dynamic>)).toList();
        domain = dto.addShifts(shiftDTOs);
      }

      final todos = dto.todos;
      if (todos != null) {
        final docs = await Future.wait(todos.map((e) => firestore.todos.doc(e).get()));
        final todoDTOs = docs.map((e) => TodoDTO.fromJson(e.data() as Map<String, dynamic>)).toList();
        domain = dto.addTodos(todoDTOs);
      }
    }

    return domain;
  }
}
