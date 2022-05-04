import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:glance/core/dependency_injection.dart';
import 'package:glance/features/calendar/domain/usecases/get_calendars.dart';

import 'calendar_state.dart';

part 'calendar_state_notifier.dart';

/// Provider to use the CalendarStateNotifier
final calendarNotifierProvider = StateNotifierProvider(
  (ref) => CalendarNotifier(ref),
);
