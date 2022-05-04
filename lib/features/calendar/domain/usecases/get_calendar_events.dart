import 'package:glance/core/error/failure.dart';
import 'package:fpdart/src/either.dart';
import 'package:glance/core/glance_core.dart';
import 'package:glance/features/calendar/domain/entity/calendar_event.dart';
import 'package:glance/features/calendar/domain/repositories/calendar_event_respository.dart';
import 'package:glance/features/calendar/domain/usecases/calendar_event_params.dart';

class GetCalendarEvents
    extends UseCase<List<CalendarEvent>, CalendarEventParams> {
  final CalendarEventRepository repository;

  GetCalendarEvents(this.repository);

  @override
  Future<Either<Failure, List<CalendarEvent>>> call(
      CalendarEventParams params) {
    return repository.getCalendarEvents();
  }
}
