import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_state.freezed.dart';

/// TODO: Run build_runner command to generate freezed code
@freezed
abstract class AuthState with _$AuthState {
  /// Data is present state
  const factory AuthState() = Data;

  /// Initial/default state
  const factory AuthState.initial() = Initial;

  /// Data is loading state
  const factory AuthState.loading() = Loading;

  /// Error when loading data state
  const factory AuthState.error([String? message]) = Error;
}
