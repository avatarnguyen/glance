import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:glance/features/calendar/data/model/event_date_time_model.dart';
import 'package:glance/features/calendar/data/model/event_datetime_converter.dart';
import 'package:glance/features/calendar/data/model/event_organizer_converter.dart';
import 'package:glance/features/calendar/domain/entity/calendar_event.dart';
import 'package:googleapis/calendar/v3.dart';
import 'package:rrule/rrule.dart';

// ignore_for_file: invalid_annotation_target
part 'google_event_model.freezed.dart';
part 'google_event_model.g.dart';

@freezed
class GoogleEventModel with _$GoogleEventModel {
  const GoogleEventModel._();

  factory GoogleEventModel({
    String? id,
    @JsonKey(name: 'summary') String? title,
    String? description,
    String? colorId,
    String? backgroundColor,
    String? foregroundColor,
    String? calendarId,
    String? recurringEventId,
    List<String>? recurrence,
    @EventDateTimeConverter() EventDateTimeModel? originalStartTime,
    @EventDateTimeConverter() EventDateTimeModel? start,
    @EventDateTimeConverter() EventDateTimeModel? end,
    @EventOrganizerConverter()
    @JsonKey(name: 'organizer')
        String? organizerName,
  }) = _GoogleEventModel;

  factory GoogleEventModel.fromEntity(CalendarEvent eventEntity) {
    return GoogleEventModel(
      id: eventEntity.id,
      title: eventEntity.title,
      description: eventEntity.description,
      colorId: eventEntity.colorId,
      backgroundColor: eventEntity.backgroundColor,
      foregroundColor: eventEntity.foregroundColor,
      calendarId: eventEntity.calendarId,
      recurringEventId: eventEntity.recurringEventId,
      recurrence: eventEntity.recurrenceRule != null
          ? eventEntity.recurrenceRule!.map((rule) => rule.toString()).toList()
          : null,
      originalStartTime:
          EventDateTimeModel(dateTime: eventEntity.originalStartTime),
      start: eventEntity.allDay == true
          ? EventDateTimeModel(date: eventEntity.start)
          : EventDateTimeModel(dateTime: eventEntity.start),
      end: eventEntity.allDay == true
          ? EventDateTimeModel(date: eventEntity.end)
          : EventDateTimeModel(dateTime: eventEntity.end),
      organizerName: eventEntity.organizer,
    );
  }

  CalendarEvent toEntity() {
    final _isAllDay = start?.date != null && end?.date != null;
    return CalendarEvent(
      id: id,
      title: title,
      description: description,
      colorId: colorId,
      backgroundColor: backgroundColor,
      foregroundColor: foregroundColor,
      calendarId: calendarId,
      recurringEventId: recurringEventId,
      recurrenceRule: recurrence != null
          ? recurrence!.map((rule) => RecurrenceRule.fromString(rule)).toList()
          : null,
      originalStartTime: originalStartTime?.dateTime,
      start: _isAllDay ? start?.date : start?.dateTime,
      end: _isAllDay ? end?.date : end?.dateTime,
      allDay: _isAllDay,
      organizer: organizerName,
      timeZone: start?.timeZone,
    );
  }

  factory GoogleEventModel.fromJson(Map<String, dynamic> json) =>
      _$GoogleEventModelFromJson(json);
}
