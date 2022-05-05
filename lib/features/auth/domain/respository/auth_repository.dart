import 'package:fpdart/fpdart.dart';
import 'package:glance/core/enum/authentication_state_enum.dart';
import 'package:glance/features/auth/domain/failures/auth_failure.dart';

abstract class AuthRepository {
  Stream<Either<AuthFailure, AuthenticationStates>> watchAuthStates();

  // Future<Either<AuthFailure, Unit>> signUp({
  //   required String email,
  //   required String password,
  // });
  // Future<Either<AuthFailure, Unit>> signIn({
  //   required String email,
  //   required String password,
  // });
  // Future<Either<AuthFailure, Unit>> signInWithGoogle();
  // Future<Either<AuthFailure, Unit>> signOut();
}
