import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:glance/core/glance_core.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:dart_date/dart_date.dart';
import 'package:intl/intl.dart';

class CalendarCellWidget extends HookWidget {
  const CalendarCellWidget({
    Key? key,
    this.startDay,
    this.endDay,
    this.onDaySelected,
  }) : super(key: key);

  final DateTime? startDay;
  final DateTime? endDay;
  final void Function(DateTime select, DateTime focus)? onDaySelected;

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);
    final today = DateTime.now();
    final firstDay = startDay ?? today.startOfMonth;
    final lastDay = endDay ?? today.endOfMonth;

    final _selectedDay = useState(today);

    return TableCalendar(
      key: const Key('Single_Calender'),
      firstDay: firstDay,
      lastDay: lastDay,
      focusedDay: firstDay,
      currentDay: today,
      calendarBuilders: CalendarBuilders(
        selectedBuilder: (_, date, events) {
          return Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: theme.colors.primary1,
                width: 1.5,
              ),
              shape: BoxShape.circle,
            ),
            alignment: Alignment.center,
            child: AppText.title4(
              date.day.toString(),
              color: theme.colors.primary1,
            ),
          );
        },
        defaultBuilder: (_, date, events) {
          return Container(
            alignment: Alignment.center,
            child: AppText.paragraph1(
              date.day.toString(),
              color: theme.colors.primary4,
            ),
          );
        },
        todayBuilder: (_, date, events) {
          return Container(
            alignment: Alignment.center,
            child: AppText.title4(
              date.day.toString(),
              color: theme.colors.primary1,
            ),
          );
        },
        dowBuilder: (context, day) {
          final text = DateFormat.E().format(day);
          return Center(
            child: AppText.paragraph2(
              text,
              color: theme.colors.primary2,
            ),
          );
        },
      ),
      availableGestures: AvailableGestures.horizontalSwipe,
      headerVisible: false,
      daysOfWeekVisible: true,
      rowHeight: 36,
      calendarFormat: CalendarFormat.month,
      startingDayOfWeek: StartingDayOfWeek.monday,
      calendarStyle: CalendarStyle(
        defaultTextStyle: theme.typography.paragraph1.copyWith(
          color: theme.colors.primary4,
        ),
        weekendTextStyle: theme.typography.paragraph1.copyWith(
          color: theme.colors.primary4,
        ),
        todayTextStyle: theme.typography.paragraph1.copyWith(
          color: theme.colors.primary4,
        ),
        selectedTextStyle: theme.typography.paragraph1.copyWith(
          color: theme.colors.primary4,
        ),
        // todayDecoration: BoxDecoration(),
        outsideDaysVisible: false,
      ),
      pageAnimationEnabled: false,
      selectedDayPredicate: (day) => isSameDay(_selectedDay.value, day),
      onDaySelected: (selectedDay, focusedDay) {
        print(selectedDay);
        _selectedDay.value = selectedDay;
        onDaySelected?.call(selectedDay, focusedDay);
      },
    );
  }
}
