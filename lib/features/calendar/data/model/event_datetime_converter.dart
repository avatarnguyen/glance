import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:glance/features/calendar/data/model/event_date_time_model.dart';
import 'package:googleapis/calendar/v3.dart' as google_api;

class EventDateTimeConverter
    implements JsonConverter<EventDateTimeModel?, google_api.EventDateTime?> {
  const EventDateTimeConverter();

  @override
  EventDateTimeModel? fromJson(google_api.EventDateTime? json) {
    return EventDateTimeModel(
      date: json?.date,
      dateTime: json?.dateTime,
      timeZone: json?.timeZone,
    );
  }

  @override
  google_api.EventDateTime? toJson(EventDateTimeModel? object) {
    return google_api.EventDateTime(
      date: object?.date,
      dateTime: object?.dateTime,
      timeZone: object?.timeZone,
    );
  }
}
