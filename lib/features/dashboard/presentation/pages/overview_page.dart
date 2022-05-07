import 'package:dartx/dartx.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:glance/core/glance_core.dart';
import 'package:glance/core/utils/custom_date_format.dart';
import 'package:glance/features/calendar/domain/entity/calendar_event.dart';
import 'package:glance/features/calendar/presentation/widgets/details/allday_event_widget.dart';
import 'package:glance/features/calendar/presentation/widgets/details/time_event_widget.dart';
import 'package:glance/features/create/presentation/logic/create_provider.dart';
import 'package:glance/features/create/presentation/widgets/create_popup_widget.dart';
import 'package:glance/features/create/presentation/widgets/create_view_expansion_animation.dart';
import 'package:glance/features/dashboard/presentation/logic/dashboard_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class OverviewPage extends StatefulHookConsumerWidget {
  const OverviewPage({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _OverviewPageState();
}

class _OverviewPageState extends ConsumerState<OverviewPage>
    with AutomaticKeepAliveClientMixin<OverviewPage> {
  final today = DateTime.now();

  @override
  Widget build(BuildContext context) {
    super.build(context);
    final theme = AppTheme.of(context);

    return Scaffold(
      key: const PageStorageKey<String>('overview_page_storage_key'),
      backgroundColor: theme.colors.primary,
      appBar: AppBarCustom(
        centerTitle: false,
        titleText: _getCurrentGreeting(today),
        actions: [
          PlatformIconButton(
            onPressed: () {
              context.push('/$kRouteCalendar');
            },
            cupertinoIcon: const Icon(CupertinoIcons.calendar),
            materialIcon: const Icon(Icons.calendar_month),
          ),
          PlatformIconButton(
            onPressed: () {
              context.push('/$kRouteSetting');
            },
            cupertinoIcon: const Icon(CupertinoIcons.settings),
            materialIcon: const Icon(Icons.settings),
          ),
        ],
      ),
      body: AppPadding(
        padding: const AppEdgeInsets.only(
          bottom: AppGapSize.big,
          top: AppGapSize.medium,
          left: AppGapSize.medium,
          right: AppGapSize.medium,
        ),
        child: Column(
          children: [
            const CreateViewExpansionAnimationWidget(),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  theme.shadow.base,
                  theme.shadow.medium,
                ],
                borderRadius: theme.radius.asBorderRadius().medium,
              ),
              width: screenWidth(context) - (2 * theme.spacing.medium),
              padding: EdgeInsets.all(theme.spacing.regular),
              child: const _DashboardCardContentWidget(),
            ).expanded(),
          ],
        ),
      ).safeArea(),
    );
  }

  String _getCurrentGreeting(DateTime date) {
    final _currentHour = date.hour;
    if (_currentHour > 11 && _currentHour < 18) {
      return 'Good Afternoon';
    } else if (_currentHour > 5 && _currentHour < 12) {
      return 'Good Morning';
    } else if (_currentHour > 17 && _currentHour < 22) {
      return 'Good Evening';
    } else {
      return 'Good Night';
    }
  }

  @override
  bool get wantKeepAlive => true;
}

class _DashboardCardContentWidget extends HookConsumerWidget {
  const _DashboardCardContentWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final today = DateTime.now();
    final theme = AppTheme.of(context);
    final _dashBoardState = ref.watch(dashboardNotifierProvider);
    return _dashBoardState.when(
      (items, allDayItems) {
        final _topPad = (260 / items.length).roundToDouble();
        debugPrint('Top Padding: $_topPad');
        return ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(top: _topPad),
          children: [
            const AppGap.medium(),
            AppText.title2(
              CustomDateUtils.returnDateInText(today),
              fontSize: 22,
              color: theme.colors.accent,
            ),
            const AppGap.large(),
            const AlldayEventWidget(),
            const AppGap.medium(),
            ...items.map((item) {
              if (item is CalendarEvent) {
                return Padding(
                  padding: EdgeInsets.symmetric(vertical: theme.spacing.small),
                  child: TimeEventWidget(
                    color: Colors.orange,
                    time: item.start!,
                    text: item.title ?? '',
                    subtitle:
                        "~ ${item.end!.difference(item.start!).inHours.toString()} h",
                    isEvent: true,
                  ),
                );
              }
              return const AppGap.small();
            }).toList(),
          ],
        );
      },
      initial: () => const SizedBox.shrink(),
      loading: () => kCenterProgressIndicator,
      error: (message) => CustomErrorWidget(message: message),
    );
  }
}
