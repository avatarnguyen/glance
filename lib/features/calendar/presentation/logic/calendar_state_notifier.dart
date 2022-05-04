part of 'calendar_provider.dart';

/// Defines all the Calendar logic the app will use
class CalendarNotifier extends StateNotifier<CalendarState> {
  final GetCalendarEvents _getCalendarEvents;
  final _log = logger(CalendarNotifier);

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
        final _eventsAfterApplyRecurringRule = events.map((event) {
          // _log.v(event.recurrenceRule);
          if (event.recurrenceRule?.isNotEmpty == true) {
            //TODO: change code to work with multiple rrule later
            final _rrule = event.recurrenceRule!.first;
            final _recurringEventInstances = _rrule.getInstances(
              start: event.start!.toUtc(),
              before: DateTime(DateTime.now().year, 12, 31).toUtc(),
              includeBefore: true,
            );
            _log.v('Recurring Instances: ${_recurringEventInstances.toList()}');
            final _recurringEventForThisYear = _recurringEventInstances
                .where(
                  (instance) => instance.year == DateTime.now().year,
                )
                .toList();

            return event.copyWith(
              start: _recurringEventForThisYear.isNotEmpty
                  ? _recurringEventForThisYear.first.toLocal()
                  : event.start,
            );
          }
          return event;
        }).toList();

        _eventsAfterApplyRecurringRule.sort(
          ((eventA, eventB) =>
              (eventA.start?.isBefore(eventB.start!) == true) ? -1 : 1),
        );
        return state = CalendarState.loaded(
          calendarEvents: _eventsAfterApplyRecurringRule,
        );
      },
    );
  }
}
