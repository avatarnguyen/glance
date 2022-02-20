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

    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        height: mediaQuery.size.height / 2,
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
                    color: theme.colors.primary1,
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
            const AppGap.regular(),
            const CalendarCellWidget(),
          ],
        ),
      ),
    );
  }
}
