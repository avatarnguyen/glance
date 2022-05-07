import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:glance/core/dependency_injection/dependency_injection.dart';
import 'package:glance/core/error/error_message.dart';
import 'package:glance/features/dashboard/domain/usecases/get_events_by_date.dart';

import 'dashboard_state.dart';

part 'dashboard_state_notifier.dart';

/// Provider to use the DashboardStateNotifier
final dashboardNotifierProvider =
    StateNotifierProvider<DashboardNotifier, DashboardState>(
  (ref) => DashboardNotifier(ref.read(getEventsByDateProvider)),
);
