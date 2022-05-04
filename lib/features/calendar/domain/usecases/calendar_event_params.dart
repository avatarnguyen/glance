import 'package:equatable/equatable.dart';
import 'package:glance/features/calendar/domain/entity/calendar_event.dart';

class CalendarEventParams extends Equatable {
  final CalendarEvent? event;
  final DateTime? start;
  final DateTime? end;

  const CalendarEventParams({
    this.event,
    this.start,
    this.end,
  });
  @override
  List<Object?> get props => [event, start, end];
}
