import 'package:flutter/cupertino.dart';
import 'package:glance/core/glance_core.dart';
import 'package:glance/core/presentation/common_widgets/bottomsheet/datepicker_bottomsheet.dart';
import 'package:glance/core/utils/custom_date_format.dart';
import 'package:glance/features/create/presentation/widgets/line_painter.dart';

class EditDateWidget extends StatelessWidget {
  const EditDateWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);
    final today = DateTime.now();
    final _borderColor = theme.colors.secondary;

    return Container(
      padding: theme.spacing.asInsets().small,
      decoration: BoxDecoration(
        borderRadius: theme.radius.asBorderRadius().medium,
        border: Border.all(color: _borderColor, width: kBorderWidthButton),
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
                  CustomDateUtils.returnDateInText(today),
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
              painter: LinePainter(_borderColor),
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
                  CustomDateUtils.returnDateInText(today),
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
        percentage: 0.65,
      ),
      backgroundColor: theme.colors.accent,
      foregroundColor: theme.colors.textAccent,
      child: const DatePickerBottomsheet(),
    );
  }
}
