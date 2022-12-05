library user_facade.dart;

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:dextercare/core/domain/base_facade.dart';
import 'package:dextercare/core/domain/entities/entities.dart';
import 'package:dextercare/core/domain/response/index.dart';

abstract class UserFacade with BaseFacade {
  const UserFacade();

  FirebaseFirestore get firestore;

  Future<User?> get(User user);

  Future<User?> get currentUser;

  Stream<Either<Response, User>> get watch;

  Future<Either<Response, Unit>> createOrUpdate(User user);
}
