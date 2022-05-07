import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:glance/core/glance_core.dart';

class AdditionalActionWidget extends HookWidget {
  const AdditionalActionWidget({
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
