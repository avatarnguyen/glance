import 'package:fpdart/fpdart.dart';
import 'package:glance/core/error/failure.dart';
import 'package:glance/features/calendar/domain/entity/event.dart';

abstract class CalendarEventRepository {
  /// Get Events between a time range
  /// If not specify, next 3 months will be loaded
  Future<Either<Failure, List<Event>>> getCalendarEvents({
    DateTime? start,
    DateTime? end,
  });

  /// Insert New Event to Calendar
  /// Take [Event] as argument
  Future<Either<Failure, Unit>> createCalendarEvent(Event event);

  /// Update Calendar Event
  /// Take [Event] as argument
  Future<Either<Failure, Unit>> updateCalendarEvent(Event event);

  /// Delete Calendar Event
  /// Take [Event] as argument
  Future<Either<Failure, Unit>> deleteCalendarEvent(Event event);
}
