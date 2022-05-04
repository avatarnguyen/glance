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
      (events) {
        final _sortedEvents = events
          ..sort(
            ((eventA, eventB) =>
                (eventA.start?.isBefore(eventB.start!) == true) ? -1 : 1),
          );
        return state = CalendarState.loaded(calendarEvents: _sortedEvents);
      },
    );
  }
}
