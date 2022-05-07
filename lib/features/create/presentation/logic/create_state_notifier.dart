part of 'create_provider.dart';
// TODO: Implement Create StateNotifier

/// Defines all the Create logic the app will use
class CreateNotifier extends StateNotifier<CreateState> {
  /// Base constructor expects StateNotifier use_cases to 
  /// read its usecases and also defines inital state
  CreateNotifier() : super(CreateState.initial());
}