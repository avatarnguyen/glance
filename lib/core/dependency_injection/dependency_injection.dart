import 'dart:io';

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:glance/core/dependency_injection/auth_dependency.dart';
import 'package:glance/features/calendar/data/datasource/google_calendar_datasource.dart';
import 'package:glance/features/calendar/data/repositories/calendar_event_repository_impl.dart';
import 'package:glance/features/calendar/data/repositories/calendar_repository_impl.dart';
import 'package:glance/features/calendar/domain/repositories/calendar_event_respository.dart';
import 'package:glance/features/calendar/domain/repositories/calendar_repository.dart';
import 'package:glance/features/calendar/domain/usecases/get_calendar_events.dart';
import 'package:glance/features/calendar/domain/usecases/get_calendars.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final googleCalendarDataSourceProvider =
    Provider<GoogleCalendarDataSource>((ref) {
  return GoogleCalendarDataSourceImpl(
      googleSignIn: ref.read(googleSignInProvider));
});

final calendarRepositoryProvider = Provider<CalendarRepository>((ref) {
  return CalendarRepositoryImpl(
    ref.read(googleCalendarDataSourceProvider),
  );
});

final calendarEventRepositoryProvider =
    Provider<CalendarEventRepository>((ref) {
  return CalendarEventRepositoryImpl(
    ref.read(googleCalendarDataSourceProvider),
  );
});

final getCalendarsProvider = Provider<GetCalendars>((ref) {
  return GetCalendars(
    ref.read(calendarRepositoryProvider),
  );
});

final getCalendarEventsProvider = Provider<GetCalendarEvents>((ref) {
  return GetCalendarEvents(
    ref.read(calendarEventRepositoryProvider),
  );
});
