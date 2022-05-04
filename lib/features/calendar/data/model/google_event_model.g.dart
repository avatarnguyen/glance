// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'google_event_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GoogleEventModel _$$_GoogleEventModelFromJson(Map<String, dynamic> json) =>
    _$_GoogleEventModel(
      id: json['id'] as String?,
      title: json['summary'] as String?,
      description: json['description'] as String?,
      colorId: json['colorId'] as String?,
      backgroundColor: json['backgroundColor'] as String?,
      foregroundColor: json['foregroundColor'] as String?,
      calendarId: json['calendarId'] as String?,
      recurringEventId: json['recurringEventId'] as String?,
      recurrence: (json['recurrence'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      originalStartTime: const EventDateTimeConverter()
          .fromJson(json['originalStartTime'] as EventDateTime?),
      start: const EventDateTimeConverter()
          .fromJson(json['start'] as EventDateTime?),
      end: const EventDateTimeConverter()
          .fromJson(json['end'] as EventDateTime?),
      organizerName: const EventOrganizerConverter()
          .fromJson(json['organizer'] as EventOrganizer?),
    );

Map<String, dynamic> _$$_GoogleEventModelToJson(_$_GoogleEventModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'summary': instance.title,
      'description': instance.description,
      'colorId': instance.colorId,
      'backgroundColor': instance.backgroundColor,
      'foregroundColor': instance.foregroundColor,
      'calendarId': instance.calendarId,
      'recurringEventId': instance.recurringEventId,
      'recurrence': instance.recurrence,
      'originalStartTime':
          const EventDateTimeConverter().toJson(instance.originalStartTime),
      'start': const EventDateTimeConverter().toJson(instance.start),
      'end': const EventDateTimeConverter().toJson(instance.end),
      'organizer':
          const EventOrganizerConverter().toJson(instance.organizerName),
    };
