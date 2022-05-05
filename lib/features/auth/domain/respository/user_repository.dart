import 'package:firebase_auth/firebase_auth.dart';
import 'package:fpdart/fpdart.dart';
import 'package:glance/features/auth/domain/failures/auth_failure.dart';

abstract class UserRepository {
  Stream<Either<AuthFailure, User>> watchUser();
  Future<Option<User>> getSignedInUser();

  //TODO: change / delete account, etc.
}
