import 'package:dart_date/dart_date.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:glance/core/glance_core.dart';
import 'package:glance/core/utils/custom_date_format.dart';
import 'package:glance/features/calendar/presentation/logic/calendar_provider.dart';
import 'package:glance/features/calendar/presentation/logic/calendar_state.dart';
import 'package:glance/features/calendar/presentation/widgets/calendar_cell_widget.dart';
import 'package:glance/features/calendar/presentation/widgets/details/allday_event_widget.dart';
import 'package:glance/features/calendar/presentation/widgets/details/time_event_widget.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part '../widgets/month_listview_widget.dart';
part '../widgets/single_month_widget.dart';
part '../widgets/appointment_widget.dart';

const kMonthList = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

class CalendarPage extends StatefulHookConsumerWidget {
  const CalendarPage({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _CalendarPageState();
}

class _CalendarPageState extends ConsumerState<CalendarPage> {
  final _elements = [
    {'name': 'John', 'group': "2022.03.14"},
    {'name': 'Test 1', 'group': "2022.03.14"},
    {'name': 'This is a test', 'group': "2022.03.14"},
    {'name': 'Test 2', 'group': "2022.03.14"},
    {'name': 'John', 'group': "2022.03.15"},
    {'name': 'Random Test', 'group': "2022.03.15"},
    {'name': 'John', 'group': "2022.03.15"},
    {'name': 'Miranda', 'group': "2022.03.16"},
    {'name': 'Miranda', 'group': "2022.03.16"},
    {'name': 'Miranda', 'group': "2022.03.16"},
    {'name': 'Mike', 'group': "2022.03.17"},
    {'name': 'Mike', 'group': "2022.03.17"},
    {'name': 'Test', 'group': "2022.03.17"},
    {'name': 'Danny', 'group': "2022.03.17"},
    {'name': 'Mike', 'group': "2022.03.18"},
    {'name': 'Mike', 'group': "2022.03.18"},
    {'name': 'Mike', 'group': "2022.03.18"},
    {'name': 'Test', 'group': "2022.03.19"},
    {'name': 'Danny', 'group': "2022.03.19"},
  ];

  @override
  void initState() {
    super.initState();
    _getAllCalendars();
  }

  Future<void> _getAllCalendars() async {
    await ref.read(calendarNotifierProvider.notifier).getCalendars();
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(calendarNotifierProvider) as CalendarState;
    state.maybeWhen(
      orElse: () {
        print('State not loaded');
      },
      loaded: (calendars) {
        print('Fetched Calendars: $calendars');
      },
    );
    return Scaffold(
      backgroundColor: context.gColor.primary,
      appBar: const AppBarCustom(),
      body: SafeArea(
        child: GroupedListView<dynamic, String>(
          elements: _elements,
          groupBy: (element) => element['group'],
          groupComparator: (value1, value2) => value2.compareTo(value1),
          order: GroupedListOrder.DESC,
          groupSeparatorBuilder: (String value) => AppPadding.regular(
            child: AppText.title2(value),
          ),
          itemComparator: (item1, item2) =>
              item1['name'].compareTo(item2['name']),
          itemBuilder: (ctx, element) => AppPadding.small(
            child: Card(
              elevation: 5,
              child: ListTile(
                title: AppText.title4(
                  element['name'],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
