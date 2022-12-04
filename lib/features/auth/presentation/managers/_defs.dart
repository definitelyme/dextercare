import 'package:dartz/dartz.dart';
import 'package:dextercare/core/domain/entities/entities.dart';
import 'package:dextercare/features/auth/domain/entities/index.dart';

typedef Task = void Function(Option<User?> option);

mixin WatcherCubit {
  Future<void> unsubscribeAuthChanges();

  Future<void> unsubscribeUserChanges();

  bool get isAuthenticated;

  User? get user;

  void subscribeToAuthChanges(Task actions);

  void subscribeUserChanges();

  Future<void> signOut();

  Future<void> close();
}

mixin WatcherState {
  bool get isLoading;
  bool get isLoggingOut;
  User? get user;
  Option<User?> get option => throw UnimplementedError();
  Option<AuthResponse?> get status;
}
