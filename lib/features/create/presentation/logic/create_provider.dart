import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:glance/core/dependency_injection/dependency_injection.dart';
import 'package:glance/core/glance_core.dart';
import 'package:glance/features/create/domain/usecases/create_event.dart';
import 'package:glance/features/create/domain/usecases/create_task.dart';
import 'package:rrule/rrule.dart';

import 'create_state.dart';

part 'create_state_notifier.dart';

final createNotifierProvider =
    StateNotifierProvider<CreateNotifier, CreateState>(
  (ref) => CreateNotifier(ref),
);

final openCreateViewProvider = StateProvider<bool>(
  (ref) => false,
);
