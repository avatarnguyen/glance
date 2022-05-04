import 'package:dart_date/dart_date.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:glance/core/glance_core.dart';
import 'package:glance/core/utils/custom_date_format.dart';
import 'package:glance/features/calendar/domain/entity/calendar_event.dart';
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
const elements = [
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

class CalendarPage extends StatefulHookConsumerWidget {
  const CalendarPage({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _CalendarPageState();
}

class _CalendarPageState extends ConsumerState<CalendarPage> {
  final _log = logger(CalendarPage);

  @override
  void initState() {
    super.initState();
    if (mounted) {
      _getAllCalendars();
    }
  }

  Future<void> _getAllCalendars() async {
    await ref.read(calendarNotifierProvider.notifier).getCalendarEvents();
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(calendarNotifierProvider) as CalendarState;

    return Scaffold(
      backgroundColor: context.gColor.primary,
      appBar: const AppBarCustom(),
      body: state.maybeWhen(
        loading: () => const Center(child: kProgressIndicator),
        orElse: () => const SizedBox.shrink(),
        loaded: (events) {
          _log.v('Loaded Events: $events');
          var _groupEvents = events;

          return SafeArea(
            child: GroupedListView<CalendarEvent, String>(
              elements: _groupEvents,
              groupBy: (element) =>
                  element.start?.format('yMMMMd') ?? 'Undefined Start',
              sort: false,
              groupSeparatorBuilder: (String value) => AppPadding.regular(
                child: AppText.title2(value),
              ),
              // groupComparator: (value1, value2) => value1.compareTo(value2),
              itemBuilder: (ctx, element) => AppPadding.small(
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: ctx.gRadius.asBorderRadius().medium,
                  ),
                  margin:
                      EdgeInsets.symmetric(horizontal: ctx.gSpacing.semiSmall),
                  elevation: 5,
                  child: ListTile(
                    title: AppText.title4(element.title ?? 'Unplanned Events'),
                    subtitle: (element.start?.getHours == 0 &&
                            element.end?.getHours == 0)
                        ? null
                        : AppText.paragraph1(
                            "${element.start?.format('Hm') ?? ''} - ${element.end?.format('Hm') ?? ''}",
                            color: ctx.gColor.secondary,
                          ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
