part of '../pages/calendar_page.dart';

class _AppointmentSheetWidget extends StatelessWidget {
  const _AppointmentSheetWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);
    final mediaQuery = MediaQuery.of(context);
    return Container(
      height: mediaQuery.size.height / 1.9,
      width: mediaQuery.size.width,
      decoration: BoxDecoration(
        color: theme.colors.lighBackground,
        borderRadius: BorderRadius.only(
          topLeft: theme.radius.big,
          topRight: theme.radius.big,
        ),
      ),
    );
  }
}
