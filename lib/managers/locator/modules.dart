library modules.dart;

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dextercare/firebase_options.dart';
import 'package:dextercare/managers/navigation/guards/index.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:dextercare/managers/navigation/navigation.dart';

/// Register all firebase services
@module
abstract class FirebaseModules {
  @lazySingleton
  FirebaseAnalytics get firebaseAnalytics => FirebaseAnalytics.instance..logAppOpen();

  @singleton
  @preResolve
  Future<FirebaseApp> get firebaseApp => Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  @lazySingleton
  FirebaseCrashlytics get firebaseCrashlytics => FirebaseCrashlytics.instance;

  @lazySingleton
  FirebaseAuth get firebaseAuth => FirebaseAuth.instance;

  @lazySingleton
  FirebaseFirestore get firestore => FirebaseFirestore.instance;
}

@module
abstract class AppModules {
  /// Registers AppRouter as a singleton
  @singleton
  AppRouter get router => AppRouter(guestGuard: GuestGuard(), authGuard: AuthGuard());
}

@module
abstract class ServiceModules {
  @lazySingleton
  GoogleSignIn get googleSignIn => GoogleSignIn(
      // clientId: '666486309718-0oigjj1cnahdhjm1te9vo3ibecamlacd.apps.googleusercontent.com',
      );
}
