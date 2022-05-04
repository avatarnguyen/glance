import 'package:freezed_annotation/freezed_annotation.dart';

part 'event_date_time_model.freezed.dart';
part 'event_date_time_model.g.dart';

@freezed
class EventDateTimeModel with _$EventDateTimeModel {
  factory EventDateTimeModel({
    DateTime? date,
    DateTime? dateTime,
    String? timeZone,
  }) = _EventDateTimeModel;

  factory EventDateTimeModel.fromJson(Map<String, dynamic> json) =>
      _$EventDateTimeModelFromJson(json);
}
