import 'package:google_sign_in/google_sign_in.dart';

abstract class ThirdPartyAuthDatasource {
  /// Idea: using repository pattern to use the same method for apple and google signin
  /// can be use through dependency injection with different interface implementation
  Future<void> signInWithThirdParty();
}

class GoogleAuthDatasource implements ThirdPartyAuthDatasource {
  final GoogleSignIn _googleSignIn;

  GoogleAuthDatasource(this._googleSignIn);

  @override
  Future<void> signInWithThirdParty() {
    // TODO: implement signInWithGoogle
    throw UnimplementedError();
  }
}

// for later:
// class AppleAuthDatasource implements ThirdPartyAuthDatasource {}