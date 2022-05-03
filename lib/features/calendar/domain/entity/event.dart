import 'package:freezed_annotation/freezed_annotation.dart';

part 'event.freezed.dart';

@freezed
class Event with _$Event {
  factory Event({
    String? id,
    String? title,
    String? description,
    String? colorId,
    String? calendarId,
    String? recurringEventId,
    List<String>? recurrence,
    DateTime? originalStartTime,
    // should be in  "yyyy-mm-dd" format if this is an all-day event
    DateTime? start,
    DateTime? end,
    bool? allDay,
    String? organizer,
    String? timeZone,
  }) = _Event;
}
