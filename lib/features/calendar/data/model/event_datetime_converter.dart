import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:glance/features/calendar/data/model/event_date_time.dart';

class EventDateTimeConverter
    implements JsonConverter<EventDateTime?, Map<String, dynamic>> {
  const EventDateTimeConverter();

  @override
  EventDateTime? fromJson(Map<String, dynamic> json) {
    return EventDateTime.fromJson(json);
  }

  @override
  Map<String, dynamic> toJson(EventDateTime? object) {
    if (object != null) {
      return object.toJson();
    } else {
      return {
        'date': null,
        'dateTime': null,
        'timeZone': null,
      };
    }
  }
}
