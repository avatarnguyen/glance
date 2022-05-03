part of '../pages/calendar_page.dart';

class _SingleMonthWidget extends StatelessWidget {
  const _SingleMonthWidget({
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
    final _startday = today.setMonth(today.month - 2);
    final _endDay = today.setMonth(today.month + 5);

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
                  color: theme.colors.accent,
                ),
                IconButton(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  visualDensity: VisualDensity.compact,
                  onPressed: monthIconPressed,
                  icon: const AppIcon.regular(
                    Icons.calendar_view_month,
                  ),
                ),
              ],
            ),
          ),
          const AppGap.semiBig(),
          CalendarCellWidget(
            startDay: _startday.startOfMonth,
            endDay: _endDay.endOfMonth,
          ),
          const AppGap.semiSmall(),
        ],
      ),
    );
  }
}
