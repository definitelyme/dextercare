library auth_facade.dart;

import 'package:dartz/dartz.dart';
import 'package:dextercare/core/domain/entities/entities.dart';
import 'package:dextercare/features/auth/domain/entities/index.dart';
import 'package:firebase_auth/firebase_auth.dart' hide User;
import 'package:google_sign_in/google_sign_in.dart';

abstract class AuthFacade {
  const AuthFacade();

  FirebaseAuth get firebaseAuth;

  GoogleSignIn get googleSignIn;

  Future<Either<AuthResponse, Unit>> signInWithGoogle();

  Stream<Option<User>> get onAuthStateChanged;

  Stream<Option<User>> get onUserChanges;

  Future<void> signOut();
}
