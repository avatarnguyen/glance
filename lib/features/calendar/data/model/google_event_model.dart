import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:glance/features/calendar/data/model/event_date_time.dart';
import 'package:glance/features/calendar/data/model/event_datetime_converter.dart';
import 'package:glance/features/calendar/domain/entity/event.dart';

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
    String? calendarId,
    String? recurringEventId,
    List<String>? recurrence,
    @EventDateTimeConverter() EventDateTime? originalStartTime,
    @EventDateTimeConverter() EventDateTime? start,
    @EventDateTimeConverter() EventDateTime? end,
    String? organizer,
  }) = _EventModel;

  factory GoogleEventModel.fromEntity(Event eventEntity) {
    return GoogleEventModel(
      id: eventEntity.id,
      title: eventEntity.title,
      description: eventEntity.description,
      colorId: eventEntity.colorId,
      calendarId: eventEntity.calendarId,
      recurringEventId: eventEntity.recurringEventId,
      recurrence: eventEntity.recurrence,
      originalStartTime: EventDateTime(dateTime: eventEntity.originalStartTime),
      start: eventEntity.allDay == true
          ? EventDateTime(date: eventEntity.start)
          : EventDateTime(dateTime: eventEntity.start),
      end: eventEntity.allDay == true
          ? EventDateTime(date: eventEntity.end)
          : EventDateTime(dateTime: eventEntity.end),
      organizer: eventEntity.organizer,
    );
  }

  Event toEntity(GoogleEventModel model) {
    final _isAllDay = model.start?.date != null && model.end?.date != null;
    return Event(
      id: model.id,
      title: model.title,
      description: model.description,
      colorId: model.colorId,
      calendarId: model.calendarId,
      recurringEventId: model.recurringEventId,
      recurrence: model.recurrence,
      originalStartTime: model.originalStartTime?.dateTime,
      start: _isAllDay ? model.start?.date : model.start?.dateTime,
      end: _isAllDay ? model.end?.date : model.end?.dateTime,
      allDay: _isAllDay,
      organizer: model.organizer,
      timeZone: model.start?.timeZone,
    );
  }

  factory GoogleEventModel.fromJson(Map<String, dynamic> json) =>
      _$GoogleEventModelFromJson(json);
}
