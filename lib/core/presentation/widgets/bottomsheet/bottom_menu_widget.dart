import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:glance/core/glance_core.dart';

Future<T?> showAppBottomSheet<T>(
  BuildContext context, {
  required Widget child,
  bool? fullscreen,
  bool headerVisible = true,
  Color? backgroundColor,
  Color? foregroundColor,
  String? title,
  double? height,
  Widget? leading,
}) {
  final theme = AppTheme.of(context);
  return showModalBottomSheet<T>(
    context: context,
    backgroundColor: Colors.transparent,
    barrierColor: null,
    isScrollControlled: fullscreen ?? false,
    useRootNavigator: true,
    constraints: height != null
        ? BoxConstraints(
            maxHeight: height,
          )
        : null,
    builder: (ctx) {
      return Container(
        margin: theme.spacing.asInsets().regular,
        padding: EdgeInsets.symmetric(horizontal: theme.spacing.regular),
        decoration: BoxDecoration(
          color: backgroundColor ?? theme.colors.lighBackground,
          borderRadius: theme.radius.asBorderRadius().big,
          boxShadow: [
            theme.shadow.small,
            // theme.shadowWithColor.regular,
          ],
        ),
        child: headerVisible
            ? Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      if (leading != null) leading,
                      AppText.title2(
                        title ?? '',
                        color: foregroundColor,
                      ).padding(
                        left: theme.spacing.small,
                      ),
                      AppIconButton.regular(
                        FontAwesomeIcons.times,
                        color: foregroundColor,
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    ],
                  ),
                  SizedBox(child: child).expanded(),
                ],
              )
            : child,
      );
    },
  );
}
