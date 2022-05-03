import 'package:fpdart/fpdart.dart';
import 'package:glance/core/error/exception.dart';
import 'package:glance/core/error/failure.dart';
import 'package:glance/core/utils/logger.dart';
import 'package:glance/features/calendar/data/datasource/google_calendar_datasource.dart';
import 'package:glance/features/calendar/domain/entity/calendar.dart';
import 'package:glance/features/calendar/domain/repositories/calendar_repository.dart';

class CalendarRepositoryImpl implements CalendarRepository {
  final GoogleCalendarDataSource googleCalendarDataSource;

  CalendarRepositoryImpl(this.googleCalendarDataSource);

  final _log = logger(CalendarRepositoryImpl);

  @override
  Future<Either<Failure, List<Calendar>>> getAllCalendars() async {
    try {
      // Fetch Remote Calendars and update calendars in local storage
      final remoteCalendars =
          await googleCalendarDataSource.getGoogleCalendars();
      final calendars = remoteCalendars
          .map((calendarModel) => calendarModel.toEntity())
          .toList();

      //TODO: cache locally

      _log.v('Calendars: $calendars');
      return Right(calendars);
    } on ServerException {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, Calendar>> updateCalendar(Calendar calendar) {
    // TODO: implement updateCalendar
    throw UnimplementedError();
  }
}
