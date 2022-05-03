// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'google_event_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EventModel _$$_EventModelFromJson(Map<String, dynamic> json) =>
    _$_EventModel(
      id: json['id'] as String?,
      title: json['summary'] as String?,
      description: json['description'] as String?,
      colorId: json['colorId'] as String?,
      calendarId: json['calendarId'] as String?,
      recurringEventId: json['recurringEventId'] as String?,
      recurrence: (json['recurrence'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      originalStartTime: const EventDateTimeConverter()
          .fromJson(json['originalStartTime'] as Map<String, dynamic>),
      start: const EventDateTimeConverter()
          .fromJson(json['start'] as Map<String, dynamic>),
      end: const EventDateTimeConverter()
          .fromJson(json['end'] as Map<String, dynamic>),
      organizer: json['organizer'] as String?,
    );

Map<String, dynamic> _$$_EventModelToJson(_$_EventModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'summary': instance.title,
      'description': instance.description,
      'colorId': instance.colorId,
      'calendarId': instance.calendarId,
      'recurringEventId': instance.recurringEventId,
      'recurrence': instance.recurrence,
      'originalStartTime':
          const EventDateTimeConverter().toJson(instance.originalStartTime),
      'start': const EventDateTimeConverter().toJson(instance.start),
      'end': const EventDateTimeConverter().toJson(instance.end),
      'organizer': instance.organizer,
    };
