import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:glance/core/glance_core.dart';
import 'package:glance/core/styles/theme/app_theme_data.dart';
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
    this.foregroundColor,
    this.onDayRangeSelected,
  }) : super(key: key);

  final DateTime? startDay;
  final DateTime? endDay;
  final DateTime? rangeStart;
  final DateTime? rangeEnd;

  final Color? foregroundColor;
  final bool? headerVisible;
  final bool? fullMonth;
  final double? rowHeight;
  final void Function(DateTime selected)? onDaySelected;
  final void Function(DateTime? selectedStart, DateTime? selectedEnd)?
      onDayRangeSelected;

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);
    final today = DateTime.now();
    final firstDay = startDay ?? today.startOfMonth;
    final lastDay = endDay ?? today.endOfMonth;

    final _selectedDay = useState(today);
    final _rangeStart = useState(rangeStart);
    final _rangeEnd = useState(rangeEnd);
    final _foregroundColor = foregroundColor ?? theme.colors.textAccent;

    return TableCalendar(
      key: key ?? const Key('Single_Calender'),
      firstDay: firstDay,
      lastDay: lastDay,
      focusedDay: firstDay,
      currentDay: today,
      rangeStartDay: _rangeStart.value,
      rangeEndDay: _rangeEnd.value,
      calendarBuilders: CalendarBuilders(
        selectedBuilder: (_, date, events) {
          return Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: theme.colors.secondary,
                width: 1.5,
              ),
              shape: BoxShape.circle,
            ),
            alignment: Alignment.center,
            child: AppText.title4(
              date.day.toString(),
              color: theme.colors.textAccent,
            ),
          );
        },
        defaultBuilder: (_, date, events) => Container(
          alignment: Alignment.center,
          child: AppText.title4(
            date.day.toString(),
            color: _foregroundColor,
          ),
        ),
        todayBuilder: (_, date, events) {
          return Container(
            alignment: Alignment.center,
            child: AppText.title3(
              date.day.toString(),
              color: glancePrimarySwatch.shade900,
            ),
          );
        },
        disabledBuilder: (_, date, events) {
          return Container(
            alignment: Alignment.center,
            child: AppText.paragraph2(
              date.day.toString(),
              color: _foregroundColor,
            ),
          );
        },
        outsideBuilder: (context, day, _) {
          final text = DateFormat.E().format(day);
          return Center(
            child: AppText.paragraph2(
              text,
              color: _foregroundColor,
            ),
          );
        },
        dowBuilder: (context, day) {
          final text = DateFormat.E().format(day);
          return Center(
            child: AppText.paragraph1(
              text,
              color: _foregroundColor,
            ),
          );
        },
        //   rangeStartBuilder: (_, start, end) => Container(
        //     alignment: Alignment.center,
        //     child: AppText.title4(
        //       start.day.toString(),
        //       // color: _foregroundColor,
        //     ),
        //   ),
      ),
      headerStyle: HeaderStyle(
        titleTextStyle: theme.typography.title4.copyWith(
          color: _foregroundColor,
        ),
        leftChevronIcon: const AppIcon.small(FontAwesomeIcons.chevronLeft),
        rightChevronIcon: const AppIcon.small(FontAwesomeIcons.chevronRight),
        titleCentered: true,
        formatButtonVisible: false,
        // formatButtonTextStyle: theme.typography.title4.copyWith(
        //   color: theme.colors.accent,
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
          color: _foregroundColor,
        ),
        weekendTextStyle: theme.typography.paragraph1.copyWith(
          color: _foregroundColor,
        ),
        todayTextStyle: theme.typography.paragraph1.copyWith(
          color: _foregroundColor,
        ),
        selectedTextStyle: theme.typography.paragraph1.copyWith(
          color: _foregroundColor,
        ),
        // todayDecoration: BoxDecoration(),
        outsideDaysVisible: false,
      ),
      pageAnimationEnabled: false,
      rangeSelectionMode: onDayRangeSelected != null
          ? RangeSelectionMode.toggledOn
          : RangeSelectionMode.toggledOff,
      onRangeSelected: onDayRangeSelected != null
          ? (start, end, focusedDay) {
              _rangeStart.value = start;
              _rangeEnd.value = end;
              onDayRangeSelected?.call(start, end);
            }
          : null,
      selectedDayPredicate: (day) => isSameDay(_selectedDay.value, day),
      onDaySelected: onDaySelected != null
          ? (selectedDay, focusedDay) {
              _selectedDay.value = selectedDay;
              onDaySelected?.call(selectedDay);
            }
          : null,
      onPageChanged: (date) {
        log('$date');
      },
    );
  }
}
