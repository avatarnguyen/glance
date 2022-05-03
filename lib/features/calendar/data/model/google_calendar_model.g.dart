// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'google_calendar_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GoogleCalendarModel _$$_GoogleCalendarModelFromJson(
        Map<String, dynamic> json) =>
    _$_GoogleCalendarModel(
      id: json['id'] as String?,
      name: json['name'] as String?,
      backgroundColor: json['backgroundColor'] as String?,
      foregroundColor: json['foregroundColor'] as String?,
      accountName: json['accountName'] as String?,
      isDefault: json['isDefault'] as bool?,
      selected: json['selected'] as bool?,
      deleted: json['deleted'] as bool?,
      timeZone: json['timeZone'] as String?,
    );

Map<String, dynamic> _$$_GoogleCalendarModelToJson(
        _$_GoogleCalendarModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'backgroundColor': instance.backgroundColor,
      'foregroundColor': instance.foregroundColor,
      'accountName': instance.accountName,
      'isDefault': instance.isDefault,
      'selected': instance.selected,
      'deleted': instance.deleted,
      'timeZone': instance.timeZone,
    };
