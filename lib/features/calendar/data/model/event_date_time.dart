import 'package:freezed_annotation/freezed_annotation.dart';

part 'event_date_time.freezed.dart';
part 'event_date_time.g.dart';

@freezed
class EventDateTime with _$EventDateTime {
  factory EventDateTime({
    DateTime? date,
    DateTime? dateTime,
    String? timeZone,
  }) = _EventDateTime;

  factory EventDateTime.fromJson(Map<String, dynamic> json) =>
      _$EventDateTimeFromJson(json);
}
