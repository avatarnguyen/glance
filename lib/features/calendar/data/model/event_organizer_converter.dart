import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:googleapis/calendar/v3.dart';

class EventOrganizerConverter
    implements JsonConverter<String?, EventOrganizer?> {
  const EventOrganizerConverter();

  @override
  String? fromJson(EventOrganizer? json) {
    return json?.displayName;
  }

  @override
  EventOrganizer? toJson(String? object) {
    return EventOrganizer(displayName: object);
  }
}
