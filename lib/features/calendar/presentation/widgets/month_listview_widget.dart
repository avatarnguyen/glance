part of '../pages/calendar_page.dart';

class _MonthListWidget extends HookWidget {
  const _MonthListWidget({
    Key? key,
    this.monthIconPressed,
  }) : super(key: key);

  final void Function()? monthIconPressed;

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);
    final mediaQuery = MediaQuery.of(context);
    final today = DateTime.now();
    final month = CustomDateUtils.returnMonth(today);

    final _scrollController = useScrollController();

    return Container(
      width: mediaQuery.size.width,
      padding: EdgeInsets.all(theme.spacing.regular),
      child: Column(
        children: [
          AppPadding.small(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppText.title1(
                  "$month ${today.year.toString()}",
                  color: theme.colors.accent1,
                ),
                IconButton(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  visualDensity: VisualDensity.compact,
                  onPressed: monthIconPressed,
                  icon: const AppIcon.regular(
                    Icons.close,
                  ),
                ),
              ],
            ),
          ),
          const AppGap.regular(),
          Expanded(
            child: SizedBox(
              child: ListView(
                controller: _scrollController,
                children: kMonthList.map((month) {
                  final _startDay = DateTime(today.year, month, 1);
                  return AppPadding(
                    padding: const AppEdgeInsets.only(bottom: AppGapSize.regular),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppPadding.regular(
                          child: AppText.title2(
                            CustomDateUtils.returnMonth(_startDay),
                            color: theme.colors.accent4,
                          ),
                        ),
                        const AppGap.small(),
                        CalendarCellWidget(
                          startDay: _startDay,
                          endDay: _startDay.endOfMonth,
                        ),
                      ],
                    ),
                  );
                }).toList(),
              ),
            ),
          )
        ],
      ),
    );
  }
}
