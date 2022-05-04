import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:glance/features/calendar/domain/entity/calendar.dart';

part 'calendar_state.freezed.dart';

@freezed
abstract class CalendarState with _$CalendarState {
  /// Data is present state
  const factory CalendarState.loaded({
    required List<Calendar> calendars,
  }) = Data;

  /// Initial/default state
  const factory CalendarState.initial() = Initial;

  /// Data is loading state
  const factory CalendarState.loading() = Loading;

  /// Error when loading data state
  const factory CalendarState.error([String? message]) = Error;
}
