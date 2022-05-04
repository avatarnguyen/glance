import 'package:fpdart/fpdart.dart';
import 'package:glance/core/error/exception.dart';
import 'package:glance/core/error/failure.dart';
import 'package:glance/core/glance_core.dart';
import 'package:glance/core/utils/helpers/date_time_helper.dart';
import 'package:glance/features/calendar/data/datasource/google_calendar_datasource.dart';
import 'package:glance/features/calendar/data/model/google_calendar_model.dart';
import 'package:glance/features/calendar/domain/entity/calendar_event.dart';
import 'package:glance/features/calendar/domain/repositories/calendar_event_respository.dart';
import 'package:dartx/dartx.dart';

class CalendarEventRepositoryImpl implements CalendarEventRepository {
  final GoogleCalendarDataSource googleCalendarDataSource;

  CalendarEventRepositoryImpl(this.googleCalendarDataSource);
  final _log = logger(CalendarEventRepositoryImpl);
  @override
  Future<Either<Failure, Unit>> createCalendarEvent(CalendarEvent event) {
    // TODO: implement createCalendarEvent
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Unit>> deleteCalendarEvent(CalendarEvent event) {
    // TODO: implement deleteCalendarEvent
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<CalendarEvent>>> getCalendarEvents({
    DateTime? start,
    DateTime? end,
  }) async {
    final timeMin = start != null
        ? DateTimeUtils.toGoogleRFCDateTime(start)
        : DateTimeUtils.firstDayOfCurrentMonth();
    final timeMax = end != null
        ? DateTimeUtils.toGoogleRFCDateTime(end)
        : DateTimeUtils.getEndOfDay(90.days.fromNow);

    try {
      final _calendarList = await _filterSelectedCalendars();

      final googleCalendarEventsModel =
          await googleCalendarDataSource.getGoogleEventsData(
        calendarList: _calendarList,
        timeMin: timeMin,
        timeMax: timeMax,
      );
      _log.i('Calendar Events Length: ${googleCalendarEventsModel.length}');

      final _calendarEvents =
          googleCalendarEventsModel.map((entry) => entry.toEntity()).toList();
      return Right(_calendarEvents);
    } on ServerException {
      _log.e('ServerException');
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, Unit>> updateCalendarEvent(CalendarEvent event) {
    // TODO: implement updateCalendarEvent
    throw UnimplementedError();
  }

  //* Fetch Calendar List
  // And Filter selected calendars
  Future<List<GoogleCalendarModel>> _filterSelectedCalendars() async {
    final _calendars = await googleCalendarDataSource.getGoogleCalendars();
    _log.v('All Calendar List: ${_calendars.length}');

// FIXME: need to change to calendar.selected == true
// for testing purpose, no filter is added
    final _activeCalendars =
        _calendars.where((calendar) => calendar.selected != null).toList();
    _log.i('Active Calendar List: ${_activeCalendars.length}');
    return _activeCalendars;
  }
}
