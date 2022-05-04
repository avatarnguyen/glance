part of 'calendar_provider.dart';

/// Defines all the Calendar logic the app will use
class CalendarNotifier extends StateNotifier<CalendarState> {
  final GetCalendarEvents _getCalendarEvents;

  CalendarNotifier(Ref ref)
      : _getCalendarEvents = ref.read(getCalendarEventsProvider),
        super(const CalendarState.initial());

  Future<void> getCalendarEvents() async {
    state = const CalendarState.loading();
    const _queryParams = CalendarEventParams();
    final _result = await _getCalendarEvents(_queryParams);
    _result.fold(
      (failure) => state = CalendarState.error(
        ErrorMessage.getErrorMessage(failure),
      ),
      (events) => state = CalendarState.loaded(calendarEvents: events),
    );
  }
}
