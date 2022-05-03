// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_date_time.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EventDateTime _$$_EventDateTimeFromJson(Map<String, dynamic> json) =>
    _$_EventDateTime(
      date:
          json['date'] == null ? null : DateTime.parse(json['date'] as String),
      dateTime: json['dateTime'] == null
          ? null
          : DateTime.parse(json['dateTime'] as String),
      timeZone: json['timeZone'] as String?,
    );

Map<String, dynamic> _$$_EventDateTimeToJson(_$_EventDateTime instance) =>
    <String, dynamic>{
      'date': instance.date?.toIso8601String(),
      'dateTime': instance.dateTime?.toIso8601String(),
      'timeZone': instance.timeZone,
    };
