import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:glance/features/auth/domain/entity/user.dart';
import 'package:firebase_auth/firebase_auth.dart' as firebase;

part 'user_model.freezed.dart';

@freezed
class UserModel with _$UserModel {
  const UserModel._();

  factory UserModel({
    required String id,
    String? username,
    String? email,
    String? picture,
  }) = _UserModel;

  factory UserModel.fromEntity(User user) {
    return UserModel(
      id: user.id,
      username: user.username,
      email: user.email,
      picture: user.picture,
    );
  }

  factory UserModel.fromFirebaseUser(firebase.User user) {
    return UserModel(
      id: user.uid,
      username: user.displayName,
      email: user.email,
      picture: user.photoURL,
    );
  }

  User toEntity() {
    return User(
      id: id,
      username: username,
      email: email,
      picture: picture,
    );
  }
}
