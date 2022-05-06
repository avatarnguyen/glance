import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:glance/core/dependency_injection/dependency_injection.dart';
import 'package:glance/core/error/error_message.dart';
import 'package:glance/core/glance_core.dart';
import 'package:glance/features/calendar/domain/usecases/calendar_event_params.dart';
import 'package:glance/features/calendar/domain/usecases/get_calendar_events.dart';

import 'calendar_state.dart';

part 'calendar_state_notifier.dart';

/// Provider to use the CalendarStateNotifier
final calendarNotifierProvider = StateNotifierProvider(
  (ref) => CalendarNotifier(ref),
);
