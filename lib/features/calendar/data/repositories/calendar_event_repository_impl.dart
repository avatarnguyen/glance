import 'package:fpdart/fpdart.dart';
import 'package:glance/core/error/failure.dart';
import 'package:glance/features/calendar/data/datasource/google_calendar_datasource.dart';
import 'package:glance/features/calendar/domain/entity/event.dart';
import 'package:glance/features/calendar/domain/repositories/calendar_event_respository.dart';

class CalendarEventRepositoryImpl implements CalendarEventRepository {
  final GoogleCalendarDataSource googleCalendarDataSource;

  CalendarEventRepositoryImpl(this.googleCalendarDataSource);

  @override
  Future<Either<Failure, Unit>> createCalendarEvent(Event event) {
    // TODO: implement createCalendarEvent
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Unit>> deleteCalendarEvent(Event event) {
    // TODO: implement deleteCalendarEvent
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<Event>>> getCalendarEvents(
      {DateTime? start, DateTime? end}) {
    // TODO: implement getCalendarEvents
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Unit>> updateCalendarEvent(Event event) {
    // TODO: implement updateCalendarEvent
    throw UnimplementedError();
  }
}
