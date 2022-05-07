part of 'dashboard_provider.dart';

class DashboardNotifier extends StateNotifier<DashboardState> {
  final GetEventsByDate _getEventsByDate;
  DashboardNotifier(GetEventsByDate getEventsByDate)
      : _getEventsByDate = getEventsByDate,
        super(const DashboardState.initial());

//TODO: handling recurrence event
  void getEventsByDate(DateTime dateTime) async {
    state = const DashboardState.loading();
    final _result = await _getEventsByDate(dateTime);
    state = _result.fold(
      (failure) => DashboardState.error(
        ErrorMessage.getErrorMessage(failure),
      ),
      (entries) => DashboardState(items: entries),
    );
  }
}
