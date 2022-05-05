import 'package:firebase_auth/firebase_auth.dart';
import 'package:glance/features/auth/data/models/user_model.dart';

abstract class AuthDatasource {
  Stream<UserModel?> watchAuthStateChanges();
  Stream<UserModel?> watchUserChanges();

  Future<UserModel> getSignedInUser();
  Future<void> signUp({
    required String email,
    required String password,
  });
  Future<void> signIn({
    required String email,
    required String password,
  });
  Future<void> signOut();
}

class FirebaseAuthDatasource implements AuthDatasource {
  final FirebaseAuth _firebaseAuth;

  FirebaseAuthDatasource(this._firebaseAuth);

  @override
  Future<UserModel> getSignedInUser() {
    // TODO: implement getSignedInUser
    throw UnimplementedError();
  }

  @override
  Future<void> signIn({required String email, required String password}) {
    // TODO: implement signIn
    throw UnimplementedError();
  }

  @override
  Future<void> signOut() {
    // TODO: implement signOut
    throw UnimplementedError();
  }

  @override
  Future<void> signUp({required String email, required String password}) {
    // TODO: implement signUp
    throw UnimplementedError();
  }

  @override
  Stream<UserModel?> watchAuthStateChanges() {
    // TODO: implement watchAuthStateChanges
    throw UnimplementedError();
  }

  @override
  Stream<UserModel?> watchUserChanges() {
    // TODO: implement watchUserChanges
    throw UnimplementedError();
  }
}
