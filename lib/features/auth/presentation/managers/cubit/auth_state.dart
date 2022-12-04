part of 'auth_cubit.dart';

@Freezed(map: FreezedMapOptions.none, when: FreezedWhenOptions.none)
class AuthState with _$AuthState {
  const factory AuthState({
    @Default(false) bool isLoading,
    @Default(false) bool isGoogleAuthLoading,
    @Default(false) bool isAppleAuthLoading,
    @Default(None()) Option<AuthResponse?> status,
  }) = _AuthState;

  const AuthState._();

  factory AuthState.initial() => const AuthState();
}
