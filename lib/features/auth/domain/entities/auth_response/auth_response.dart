library auth_response.dart;

import 'package:flutter/foundation.dart';
import 'package:dextercare/core/domain/response/index.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_response.freezed.dart';

@Freezed(when: FreezedWhenOptions.none, map: FreezedMapOptions.none)
class AuthResponse with _$AuthResponse, Response {
  const AuthResponse._();

  const factory AuthResponse.success({
    String? code,
    required String message,
    @Default(ResponseType.success) ResponseType type,
  }) = _AuthResponse_Success;

  const factory AuthResponse.failure({
    String? code,
    required String message,
    @Default(ResponseType.failure) ResponseType type,
  }) = _AuthResponse_Failure;

  factory AuthResponse.accountExistsWithDifferentCredential() => const AuthResponse.failure(
      code: 'account-exists-with-different-credential', message: 'The account already exists with a different credential.');

  factory AuthResponse.cancelledAction() => const AuthResponse.failure(code: 'cancelled-action', message: 'The user cancelled the action.');

  factory AuthResponse.invalidCredential() => const AuthResponse.failure(code: 'invalid-credential', message: 'The credential is invalid.');

  factory AuthResponse.operationNotAllowed() =>
      const AuthResponse.failure(code: 'operation-not-allowed', message: 'The operation is not allowed.');

  factory AuthResponse.userDisabled() =>
      const AuthResponse.failure(code: 'user-disabled', message: 'The user account has been disabled by an administrator.');

  factory AuthResponse.userNotFound() => const AuthResponse.failure(
      code: 'user-not-found', message: 'There is no user record corresponding to this identifier. The user may have been deleted.');

  factory AuthResponse.wrongPassword() =>
      const AuthResponse.failure(code: 'wrong-password', message: 'The password is invalid or the user does not have a password.');

  factory AuthResponse.emailAlreadyInUse() =>
      const AuthResponse.failure(code: 'email-already-in-use', message: 'The email address is already in use by another account.');

  factory AuthResponse.invalidEmail() =>
      const AuthResponse.failure(code: 'invalid-email', message: 'The email address is badly formatted.');

  factory AuthResponse.weakPassword() => const AuthResponse.failure(code: 'weak-password', message: 'The password is not strong enough.');

  factory AuthResponse.invalidVerificationCode() =>
      const AuthResponse.failure(code: 'invalid-verification-code', message: 'The verification code is invalid.');

  factory AuthResponse.invalidVerificationId() =>
      const AuthResponse.failure(code: 'invalid-verification-id', message: 'The verification ID is invalid.');
}
