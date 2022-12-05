library base_facade.dart;

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:dextercare/core/domain/response/index.dart';
import 'package:dextercare/features/todo/domain/entities/index.dart';
import 'package:flutter/foundation.dart';

mixin BaseFacade {
  // Future<T> get single;

  // Future<bool> get docExists;

  // Future<bool> isFieldNull(String field);

  // Stream<Either<FirestoreAuthFailure, KtList<T>>> get watch;

  // Future<Either<FirestoreAuthFailure, Unit>> create(T value);

  // Stream<Either<FirestoreAuthFailure, T>> get read;

  // Future<Either<FirestoreAuthFailure, Unit>> update(
  //   T value, {
  //   Duration timeout = const Duration(seconds: 8),
  // });

  // Future<Either<FirestoreAuthFailure, Unit>> get delete;

  @protected
  Either<Response, R> handleFirestoreException<R>(e) {
    if (e is FirebaseException) {
      final code = e.code;
      final message = e.message;

      switch (code) {
        case 'already-exists':
          return left(FirestoreResponse.alreadyExists());
        case 'not-found':
          return left(FirestoreResponse.notFound());
        case 'permission-denied':
          return left(FirestoreResponse.permissionDenied());
        case 'unauthenticated':
          return left(FirestoreResponse.unauthenticated());
        case 'unavailable':
          return left(FirestoreResponse.unavailable());
        case 'unimplemented':
          return left(FirestoreResponse.unimplemented());
        case 'unknown':
          return left(FirestoreResponse.unknown());
        case 'invalid-argument':
          return left(FirestoreResponse.invalidArgument());
        case 'deadline-exceeded':
          return left(FirestoreResponse.deadlineExceeded());
        case 'data-loss':
          return left(FirestoreResponse.dataLoss());
        case 'failed-precondition':
          return left(FirestoreResponse.failedPrecondition());
        case 'aborted':
          return left(FirestoreResponse.aborted());
        case 'out-of-range':
          return left(FirestoreResponse.outOfRange());
        case 'resource-exhausted':
          return left(FirestoreResponse.resourceExhausted());
        default:
          return left(FirestoreResponse.failure(message: '$message', code: code));
      }
    }

    return left(FirestoreResponse.unknown());
  }
}

// extension ServerTimestampX on Map<String, dynamic> {
//   Map<String, dynamic> addTimestamps({
//     dynamic createdAt,
//     dynamic updatedAt,
//     dynamic deletedAt,
//   }) {
//     if (createdAt != null) this['createdAt'] = createdAt;
//     if (updatedAt != null) this['updatedAt'] = updatedAt;
//     if (deletedAt != null) this['deletedAt'] = deletedAt;
//     return this;
//   }
// }
