part of '../pages/create_page.dart';

class _AdditionalActionWidget extends HookWidget {
  const _AdditionalActionWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);
    final _color = theme.colors.primary;
    final _flagColor = useState(_color);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AppIcon.regular(
          FontAwesomeIcons.solidFlag,
          color: _flagColor.value,
        ).onTapGestures(
          () {
            _flagColor.value = theme.colors.accent;
          },
        ),
        const AppGap.big(),
        AppIcon.regular(
          FontAwesomeIcons.hashtag,
          color: _color,
        ).onTapGestures(
          () {},
        ),
        const AppGap.big(),
        AppIcon.regular(
          FontAwesomeIcons.solidStickyNote,
          color: _color,
        ).onTapGestures(
          () {},
        ),
        const AppGap.big(),
        AppIcon.regular(
          FontAwesomeIcons.plus,
          color: _color,
        ).onTapGestures(
          () {},
        ),
      ],
    );
  }
}
