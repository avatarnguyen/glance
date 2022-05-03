import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:glance/features/calendar/domain/entity/calendar.dart';

part 'google_calendar_model.freezed.dart';
part 'google_calendar_model.g.dart';

@freezed
class GoogleCalendarModel with _$GoogleCalendarModel {
  const GoogleCalendarModel._();

  factory GoogleCalendarModel({
    String? id,
    String? name,
    String? backgroundColor,
    String? foregroundColor,
    String? accountName,
    bool? isDefault,
    bool? selected,
    bool? deleted,
    String? timeZone,
  }) = _GoogleCalendarModel;

  Calendar toEntity() {
    return Calendar(
      id: id,
      name: name,
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
