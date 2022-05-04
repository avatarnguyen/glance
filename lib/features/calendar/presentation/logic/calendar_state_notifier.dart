part of 'calendar_provider.dart';

/// Defines all the Calendar logic the app will use
class CalendarNotifier extends StateNotifier<CalendarState> {
  final GetCalendars _getCalendars;

  CalendarNotifier(Ref ref)
      : _getCalendars = ref.read(getCalendarsProvider),
        super(const CalendarState.initial());

  Future<void> getCalendars() async {
    state = const CalendarState.loading();
    final _result = await _getCalendars();
    _result.fold(
      (l) => state = const CalendarState.error(),
      (calendars) => state = CalendarState.loaded(calendars: calendars),
    );
  }
}
