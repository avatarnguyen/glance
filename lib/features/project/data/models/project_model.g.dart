// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FirebaseProjectModel _$$_FirebaseProjectModelFromJson(
        Map<String, dynamic> json) =>
    _$_FirebaseProjectModel(
      id: json['id'] as String?,
      title: json['title'] as String?,
      color: json['color'] as String?,
      description: json['description'] as String?,
      itemsCount: json['itemsCount'] as int?,
      linkedCalendarId: (json['linkedCalendarId'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$_FirebaseProjectModelToJson(
        _$_FirebaseProjectModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'color': instance.color,
      'description': instance.description,
      'itemsCount': instance.itemsCount,
      'linkedCalendarId': instance.linkedCalendarId,
    };
