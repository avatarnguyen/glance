part of '../pages/create_page.dart';

class _EditDateWidget extends StatelessWidget {
  const _EditDateWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);
    final today = DateTime.now();
    final _primaryColor = theme.colors.primary;

    return Container(
      padding: theme.spacing.asInsets().small,
      decoration: BoxDecoration(
        borderRadius: theme.radius.asBorderRadius().big,
        border: Border.all(color: _primaryColor, width: kBorderWidthButton),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CupertinoButton(
            padding: EdgeInsets.zero,
            onPressed: () {
              _handleDatePickerPressed(context);
            },
            child: Column(
              children: [
                AppText.title3(
                  CustomDateUtils.returnDateWithDay(today),
                ),
                const AppGap.small(),
                AppText.title4(
                  CustomDateUtils.returnTime(today),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 2.0,
            height: 32.0,
            child: CustomPaint(
              painter: LinePainter(_primaryColor),
            ),
          ),
          CupertinoButton(
            padding: EdgeInsets.zero,
            onPressed: () {
              _handleDatePickerPressed(context);
            },
            child: Column(
              children: [
                AppText.title3(
                  CustomDateUtils.returnDateWithDay(today),
                ),
                const AppGap.small(),
                AppText.title4(
                  CustomDateUtils.returnTime(today),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _handleDatePickerPressed(BuildContext context) {
    final theme = AppTheme.of(context);
    showAppBottomSheet(
      context,
      headerVisible: true,
      fullscreen: true,
      height: screenHeightPercentage(
        context,
        percentage: 0.75,
      ),
      backgroundColor: theme.colors.accent,
      child: const DatePickerBottomsheet(),
    );
  }
}
