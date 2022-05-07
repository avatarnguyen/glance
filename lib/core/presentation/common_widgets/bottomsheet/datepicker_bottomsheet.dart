import 'package:dartx/dartx.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:glance/core/glance_core.dart';
import 'package:glance/features/calendar/presentation/widgets/calendar_cell_widget.dart';
import 'package:dart_date/dart_date.dart';

enum DatePickerMode {
  timeRange,
  allDay,
  multipleDay,
}

class DatePickerBottomsheet extends HookWidget {
  const DatePickerBottomsheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);
    final today = DateTime.now();
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
        if (_mode.value == DatePickerMode.allDay ||
            _mode.value == DatePickerMode.multipleDay) ...[
          CalendarCellWidget(
            headerVisible: true,
            rowHeight: 30,
            // rangeStart: 1.days.fromNow,
            // rangeEnd: today.setDay(today.day + 2),
            startDay: today.startOfMonth,
            endDay: _endDay.endOfMonth,
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
                        onDateTimeChanged: onDateTimeChanged,
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
                        onDateTimeChanged: onDateTimeChanged,
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

  void onDateTimeChanged(DateTime time) {
    debugPrint('Change DateTime to: $time');
  }
}
