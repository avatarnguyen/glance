// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'google_calendar_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GoogleCalendarModel _$$_GoogleCalendarModelFromJson(
        Map<String, dynamic> json) =>
    _$_GoogleCalendarModel(
      id: json['id'] as String?,
      name: json['summary'] as String?,
      description: json['description'] as String?,
      backgroundColor: json['backgroundColor'] as String?,
      foregroundColor: json['foregroundColor'] as String?,
      accountName: json['accountName'] as String?,
      isDefault: json['primary'] as bool?,
      selected: json['selected'] as bool? ?? false,
      deleted: json['deleted'] as bool?,
      timeZone: json['timeZone'] as String?,
    );

Map<String, dynamic> _$$_GoogleCalendarModelToJson(
        _$_GoogleCalendarModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'summary': instance.name,
      'description': instance.description,
      'backgroundColor': instance.backgroundColor,
      'foregroundColor': instance.foregroundColor,
      'accountName': instance.accountName,
      'primary': instance.isDefault,
      'selected': instance.selected,
      'deleted': instance.deleted,
      'timeZone': instance.timeZone,
    };
