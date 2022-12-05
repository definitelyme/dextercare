library auth_cubit.dart;

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:dextercare/core/domain/entities/entities.dart';
import 'package:dextercare/core/presentation/index.dart';
import 'package:dextercare/features/auth/domain/entities/index.dart';
import 'package:dextercare/features/auth/domain/index.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'auth_cubit.freezed.dart';
part 'auth_state.dart';

@injectable
class AuthCubit extends Cubit<AuthState> with BaseCubit {
  final AuthFacade authFacade;
  final UserFacade userFacade;

  AuthCubit(this.authFacade, this.userFacade) : super(AuthState.initial());

  void signInWithGoogle() async {
    emit(state.copyWith(status: none(), isGoogleAuthLoading: true));

    final result = await authFacade.signInWithGoogle();

    await result.fold(
      (f) async => emit(state.copyWith(status: optionOf(f), isGoogleAuthLoading: false)),
      (user) async {
        await userFacade.createOrUpdate(user);

        emit(state.copyWith(
          isGoogleAuthLoading: false,
          status: optionOf(AuthResponse.success(message: 'Welcome ${user.name}')),
        ));
      },
    );
  }

  void loginAnonymous() async {
    emit(state.copyWith(status: none(), isLoading: true));

    final email = EmailAddress('hi@justbrenan.me');
    final password = Password('password');

    final result = await authFacade.signInWithEmailAndPassword(email, password);

    await result.fold(
      (f) async => emit(state.copyWith(status: optionOf(f), isLoading: false)),
      (user) async {
        await userFacade.createOrUpdate(user);

        emit(state.copyWith(
          isLoading: false,
          status: optionOf(AuthResponse.success(message: 'Welcome ${user.name}')),
        ));
      },
    );
  }
}
