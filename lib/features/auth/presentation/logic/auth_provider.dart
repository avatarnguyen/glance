import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'auth_state.dart';

part 'auth_state_notifier.dart';

/// Provider to use the AuthStateNotifier
final authNotifierProvider = StateNotifierProvider(
  (ref) => AuthNotifier(),
);

/// Repositories Providers
/// TODO: Create Repositories Providers

/// Use Cases Providers
/// TODO: Create Use Cases Providers