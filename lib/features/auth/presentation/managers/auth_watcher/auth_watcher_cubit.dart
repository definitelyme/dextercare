// ignore_for_file: cancel_subscriptions

library auth_watcher_cubit.dart;

import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart' hide Task;
import 'package:dextercare/core/domain/entities/entities.dart';
import 'package:dextercare/features/auth/domain/entities/index.dart';
import 'package:dextercare/features/auth/domain/index.dart';
import 'package:dextercare/features/auth/presentation/managers/_defs.dart';
import 'package:dextercare/utils/utils.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'auth_watcher_cubit.freezed.dart';
part 'auth_watcher_state.dart';

@singleton
class AuthWatcherCubit extends Cubit<AuthWatcherState> with WatcherCubit {
  StreamSubscription<Option<User?>>? _authStateChanges;
  StreamSubscription<Option<User?>>? _userChanges;

  final AuthFacade facade;

  AuthWatcherCubit(this.facade) : super(AuthWatcherState.initial());

  @override
  Future<void> close() {
    unsubscribeAuthChanges();
    unsubscribeUserChanges();
    return super.close();
  }

  @override
  bool get isAuthenticated => user != null;

  @override
  Future<void> signOut() async {
    toggleLogoutLoading(true);

    await facade.signOut();

    toggleLogoutLoading(false);

    emit(state.copyWith(user: null, option: none(), status: none()));
  }

  @override
  void subscribeToAuthChanges(Task actions) async {
    emit(state.copyWith(isLoading: true, user: facade.currentUser.getOrNull));

    await _authStateChanges?.cancel();

    _authStateChanges ??= facade.onAuthStateChanged.listen((option) {
      emit(state.copyWith(user: user, option: option, status: none()));
      actions(option);
    });

    toggleLoading(false);
  }

  @override
  void subscribeUserChanges([Task? actions]) async {
    emit(state.copyWith(isLoading: true, user: facade.currentUser.getOrNull));

    await unsubscribeUserChanges();

    _userChanges = facade.onUserChanges.listen((option) {
      final user = option.getOrNull;

      emit(state.copyWith(user: user, option: optionOf(user), status: none()));

      actions?.call(option);
    });

    toggleLoading(false);
  }

  @override
  Future<void> unsubscribeAuthChanges() async {
    final listenable = _authStateChanges;
    _authStateChanges = null;
    listenable?.cancel();
  }

  @override
  Future<void> unsubscribeUserChanges() async {
    final listenable = _userChanges;
    _userChanges = null;
    listenable?.cancel();
  }

  @override
  User? get user => state.user;

  void toggleLoading([bool? isLoading]) => emit(state.copyWith(isLoading: isLoading ?? !state.isLoading));

  void toggleLogoutLoading([bool? value]) => emit(state.copyWith(isLoggingOut: value ?? !state.isLoggingOut));
}
