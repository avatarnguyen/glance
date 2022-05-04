import 'dart:io';

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:glance/features/calendar/data/datasource/google_calendar_datasource.dart';
import 'package:glance/features/calendar/data/repositories/calendar_repository_impl.dart';
import 'package:glance/features/calendar/domain/repositories/calendar_repository.dart';
import 'package:glance/features/calendar/domain/usecases/get_calendars.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:googleapis/calendar/v3.dart' as google_api;
import 'package:hooks_riverpod/hooks_riverpod.dart';

final googleSignInProvider = Provider<GoogleSignIn>((ref) {
  return GoogleSignIn(
    clientId: Platform.isIOS
        ? dotenv.env['GOOGLE_CALENDAR_CLIENT_ID_IOS']
        : dotenv.env['GOOGLE_CALENDAR_CLIENT_ID_ANDROID'],
    scopes: <String>[
      google_api.CalendarApi.calendarScope,
    ],
  );
});

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

final getCalendarsProvider = Provider<GetCalendars>((ref) {
  return GetCalendars(
    ref.read(calendarRepositoryProvider),
  );
});
