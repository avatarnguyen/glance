import 'package:freezed_annotation/freezed_annotation.dart';

part 'calendar_event.freezed.dart';

@freezed
class CalendarEvent with _$CalendarEvent {
  factory CalendarEvent({
    String? id,
    String? title,
    String? description,
    String? colorId,
    String? backgroundColor,
    String? foregroundColor,
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
  }) = _CalendarEvent;
}
