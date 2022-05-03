import 'package:fpdart/fpdart.dart';
import 'package:glance/core/error/failure.dart';
import 'package:glance/features/calendar/domain/entity/calendar.dart';

abstract class CalendarRepository {
  /// Get all available CalendarListEntry from Google Server and local
  Future<Either<Failure, List<Calendar>>> getAllCalendars();

  /// update calendar with information from calendar param
  Future<Either<Failure, Calendar>> updateCalendar(Calendar calendar);
}
