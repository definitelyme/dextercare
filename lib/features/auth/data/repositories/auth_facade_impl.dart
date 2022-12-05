library auth_facade_impl.dart;

import 'package:dartz/dartz.dart';
import 'package:dextercare/core/domain/entities/entities.dart';
import 'package:dextercare/features/auth/domain/entities/index.dart';
import 'package:dextercare/features/auth/domain/index.dart';
import 'package:firebase_auth/firebase_auth.dart' hide User;
import 'package:flutter/services.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';
import 'package:dextercare/features/auth/data/repositories/firebase_auth_user_extension.dart';

@Injectable(as: AuthFacade)
class AuthFacadeImpl extends AuthFacade {
  @override
  final FirebaseAuth firebaseAuth;

  @override
  final GoogleSignIn googleSignIn;

  const AuthFacadeImpl(this.firebaseAuth, this.googleSignIn);

  @override
  Future<Either<AuthResponse, User>> createAccount(EmailAddress email, Password password) async {
    try {
      final result = await firebaseAuth.createUserWithEmailAndPassword(email: email.getOrNull!, password: password.getOrNull!);
      return right(result.user!.domain);
    } on AuthResponse catch (e) {
      return left(e);
    } on FirebaseAuthException catch (e) {
      return _handleAuthException(e);
    } on PlatformException catch (e) {
      return left(AuthResponse.failure(message: '${e.message}', code: e.code));
    } catch (e) {
      return left(AuthResponse.failure(message: '$e'));
    }
  }

  @override
  Option<User?> get currentUser => optionOf(firebaseAuth.currentUser?.domain);

  @override
  Stream<Option<User?>> get onAuthStateChanged => firebaseAuth.authStateChanges().map((user) => optionOf(user?.domain));

  @override
  Stream<Option<User?>> get onUserChanges => firebaseAuth.userChanges().map((user) => optionOf(user?.domain));

  @override
  Future<Either<AuthResponse, User>> signInWithEmailAndPassword(EmailAddress email, Password password) async {
    try {
      final result = await firebaseAuth.signInWithEmailAndPassword(email: email.getOrNull!, password: password.getOrNull!);
      return right(result.user!.domain);
    } on AuthResponse catch (e) {
      return left(e);
    } on FirebaseAuthException catch (e) {
      return _handleAuthException(e);
    } on PlatformException catch (e) {
      return left(AuthResponse.failure(message: '${e.message}', code: e.code));
    } catch (e) {
      return left(AuthResponse.failure(message: '$e'));
    }
  }

  @override
  Future<Either<AuthResponse, User>> signInWithGoogle() async {
    try {
      // Attempt authenticating user with google credentials
      final account = await googleSignIn.signIn();
      // If null, => user cancelled authentication
      if (account == null) throw AuthResponse.cancelledAction();

      // get authentication details [idToken], [accessToken]
      final authentication = await account.authentication;

      // Get instance of AuthCredentials
      AuthCredential authCredential = GoogleAuthProvider.credential(
        idToken: authentication.idToken,
        accessToken: authentication.accessToken,
      );

      // SignIn to firebase using user's google account credentials
      final credentials = await firebaseAuth.signInWithCredential(authCredential);

      return right(credentials.user!.domain);
    } on AuthResponse catch (e) {
      return left(e);
    } on FirebaseAuthException catch (e) {
      return _handleAuthException(e);
    } on PlatformException catch (e) {
      return left(AuthResponse.failure(message: '${e.message}', code: e.code));
    } catch (e) {
      return left(AuthResponse.failure(message: '$e'));
    }
  }

  @override
  Future<void> signOut() async {
    await googleSignIn.signOut();
    await firebaseAuth.signOut();
  }

  Future<Either<AuthResponse, T>> _handleAuthException<T>(FirebaseAuthException e) async {
    switch (e.code) {
      case 'account-exists-with-different-credential':
        return left(AuthResponse.accountExistsWithDifferentCredential());
      case 'invalid-credential':
        return left(AuthResponse.invalidCredential());
      case 'operation-not-allowed':
        return left(AuthResponse.operationNotAllowed());
      case 'user-disabled':
        return left(AuthResponse.userDisabled());
      case 'user-not-found':
        return left(AuthResponse.userNotFound());
      case 'wrong-password':
        return left(AuthResponse.wrongPassword());
      case 'invalid-verification-code':
        return left(AuthResponse.invalidVerificationCode());
      case 'invalid-verification-id':
        return left(AuthResponse.invalidVerificationId());
      default:
        return left(AuthResponse.failure(message: '${e.message}'));
    }
  }
}
