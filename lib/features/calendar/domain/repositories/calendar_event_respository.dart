import 'package:fpdart/fpdart.dart';
import 'package:glance/core/error/failure.dart';
import 'package:glance/features/calendar/domain/entity/calendar_event.dart';

abstract class CalendarEventRepository {
  /// Get Events between a time range
  /// If not specify, next 3 months will be loaded
  Future<Either<Failure, List<CalendarEvent>>> getCalendarEvents({
    DateTime? start,
    DateTime? end,
  });

  /// Insert New Event to Calendar
  /// Take [CalendarEvent] as argument
  Future<Either<Failure, Unit>> createCalendarEvent(CalendarEvent event);

  /// Update Calendar Event
  /// Take [CalendarEvent] as argument
  Future<Either<Failure, Unit>> updateCalendarEvent(CalendarEvent event);

  /// Delete Calendar Event
  /// Take [CalendarEvent] as argument
  Future<Either<Failure, Unit>> deleteCalendarEvent(CalendarEvent event);
}
