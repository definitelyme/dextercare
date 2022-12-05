library auth_cubit.dart;

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:dextercare/features/auth/domain/entities/index.dart';
import 'package:dextercare/features/auth/domain/index.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'auth_cubit.freezed.dart';
part 'auth_state.dart';

@injectable
class AuthCubit extends Cubit<AuthState> {
  final AuthFacade facade;

  AuthCubit(this.facade) : super(AuthState.initial());

  void signInWithGoogle() async {
    emit(state.copyWith(status: none(), isGoogleAuthLoading: true));

    final result = await facade.signInWithGoogle();

    emit(result.fold(
      (f) => state.copyWith(status: optionOf(f), isGoogleAuthLoading: false),
      (user) => state.copyWith(
        isGoogleAuthLoading: false,
        status: optionOf(AuthResponse.success(message: 'Welcome ${user.name}')),
      ),
    ));
  }
}
