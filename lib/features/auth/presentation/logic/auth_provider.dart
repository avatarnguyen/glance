import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:glance/core/dependency_injection/auth_dependency.dart';
import 'package:glance/core/enum/authentication_state_enum.dart';
import 'package:glance/core/error/error_message.dart';

import 'auth_state.dart';

final authChangeStreamProvider = StreamProvider<AuthState>((ref) {
  final authWatchChanges = ref.read(authWatchChangesProvider);
  return authWatchChanges.call().map((_result) => _result.fold(
        (failure) => AuthState.error(ErrorMessage.getAuthErrorMessage(failure)),
        (authState) {
          if (authState == AuthenticationStates.authenticated) {
            return const AuthState.authenticated();
          } else if (authState == AuthenticationStates.unauthenticated) {
            return const AuthState.unauthenticated();
          } else {
            return const AuthState.undefined();
          }
        },
      ));
});
