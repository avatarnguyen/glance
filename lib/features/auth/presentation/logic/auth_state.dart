import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_state.freezed.dart';

@freezed
abstract class AuthState with _$AuthState {
  /// Data is present state
  const factory AuthState.authenticated() = _Authenticated;

  /// Initial/default state
  const factory AuthState.unauthenticated() = _UnAuthenticated;

  /// Data is loading state
  const factory AuthState.undefined() = _UndefinedAuthState;

  /// Error when loading data state
  const factory AuthState.error([String? message]) = _Error;
}
