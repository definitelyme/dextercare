import 'package:dextercare/core/domain/entities/entities.dart';
import 'package:dextercare/utils/utils.dart';
import 'package:firebase_auth/firebase_auth.dart' as l1;

extension FirebaseUserX on l1.User {
  User get domain {
    return User.blank(
      id: uid,
      name: displayName ?? providerData.firstOrNull()?.displayName,
      email: email ?? providerData.firstOrNull()?.email,
      createdAt: metadata.creationTime,
      updatedAt: metadata.lastSignInTime,
    );
  }
}
