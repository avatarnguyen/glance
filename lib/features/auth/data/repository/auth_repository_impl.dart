import 'package:fpdart/fpdart.dart';
import 'package:glance/features/auth/data/datasource/firebase_auth_datasource.dart';
import 'package:glance/features/auth/domain/failures/auth_failure.dart';
import 'package:glance/core/enum/authentication_state_enum.dart';
import 'package:glance/features/auth/domain/respository/auth_repository.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthDatasource datasource;

  AuthRepositoryImpl(this.datasource);
  @override
  Stream<Either<AuthFailure, AuthenticationStates>> watchAuthStates() async* {
    try {
      yield* datasource.watchAuthStateChanges().map((userModel) =>
          userModel != null
              ? const Right(AuthenticationStates.authenticated)
              : const Right(AuthenticationStates.unauthenticated));
    } catch (e) {
      yield const Left(AuthFailure.serverError());
    }
  }
}
