import 'package:flutter/cupertino.dart';
import 'package:glance/core/glance_core.dart';
import 'package:glance/core/styles/widgets/buttons/base_button.dart';

class AppTextButton extends StatelessWidget {
  const AppTextButton({
    Key? key,
    required this.onPressed,
    required this.data,
    required this.size,
    this.color,
    this.padding,
  }) : super(key: key);

  const AppTextButton.small({
    Key? key,
    required this.onPressed,
    required this.data,
    this.color,
    this.padding,
  })  : size = ButtonSize.small,
        super(key: key);

  const AppTextButton.regular({
    Key? key,
    required this.onPressed,
    required this.data,
    this.color,
    this.padding,
  })  : size = ButtonSize.regular,
        super(key: key);

  const AppTextButton.big({
    Key? key,
    required this.onPressed,
    required this.data,
    this.color,
    this.padding,
  })  : size = ButtonSize.big,
        super(key: key);

  final void Function() onPressed;
  final String data;
  final Color? color;
  final ButtonSize size;
  final EdgeInsets? padding;

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);
    final _color = color ?? theme.colors.primary;
    final textstyle = () {
      switch (size) {
        case ButtonSize.small:
          return theme.typography.paragraph1;
        case ButtonSize.regular:
          return theme.typography.title4;
        case ButtonSize.big:
          return theme.typography.title3;
        default:
          return theme.typography.paragraph1;
      }
    }();

    return CupertinoButton(
      padding: padding ?? EdgeInsets.zero,
      child: Text(
        data,
        style: textstyle.copyWith(color: _color),
      ),
      onPressed: onPressed,
    );
  }
}
