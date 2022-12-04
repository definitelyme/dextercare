part of 'auth_watcher_cubit.dart';

@Freezed(map: FreezedMapOptions.none, when: FreezedWhenOptions.none)
class AuthWatcherState with _$AuthWatcherState {
  const factory AuthWatcherState({
    @Default(false) bool isLoading,
    @Default(false) bool isLoggingOut,
    User? user,
    @Default(None()) Option<User?> option,
    @Default(None()) Option<AuthResponse?> status,
  }) = _AuthWatcherState;

  const AuthWatcherState._();

  factory AuthWatcherState.initial() => const AuthWatcherState();
}
