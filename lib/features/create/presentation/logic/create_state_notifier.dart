part of 'create_provider.dart';

class CreateNotifier extends StateNotifier<CreateState> {
  final CreateTask _createTask;
  final CreateEvent _createEvent;
  CreateNotifier(Ref ref)
      : _createEvent = ref.read(createEventProvider),
        _createTask = ref.read(createTaskProvider),
        super(const CreateState(type: CreateItemType.event));

  final _log = logger(CreateNotifier);
  void changeID(String id) => state = state.copyWith(id: id);
  void changeType(CreateItemType type) => state = state.copyWith(type: type);
  void changeTitle(String title) => state = state.copyWith(title: title);
  void changeDescription(String text) =>
      state = state.copyWith(description: text);

  void changeStartDateTime(DateTime dateTime) =>
      state = state.copyWith(start: dateTime);

  void changeEndDateTime(DateTime dateTime) =>
      state = state.copyWith(end: dateTime);
  void changeAllDay(bool isAllDay) => state = state.copyWith(allDay: isAllDay);

  void changeRelatedProjectID(String id) => state = state.copyWith(
        relatedProjectID: id,
      );
  void changeRelatedCalendarID(String id) => state = state.copyWith(
        relatedCalendarID: id,
      );
  void changeBackgroundColor(String color) =>
      state = state.copyWith(backgroundColor: color);
  void changeForegroundColor(String color) =>
      state = state.copyWith(foregroundColor: color);
  void changeRecurrenceRule(List<RecurrenceRule> rules) =>
      state = state.copyWith(recurrenceRule: rules);

  Future<void> submit() async {
    if (state.type == CreateItemType.task) {
      _log.i('Submit New Task: $state');
      // await _createTask(state);
    } else if (state.type == CreateItemType.event) {
      _log.i('Submit New Event: $state');
      // await _createEvent(state);
    } else if (state.type == CreateItemType.project) {
      _log.i('Submit New Project: $state');
    } else {
      _log.e('Type Undefined');
    }
  }
}
