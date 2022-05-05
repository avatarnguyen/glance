import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';

@freezed
class User with _$User {
  factory User({
    required String id,
    String? username,
    String? email,
    String? picture,
  }) = _User;
}
