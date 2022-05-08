import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rrule/rrule.dart';

part 'create_state.freezed.dart';

enum CreateItemType {
  task,
  event,
  project,
}

@freezed
abstract class CreateState with _$CreateState {
  const factory CreateState({
    String? id,
    String? title,
    String? description,
    required CreateItemType type,
    String? relatedProjectID,
    String? relatedCalendarID,
    DateTime? start,
    DateTime? end,
    bool? allDay,
    String? backgroundColor,
    String? foregroundColor,
    String? recurringEventId,
    List<RecurrenceRule>? recurrenceRule,
  }) = _CreateData;
}
