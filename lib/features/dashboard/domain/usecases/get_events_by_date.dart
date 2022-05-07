import 'package:fpdart/fpdart.dart';
import 'package:glance/core/error/failure.dart';
import 'package:glance/core/glance_core.dart';
import 'package:glance/core/utils/helpers/date_time_helper.dart';
import 'package:glance/features/calendar/domain/entity/calendar_event.dart';
import 'package:glance/features/calendar/domain/repositories/calendar_event_respository.dart';

class GetEventsByDate extends UseCase<List<CalendarEvent>, DateTime> {
  final CalendarEventRepository repository;

  GetEventsByDate(this.repository);

  @override
  Future<Either<Failure, List<CalendarEvent>>> call(DateTime params) {
    final _start = DateTimeUtils.getBeginningOfDay(params);
    final _end = DateTimeUtils.getEndOfDay(params);
    return repository.getCalendarEvents(start: _start, end: _end);
  }
}
