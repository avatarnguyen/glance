import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'create_state.dart';

part 'create_state_notifier.dart';

final createNotifierProvider = StateNotifierProvider(
  (ref) => CreateNotifier(),
);

final openCreateViewProvider = StateProvider<bool>(
  (ref) => false,
);
