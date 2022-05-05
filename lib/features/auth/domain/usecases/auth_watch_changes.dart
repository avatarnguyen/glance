import 'package:fpdart/fpdart.dart';
import 'package:glance/core/enum/authentication_state_enum.dart';
import 'package:glance/features/auth/domain/failures/auth_failure.dart';
import 'package:glance/features/auth/domain/respository/auth_repository.dart';

class AuthWatchChanges {
  final AuthRepository repository;

  AuthWatchChanges(this.repository);

  Stream<Either<AuthFailure, AuthenticationStates>> call() async* {
    yield* repository.watchAuthStates();
  }
}
