import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:glance/features/calendar/domain/entity/calendar.dart';

part 'google_calendar_model.freezed.dart';
part 'google_calendar_model.g.dart';

// ignore_for_file: invalid_annotation_target
@freezed
class GoogleCalendarModel with _$GoogleCalendarModel {
  const GoogleCalendarModel._();

  factory GoogleCalendarModel({
    String? id,
    @JsonKey(name: 'summary') String? name,
    String? description,
    String? backgroundColor,
    String? foregroundColor,
    String? accountName,
    @JsonKey(name: 'primary') bool? isDefault,
    @Default(false) bool? selected,
    bool? deleted,
    String? timeZone,
  }) = _GoogleCalendarModel;

  Calendar toEntity() {
    return Calendar(
      id: id,
      name: name,
      description: description,
      backgroundColor: backgroundColor,
      foregroundColor: foregroundColor,
      accountName: accountName,
      isDefault: isDefault,
      selected: selected,
      deleted: deleted,
      timeZone: timeZone,
    );
  }

  GoogleCalendarModel fromEntity(Calendar calendar) {
    return GoogleCalendarModel(
      id: calendar.id,
      name: calendar.name,
      description: calendar.description,
      backgroundColor: calendar.backgroundColor,
      foregroundColor: calendar.foregroundColor,
      accountName: calendar.accountName,
      isDefault: calendar.isDefault,
      selected: calendar.selected,
      deleted: calendar.deleted,
      timeZone: calendar.timeZone,
    );
  }

  factory GoogleCalendarModel.fromJson(Map<String, dynamic> json) =>
      _$GoogleCalendarModelFromJson(json);
}
