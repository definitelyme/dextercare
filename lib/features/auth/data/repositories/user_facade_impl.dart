library user_facade_impl.dart;

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:dextercare/core/data/index.dart';
import 'package:dextercare/core/domain/entities/user/user.dart';
import 'package:dextercare/core/domain/response/index.dart';
import 'package:dextercare/features/auth/domain/index.dart';
import 'package:dextercare/features/todo/domain/entities/firestore_response/firestore_response.dart';
import 'package:injectable/injectable.dart';

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
  Future<User?> get(User user) async {
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
  Future<User?> get currentUser async {
    final _doc = await firestore.users.user.get();
    final dto = UserDTO.fromJson(_doc.data() as Map<String, dynamic>);
    return dto.domain;
  }
}
