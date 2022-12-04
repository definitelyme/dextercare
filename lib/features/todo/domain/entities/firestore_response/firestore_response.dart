library firestore_response.dart;

import 'package:dextercare/core/domain/response/index.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'firestore_response.freezed.dart';

@Freezed(when: FreezedWhenOptions.none, map: FreezedMapOptions.none)
class FirestoreResponse with _$FirestoreResponse, Response {
  const FirestoreResponse._();

  const factory FirestoreResponse.success({
    String? code,
    required String message,
    @Default(ResponseType.success) ResponseType type,
  }) = _FirestoreResponse_Success;

  const factory FirestoreResponse.failure({
    String? code,
    required String message,
    @Default(ResponseType.failure) ResponseType type,
  }) = _FirestoreResponse_Failure;

  factory FirestoreResponse.alreadyExists() =>
      const FirestoreResponse.failure(code: 'already-exists', message: 'The document already exists.');

  factory FirestoreResponse.notFound() => const FirestoreResponse.failure(code: 'not-found', message: 'The document does not exist.');

  factory FirestoreResponse.permissionDenied() => const FirestoreResponse.failure(
      code: 'permission-denied', message: 'The caller does not have permission to execute the specified operation.');

  factory FirestoreResponse.unauthenticated() => const FirestoreResponse.failure(
      code: 'unauthenticated', message: 'The request does not have valid authentication credentials for the operation.');

  factory FirestoreResponse.unavailable() => const FirestoreResponse.failure(
      code: 'unavailable', message: 'The service is currently unavailable. This is a most likely a transient condition.');

  factory FirestoreResponse.unimplemented() => const FirestoreResponse.failure(
      code: 'unimplemented', message: 'The operation is not implemented or is not supported/enabled in this service.');

  factory FirestoreResponse.unknown() =>
      const FirestoreResponse.failure(code: 'unknown', message: 'An unknown error or an error from a different error domain.');

  factory FirestoreResponse.invalidArgument() => const FirestoreResponse.failure(
      code: 'invalid-argument', message: 'Client specified an invalid argument. Note that this differs from failed-precondition.');

  factory FirestoreResponse.deadlineExceeded() => const FirestoreResponse.failure(
      code: 'deadline-exceeded',
      message:
          'Deadline expired before operation could complete. For operations that change the state of the system, this error may be returned even if the operation has completed successfully.');

  factory FirestoreResponse.dataLoss() =>
      const FirestoreResponse.failure(code: 'data-loss', message: 'Unrecoverable data loss or corruption.');

  factory FirestoreResponse.failedPrecondition() => const FirestoreResponse.failure(
        code: 'failed-precondition',
        message:
            'Operation was rejected because the system is not in a state required for the operation\'s execution. For example, the directory to be deleted is non-empty, an rmdir operation is applied to a non-directory, etc.',
      );

  factory FirestoreResponse.aborted() => const FirestoreResponse.failure(
      code: 'aborted',
      message: 'The operation was aborted, typically due to a concurrency issue like sequencer check failures, transaction aborts, etc.');

  factory FirestoreResponse.outOfRange() => const FirestoreResponse.failure(
      code: 'out-of-range', message: 'Operation was attempted past the valid range. E.g., seeking or reading past end of file.');

  factory FirestoreResponse.resourceExhausted() => const FirestoreResponse.failure(
      code: 'resource-exhausted',
      message: 'Some resource has been exhausted, perhaps a per-user quota, or perhaps the entire file system is out of space.');
}
