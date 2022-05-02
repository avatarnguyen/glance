import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:glance/core/glance_core.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:dart_date/dart_date.dart';
import 'package:intl/intl.dart';

class CalendarCellWidget extends HookWidget {
  const CalendarCellWidget({
    Key? key,
    this.startDay,
    this.endDay,
    this.headerVisible,
    this.onDaySelected,
    this.rowHeight,
    this.rangeStart,
    this.rangeEnd,
    this.fullMonth,
  }) : super(key: key);

  final DateTime? startDay;
  final DateTime? endDay;
  final DateTime? rangeStart;
  final DateTime? rangeEnd;

  final bool? headerVisible;
  final bool? fullMonth;
  final double? rowHeight;
  final void Function(DateTime select, DateTime focus)? onDaySelected;

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);
    final today = DateTime.now();
    final firstDay = startDay ?? today.startOfMonth;
    final lastDay = endDay ?? today.endOfMonth;

    final _selectedDay = useState(today);
    final _accent4 = theme.colors.accent4;

    return TableCalendar(
      key: const Key('Single_Calender'),
      firstDay: firstDay,
      lastDay: lastDay,
      focusedDay: firstDay,
      currentDay: today,
      rangeStartDay: rangeStart,
      rangeEndDay: rangeEnd,
      calendarBuilders: CalendarBuilders(
        selectedBuilder: (_, date, events) {
          return Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: theme.colors.accent3,
                width: 1.5,
              ),
              shape: BoxShape.circle,
            ),
            alignment: Alignment.center,
            child: AppText.title4(
              date.day.toString(),
              color: theme.colors.accent3,
            ),
          );
        },
        defaultBuilder: (_, date, events) {
          return Container(
            alignment: Alignment.center,
            child: AppText.paragraph1(
              date.day.toString(),
              color: theme.colors.accent4,
            ),
          );
        },
        todayBuilder: (_, date, events) {
          return Container(
            alignment: Alignment.center,
            child: AppText.title4(
              date.day.toString(),
              color: theme.colors.accent1,
            ),
          );
        },
        dowBuilder: (context, day) {
          final text = DateFormat.E().format(day);
          return Center(
            child: AppText.paragraph2(
              text,
              color: theme.colors.accent2,
            ),
          );
        },
      ),
      headerStyle: HeaderStyle(
        titleTextStyle: theme.typography.title4.copyWith(
          color: theme.colors.accent2,
        ),
        leftChevronIcon: const AppIcon.small(FontAwesomeIcons.chevronLeft),
        rightChevronIcon: const AppIcon.small(FontAwesomeIcons.chevronRight),
        titleCentered: true,
        formatButtonVisible: false,
        // formatButtonTextStyle: theme.typography.title4.copyWith(
        //   color: theme.colors.accent2,
        // ),
      ),
      availableGestures: AvailableGestures.horizontalSwipe,
      headerVisible: headerVisible ?? false,
      daysOfWeekVisible: true,
      rowHeight: rowHeight ?? 36,
      calendarFormat:
          fullMonth == false ? CalendarFormat.twoWeeks : CalendarFormat.month,
      startingDayOfWeek: StartingDayOfWeek.monday,
      calendarStyle: CalendarStyle(
        defaultTextStyle: theme.typography.paragraph1.copyWith(
          color: _accent4,
        ),
        weekendTextStyle: theme.typography.paragraph1.copyWith(
          color: _accent4,
        ),
        todayTextStyle: theme.typography.paragraph1.copyWith(
          color: _accent4,
        ),
        selectedTextStyle: theme.typography.paragraph1.copyWith(
          color: _accent4,
        ),
        // todayDecoration: BoxDecoration(),
        outsideDaysVisible: false,
      ),
      pageAnimationEnabled: false,
      selectedDayPredicate: (day) => isSameDay(_selectedDay.value, day),
      onDaySelected: (selectedDay, focusedDay) {
        _selectedDay.value = selectedDay;
        onDaySelected?.call(selectedDay, focusedDay);
      },
      onPageChanged: (date) {
        log('$date');
      },
    );
  }
}
