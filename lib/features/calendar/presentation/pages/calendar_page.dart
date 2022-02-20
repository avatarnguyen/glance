import 'package:dart_date/dart_date.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:glance/core/glance_core.dart';
import 'package:glance/core/utils/custom_date_format.dart';
import 'package:glance/features/calendar/presentation/widgets/calendar_cell_widget.dart';

part '../widgets/month_listview_widget.dart';
part '../widgets/single_month_widget.dart';
part '../widgets/appointment_widget.dart';

const kMonthList = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

class CalendarPage extends HookWidget {
  const CalendarPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);

    final _showAllMonth = useState(false);

    void _toggleMonthSelection() {
      _showAllMonth.value = !_showAllMonth.value;
    }

    return Scaffold(
      backgroundColor: theme.colors.background,
      body: SafeArea(
        child: HookBuilder(
          builder: (context) => Stack(
            children: [
              Positioned.fill(
                child: _showAllMonth.value
                    ? _MonthListWidget(
                        monthIconPressed: _toggleMonthSelection,
                      )
                    : _SingleMonthWidget(
                        monthIconPressed: _toggleMonthSelection,
                      ),
              ),
              if (!_showAllMonth.value)
                const Positioned(
                  bottom: 0,
                  left: 0,
                  child: _AppointmentSheetWidget(),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
