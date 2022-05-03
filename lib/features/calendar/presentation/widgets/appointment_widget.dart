part of '../pages/calendar_page.dart';

class _AppointmentSheetWidget extends StatelessWidget {
  const _AppointmentSheetWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);
    final mediaQuery = MediaQuery.of(context);
    final _textWidth = mediaQuery.size.width - 140;
    final today = DateTime.now();
    return Container(
      // height: mediaQuery.size.height / 1.9,
      width: mediaQuery.size.width,
      decoration: BoxDecoration(
        color: theme.colors.primary,
        borderRadius: BorderRadius.only(
          topLeft: theme.radius.big,
          topRight: theme.radius.big,
        ),
      ),
      child: AppPadding.semiBig(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppText.title1(
              CustomDateUtils.getDayTitle(today),
              color: theme.colors.primary,
            ),
            Flexible(
              child: PageView(
                physics: const ClampingScrollPhysics(),
                children: [
                  Container(
                    padding: EdgeInsets.all(theme.spacing.semiBig),
                    child: Column(
                      children: [
                        const AlldayEventWidget(),
                        TimeEventWidget(
                          color: Colors.orange,
                          time: DateTime(2022, 2, 20, 10, 30),
                          text: 'Finishing Project',
                          textWidth: _textWidth,
                          isEvent: true,
                        ),
                        TimeEventWidget(
                          color: Colors.purple,
                          time: DateTime.now(),
                          text: 'Coding Side Project',
                          textWidth: _textWidth,
                          isEvent: false,
                        ),
                      ],
                    ),
                  ),
                  // Container(
                  //   color: theme.colors.accent,
                  // )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
