import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dextercare/features/auth/domain/index.dart';
import 'package:dextercare/managers/locator/locator.dart';
import 'package:dextercare/utils/utils.dart';

final localTimestamp = Timestamp.fromDate(localTime);

mixin DbConstants {
  static const String usersCollection = 'users';
  static const String shiftCollection = 'shifts';
  static const String tasksCollection = 'tasks';
}

extension FirestoreX on FirebaseFirestore {
  CollectionReference get users {
    return collection(DbConstants.usersCollection);
  }

  CollectionReference get shifts {
    return collection(DbConstants.shiftCollection);
  }

  CollectionReference get todos {
    return collection(DbConstants.tasksCollection);
  }
}

extension CollectionReferenceX on CollectionReference {
  DocumentReference get user {
    final user = getIt<AuthFacade>().currentUser;
    return doc(user.getOrNull?.id.value);
  }
}

extension DocumentReferenceX on DocumentReference {}
