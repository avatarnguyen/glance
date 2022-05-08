import 'package:dartx/dartx.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:glance/core/glance_core.dart';
import 'package:glance/features/calendar/presentation/widgets/calendar_cell_widget.dart';
import 'package:dart_date/dart_date.dart';
import 'package:glance/features/create/presentation/logic/create_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:http/http.dart';

enum DatePickerMode {
  timeRange,
  allDay,
  multipleDay,
}

class DatePickerBottomsheet extends StatefulHookConsumerWidget {
  const DatePickerBottomsheet({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _DatePickerBottomsheetState();
}

class _DatePickerBottomsheetState extends ConsumerState<DatePickerBottomsheet> {
  final today = DateTime.now();
  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);
    final _endDay = today.setMonth(today.month + 3);
    final _pageControler = usePageController();
    final _selectedIndex = useState(0);
    final _mode = useState(DatePickerMode.timeRange);

    final buttonColor = theme.colors.textAccent;
    final inActiveButtonColor = theme.colors.secondary;
    final datePickerTextTheme = CupertinoTextThemeData(
      dateTimePickerTextStyle: theme.typography.title3.copyWith(
        color: theme.colors.textAccent,
      ),
    );
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            AppTextButton.regular(
              data: "Time Range",
              color: _mode.value == DatePickerMode.timeRange
                  ? buttonColor
                  : inActiveButtonColor,
              onPressed: () {
                _mode.value = DatePickerMode.timeRange;
                _selectedIndex.value = 0;
              },
            ),
            AppTextButton.regular(
              data: "All day",
              color: _mode.value == DatePickerMode.allDay
                  ? buttonColor
                  : inActiveButtonColor,
              onPressed: () {
                _mode.value = DatePickerMode.allDay;
              },
            ),
            AppTextButton.regular(
              data: "Multiple Day",
              color: _mode.value == DatePickerMode.multipleDay
                  ? buttonColor
                  : inActiveButtonColor,
              onPressed: () {
                _mode.value = DatePickerMode.multipleDay;
              },
            ),
          ],
        ),
        const AppGap.small(),
        if (_mode.value == DatePickerMode.allDay) ...[
          CalendarCellWidget(
            key: const Key('one_day_selection'),
            headerVisible: true,
            rowHeight: 30,
            startDay: today.startOfMonth,
            endDay: _endDay.endOfMonth,
            onDaySelected: onAllDaySelected,
          ),
          const AppGap.big(),
        ],
        if (_mode.value == DatePickerMode.multipleDay) ...[
          CalendarCellWidget(
            key: const Key('multiple_day_selection'),
            headerVisible: true,
            rowHeight: 30,
            // rangeStart: 1.days.fromNow,
            // rangeEnd: today.setDay(today.day + 2),
            startDay: today.startOfMonth,
            endDay: _endDay.endOfMonth,
            onDayRangeSelected: onDayRangeChange,
          ),
          const AppGap.big(),
        ],
        if (_mode.value == DatePickerMode.timeRange) ...[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              AppTextButton.regular(
                data: 'Start',
                color: _selectedIndex.value == 0
                    ? buttonColor
                    : inActiveButtonColor,
                onPressed: () {
                  _pageControler.animateToPage(
                    0,
                    duration: 500.milliseconds,
                    curve: Curves.easeInOut,
                  );
                },
              ),
              AppTextButton.regular(
                data: 'End',
                color: _selectedIndex.value == 1
                    ? buttonColor
                    : inActiveButtonColor,
                onPressed: () {
                  _pageControler.animateToPage(
                    1,
                    duration: 500.milliseconds,
                    curve: Curves.easeInOut,
                  );
                },
              ),
            ],
          ),
          PageView(
            controller: _pageControler,
            scrollDirection: Axis.horizontal,
            onPageChanged: (index) {
              _selectedIndex.value = index;
            },
            children: [
              Column(
                children: [
                  CalendarCellWidget(
                    headerVisible: true,
                    fullMonth: false,
                    rowHeight: 30,
                    startDay: today.startOfMonth,
                    endDay: _endDay.endOfMonth,
                    onDaySelected: (select) {
                      onStartDateTimeChange(date: select);
                    },
                  ),
                  SizedBox(
                    child: CupertinoTheme(
                      data: CupertinoThemeData(
                        textTheme: datePickerTextTheme,
                      ),
                      child: CupertinoDatePicker(
                        key: const Key('StartTimePicker'),
                        use24hFormat:
                            MediaQuery.of(context).alwaysUse24HourFormat,
                        mode: CupertinoDatePickerMode.time,
                        initialDateTime: DateTime.now(),
                        onDateTimeChanged: (time) =>
                            onStartDateTimeChange(time: time),
                      ),
                    ),
                  ).expanded(),
                ],
              ),
              Column(
                children: [
                  CalendarCellWidget(
                    headerVisible: true,
                    fullMonth: false,
                    rowHeight: 30,
                    startDay: today.startOfMonth,
                    endDay: _endDay.endOfMonth,
                    onDaySelected: (select) {
                      onEndDateTimeChange(date: select);
                    },
                  ),
                  SizedBox(
                    child: CupertinoTheme(
                      data: CupertinoThemeData(
                        textTheme: datePickerTextTheme,
                      ),
                      child: CupertinoDatePicker(
                        key: const Key('EndTimePicker'),
                        use24hFormat:
                            MediaQuery.of(context).alwaysUse24HourFormat,
                        mode: CupertinoDatePickerMode.time,
                        initialDateTime: DateTime.now(),
                        onDateTimeChanged: (time) =>
                            onEndDateTimeChange(time: time),
                      ),
                    ),
                  ).expanded(),
                ],
              ),
            ],
          ).expanded(),
        ],
        Padding(
          padding: EdgeInsets.only(
            top: theme.spacing.small,
            bottom: theme.spacing.semiSmall,
          ),
          child: Row(
            children: [
              AppFilledButton.big(
                radius: theme.radius.regular.x,
                data: 'Save',
                onPressed: () {},
              ).expanded(),
            ],
          ),
        ),
      ],
    );
  }

  void onAllDaySelected(selectedDate) {
    debugPrint('Change DateTime AllDay: $selectedDate');
    ref.read(createNotifierProvider.notifier).changeAllDay(true);
    ref.read(createNotifierProvider.notifier).changeStartDateTime(selectedDate);
    ref.read(createNotifierProvider.notifier).changeEndDateTime(selectedDate);
  }

  void onDayRangeChange(DateTime? start, DateTime? end) {
    debugPrint('Change DateTime Range : $start - $end');
    ref.read(createNotifierProvider.notifier).changeAllDay(true);
    if (start != null) {
      ref.read(createNotifierProvider.notifier).changeStartDateTime(start);
    }
    if (end != null) {
      ref.read(createNotifierProvider.notifier).changeEndDateTime(end);
    }
  }

  void onStartDateTimeChange({DateTime? date, DateTime? time}) {
    ref.read(createNotifierProvider.notifier).changeAllDay(false);
    debugPrint('Change DateTime to: $date - $time');
    DateTime? _currentDateTime = ref.read(createNotifierProvider).start;
    if (date != null) {
      _currentDateTime = _currentDateTime?.copyWith(
          year: date.year, month: date.month, day: date.day);
    }
    if (time != null) {
      _currentDateTime = _currentDateTime?.copyWith(
          hour: time.hour, minute: time.minute, second: time.second);
    }
    ref
        .read(createNotifierProvider.notifier)
        .changeStartDateTime(_currentDateTime ?? date ?? time ?? today);
  }

  void onEndDateTimeChange({DateTime? date, DateTime? time}) {
    debugPrint('Change End DateTime to: $date - $time');
    ref.read(createNotifierProvider.notifier).changeAllDay(false);
    DateTime _currentDateTime = ref.read(createNotifierProvider).end ?? today;

    if (date != null) {
      _currentDateTime = _currentDateTime.copyWith(
          year: date.year, month: date.month, day: date.day);
    }
    if (time != null) {
      _currentDateTime = _currentDateTime.copyWith(
          hour: time.hour, minute: time.minute, second: time.second);
    }
    ref
        .read(createNotifierProvider.notifier)
        .changeEndDateTime(_currentDateTime);
  }
}
