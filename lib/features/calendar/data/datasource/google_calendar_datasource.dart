import 'package:extension_google_sign_in_as_googleapis_auth/extension_google_sign_in_as_googleapis_auth.dart';
import 'package:glance/core/error/exception.dart';
import 'package:glance/core/utils/logger.dart';
import 'package:glance/features/calendar/data/model/google_calendar_model.dart';
import 'package:glance/features/calendar/data/model/google_event_model.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:googleapis/calendar/v3.dart' as google_api;
import 'package:googleapis_auth/googleapis_auth.dart';
import 'package:http/http.dart' as http;
import 'package:http/io_client.dart' as io;

abstract class GoogleCalendarDataSource {
  /// Get Google CalendarListEntries
  Future<List<GoogleCalendarModel>> getGoogleCalendars();

  /// Calls the google calendar api endpoint.
  ///
  /// Throws a [ServerException] for all error codes.
  Future<List<GoogleEventModel>> getGoogleEventsData({
    List<GoogleCalendarModel>? calendarList,
    required DateTime timeMin,
    required DateTime timeMax,
  });

  /// Add New Event to Google Calendar
  Future<void> createGoogleEvent({
    String? calendarId,
    required GoogleEventModel eventModel,
  });

  /// Update Event in Google Calendar
  Future<void> updateGoogleEvent({
    String? calendarId,
    required GoogleEventModel eventModel,
  });

  /// Delete Event in Google Calendar
  Future<void> deleteGoogleEvent({
    required String calendarId,
    required GoogleEventModel eventModel,
  });
}

class GoogleCalendarDataSourceImpl implements GoogleCalendarDataSource {
  GoogleCalendarDataSourceImpl({required this.googleSignIn});

  final GoogleSignIn googleSignIn;

  final log = logger(GoogleCalendarDataSourceImpl);

  @override
  Future<List<GoogleEventModel>> getGoogleEventsData({
    List<GoogleCalendarModel>? calendarList,
    required DateTime timeMin,
    required DateTime timeMax,
  }) async {
    final _googleEventModelList = <GoogleEventModel>[];
    final client = await _getAuthClient();
    log.d('client: $client');
    if (client != null) {
      final calendarApi = google_api.CalendarApi(client);
      log.d('Calendar List: ${calendarList?.length}');

      try {
        if (calendarList?.isNotEmpty == true) {
          for (final calendar in calendarList!) {
            final calendarId = calendar.id!;
            log.v('Get Events of Calendar: $calendarId');
            final _calendarApiEvents = await calendarApi.events.list(
              calendarId,
              timeMin: timeMin,
              timeMax: timeMax,
            );
            log.d('Retrieved Events: ${_calendarApiEvents.toJson()}');
            final _newCalendarEventModels = _toGoogleEventModels(
              _calendarApiEvents,
              calendar: calendar,
            );
            _googleEventModelList.addAll(_newCalendarEventModels);
          }
        } else {
          final calEvents = await calendarApi.events.list(
            'primary',
            timeMin: timeMin,
            timeMax: timeMax,
          );
          log.v('Retrieved Events from primary calendar: $calEvents');
          final _newCalendarEventModels = _toGoogleEventModels(calEvents);
          _googleEventModelList.addAll(_newCalendarEventModels);
        }
      } catch (e) {
        log.e('Catches: ${e.toString()}');
        throw ServerException();
      }
    } else {
      throw AuthException();
    }

    log.v(
        'Google Event Model List Item Counts: ${_googleEventModelList.length}');

    return _googleEventModelList;
  }

  @override
  Future<void> createGoogleEvent({
    String? calendarId,
    required GoogleEventModel eventModel,
  }) async {
    final client = await _getAuthClient();
    if (client != null) {
      final calendarApi = google_api.CalendarApi(client);

      try {
        final request = google_api.Event.fromJson(eventModel.toJson());
        await calendarApi.events.insert(request, calendarId ?? 'primary');
      } catch (e) {
        log.e('Catches: ${e.toString()}');
        throw ServerException();
      }
    } else {
      throw AuthException();
    }
  }

  @override
  Future<void> updateGoogleEvent({
    String? calendarId,
    required GoogleEventModel eventModel,
  }) async {
    final client = await _getAuthClient();
    if (client != null) {
      final calendarApi = google_api.CalendarApi(client);

      try {
        if (eventModel.id != null) {
          final request = google_api.Event.fromJson(eventModel.toJson());
          log.v(eventModel.toJson());
          log.v(request.toJson());
          log.v('Calendar ID: $calendarId');
          await calendarApi.events.update(
            request,
            calendarId ?? 'primary',
            eventModel.id!,
          );
        } else {
          log.e('Event ID is null');
          throw ServerException();
        }
      } catch (e) {
        log.e('Catches: ${e.toString()}');
        throw ServerException();
      }
    } else {
      throw AuthException();
    }
  }

  @override
  Future<void> deleteGoogleEvent({
    required String calendarId,
    required GoogleEventModel eventModel,
  }) async {
    final AuthClient? client = await _getAuthClient();
    if (client != null) {
      final calendarApi = google_api.CalendarApi(client);

      try {
        if (eventModel.id != null) {
          await calendarApi.events.delete(calendarId, eventModel.id!);
        } else {
          log.e('Event ID is null');
          throw ServerException();
        }
      } catch (e) {
        log.e('Catches: ${e.toString()}');
        throw ServerException();
      }
    }
  }

  @override
  Future<List<GoogleCalendarModel>> getGoogleCalendars() async {
    final calendars = <GoogleCalendarModel>[];

    final AuthClient? client = await _getAuthClient();
    if (client != null) {
      final calendarApi = google_api.CalendarApi(client);
      try {
        final calendarsList = await calendarApi.calendarList.list();
        final calendarItems = calendarsList.items;
        if (calendarItems != null) {
          for (var item in calendarItems) {
            log.d('Calendar Items: ${item.toJson()}');
            final calendar = GoogleCalendarModel.fromJson(item.toJson());
            calendars.add(calendar);
          }
        }
      } catch (e) {
        log.e('Catches: ${e.toString()}');
        throw ServerException();
      }
    }
    return calendars;
  }

  /// Handle sign in and return authClient for Api Call
  Future<AuthClient?> _getAuthClient() async {
    final _isSignIn = await googleSignIn.isSignedIn();
    log.i('Is Sign In? --> $_isSignIn');
    if (!_isSignIn) {
      await googleSignIn.signIn();
    } else {
      await googleSignIn.signInSilently();
    }

    return await googleSignIn.authenticatedClient();
  }

  // Transfer Event Object (GoogleApi) to Google Event Model
  // and add calendar id to event
  List<GoogleEventModel> _toGoogleEventModels(
    google_api.Events calEvents, {
    GoogleCalendarModel? calendar,
  }) {
    final appointments = <GoogleEventModel>[];
    if (calEvents.items?.isNotEmpty == true) {
      log.i('Items Total #: ${calEvents.items!.length}');
      log.v('Items: ${calEvents.items?[0]}');
      for (var i = 0; i < calEvents.items!.length; i++) {
        final event = calEvents.items![i];
        log.v('Event Json: ${event.toJson()}');
        if (event.start != null) {
          final eventJson = event.toJson();

          // eventJson['colorId'] = calendar?.backgroundColor ?? '#3B2DB0';
          eventJson['calendarId'] = calendar?.id ?? 'primary';
          appointments.add(GoogleEventModel.fromJson(eventJson));
        }
      }
    }
    return appointments;
  }
}

class GoogleAPIClient extends io.IOClient {
  GoogleAPIClient(this._headers) : super();

  final Map<String, String> _headers;

  @override
  Future<io.IOStreamedResponse> send(http.BaseRequest request) =>
      super.send(request..headers.addAll(_headers));

  @override
  Future<http.Response> head(Uri url, {Map<String, String>? headers}) =>
      super.head(url, headers: headers?..addAll(_headers));
}
