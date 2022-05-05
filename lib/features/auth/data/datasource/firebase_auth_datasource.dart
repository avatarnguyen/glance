import 'package:firebase_auth/firebase_auth.dart';
import 'package:glance/core/utils/logger.dart';
import 'package:glance/features/auth/data/models/user_model.dart';

abstract class AuthDatasource {
  Stream<UserModel?> watchAuthStateChanges();
  Stream<UserModel?> watchUserChanges();

  Future<UserModel?> getSignedInUser();
  // Future<void> signUp({
  //   required String email,
  //   required String password,
  // });
  // Future<void> signIn({
  //   required String email,
  //   required String password,
  // });
  // Future<void> signInWithCredential(AuthCredential authCredential);

  Future<void> signOut();
}

class FirebaseAuthDatasource implements AuthDatasource {
  final FirebaseAuth firebaseAuth;
  final _log = logger(FirebaseAuthDatasource);

  FirebaseAuthDatasource(this.firebaseAuth);

  @override
  Future<UserModel?> getSignedInUser() async {
    try {
      final _user = firebaseAuth.currentUser;
      if (_user != null) {
        return UserModel.fromFirebaseUser(_user);
      } else {
        return null;
      }
    } on Exception catch (e) {
      _log.e('get current user failed: $e');
      rethrow;
    }
  }

  // @override
  // Future<void> signIn({required String email, required String password}) {
  //   throw UnimplementedError();
  // }

  @override
  Future<void> signOut() async {
    await firebaseAuth.signOut();
  }

  // @override
  // Future<void> signUp({
  //   required String email,
  //   required String password,
  // }) async {
  //   await firebaseAuth.signInWithEmailAndPassword(
  //     email: email,
  //     password: password,
  //   );
  // }

  @override
  Stream<UserModel?> watchAuthStateChanges() async* {
    yield* firebaseAuth
        .authStateChanges()
        .map((user) => user != null ? UserModel.fromFirebaseUser(user) : null);
  }

  @override
  Stream<UserModel?> watchUserChanges() async* {
    yield* firebaseAuth
        .userChanges()
        .map((user) => user != null ? UserModel.fromFirebaseUser(user) : null);
  }

  // @override
  // Future<void> signInWithCredential(AuthCredential authCredential) async {
  //   await firebaseAuth.signInWithCredential(authCredential);
  // }
}
