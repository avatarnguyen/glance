part of '../pages/create_page.dart';

class _EditDateWidget extends StatelessWidget {
  const _EditDateWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);
    final today = DateTime.now();
    final _primaryColor = theme.colors.primary1;

    return Container(
      padding: theme.spacing.asInsets().semiSmall,
      decoration: BoxDecoration(
        borderRadius: theme.radius.asBorderRadius().big,
        border: Border.all(color: _primaryColor),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
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
          SizedBox(
            width: 2.0,
            height: 32.0,
            child: CustomPaint(
              painter: LinePainter(_primaryColor),
            ),
          ),
          Column(
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
        ],
      ),
    );
  }
}
