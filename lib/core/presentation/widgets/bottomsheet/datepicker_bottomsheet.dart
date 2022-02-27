import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:glance/core/glance_core.dart';
import 'package:glance/features/calendar/presentation/widgets/calendar_cell_widget.dart';
import 'package:dart_date/dart_date.dart';

class DatePickerBottomsheet extends HookWidget with UiLoggy {
  const DatePickerBottomsheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);
    final today = DateTime.now();
    final _endDay = today.setMonth(today.month + 3);
    final _selectedIndex = useState(0);

    return Column(
      children: [
        const AppGap.small(),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            const AppGap.semiBig().flexible(),
            ChoiceChip(
              padding: EdgeInsets.zero,
              label: const Text('Start'),
              labelPadding: EdgeInsets.symmetric(
                vertical: 0,
                horizontal: theme.spacing.big,
              ),
              selectedColor: theme.colors.accent2,
              side: BorderSide(color: theme.colors.accent2),
              backgroundColor: theme.colors.primary1,
              labelStyle: theme.typography.title3.copyWith(
                color: _selectedIndex.value == 0 ? theme.colors.primary1 : theme.colors.accent2,
              ),
              selected: _selectedIndex.value == 0,
              onSelected: (bool selected) {
                _selectedIndex.value = 0;
              },
            ),
            const AppGap.regular(),
            ChoiceChip(
              padding: EdgeInsets.zero,
              label: const Text('End'),
              labelPadding: EdgeInsets.symmetric(
                vertical: 0,
                horizontal: theme.spacing.big,
              ),
              selectedColor: theme.colors.accent2,
              backgroundColor: theme.colors.primary1,
              side: BorderSide(color: theme.colors.accent2),
              labelStyle: theme.typography.title3.copyWith(
                color: _selectedIndex.value == 1 ? theme.colors.primary1 : theme.colors.accent2,
              ),
              selected: _selectedIndex.value == 1,
              onSelected: (bool selected) {
                _selectedIndex.value = 1;
              },
            ),
            const AppGap.semiBig().flexible(),
            AppIconButton.regular(
              FontAwesomeIcons.times,
              color: theme.colors.accent2,
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
        CalendarCellWidget(
          headerVisible: true,
          rowHeight: 32,
          startDay: today.startOfMonth,
          endDay: _endDay.endOfMonth,
        ),
        SizedBox(
          // height: 160,
          width: screenWidthPercentage(context, percentage: 0.7),
          child: CupertinoTheme(
            data: CupertinoThemeData(
              textTheme: CupertinoTextThemeData(
                dateTimePickerTextStyle: theme.typography.title3.copyWith(
                  color: theme.colors.accent2,
                ),
              ),
            ),
            child: CupertinoDatePicker(
              use24hFormat: MediaQuery.of(context).alwaysUse24HourFormat,
              mode: CupertinoDatePickerMode.time,
              initialDateTime: DateTime.now(),
              onDateTimeChanged: onDateTimeChanged,
            ),
          ),
        ).expanded(),
      ],
    );
  }

  void onDateTimeChanged(DateTime time) {
    loggy.info(time);
  }
}
