part of 'auth_provider.dart';
// TODO: Implement Auth StateNotifier

/// Defines all the Auth logic the app will use
class AuthNotifier extends StateNotifier<AuthState> {
  /// Base constructor expects StateNotifier use_cases to 
  /// read its usecases and also defines inital state
  AuthNotifier() : super(AuthState.initial());
}