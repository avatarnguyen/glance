import 'package:glance/core/dependency_injection/auth_dependency.dart';
import 'package:glance/features/calendar/data/datasource/google_calendar_datasource.dart';
import 'package:glance/features/calendar/data/repositories/calendar_event_repository_impl.dart';
import 'package:glance/features/calendar/data/repositories/calendar_repository_impl.dart';
import 'package:glance/features/calendar/domain/repositories/calendar_event_respository.dart';
import 'package:glance/features/calendar/domain/repositories/calendar_repository.dart';
import 'package:glance/features/calendar/domain/usecases/get_calendar_events.dart';
import 'package:glance/features/calendar/domain/usecases/get_calendars.dart';
import 'package:glance/features/create/domain/usecases/create_event.dart';
import 'package:glance/features/create/domain/usecases/create_task.dart';
import 'package:glance/features/dashboard/domain/usecases/get_events_by_date.dart';
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

// USECASES
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

final getEventsByDateProvider = Provider<GetEventsByDate>((ref) {
  return GetEventsByDate(
    ref.read(calendarEventRepositoryProvider),
  );
});

final createEventProvider = Provider<CreateEvent>((ref) {
  return CreateEvent(
    ref.read(calendarEventRepositoryProvider),
  );
});

final createTaskProvider = Provider<CreateTask>((ref) {
  return CreateTask(
    ref.read(calendarEventRepositoryProvider),
  );
});
