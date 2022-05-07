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
  return showPlatformModalSheet<T>(
    context: context,
    material: MaterialModalSheetData(
      backgroundColor: Colors.transparent,
      barrierColor: null,
      isScrollControlled: fullscreen ?? false,
      useRootNavigator: true,
      constraints: height != null
          ? BoxConstraints(
              maxHeight: height,
            )
          : null,
    ),
    cupertino: CupertinoModalSheetData(
      useRootNavigator: true,
    ),
    builder: (ctx) {
      return Container(
        margin: EdgeInsets.symmetric(
          horizontal: theme.spacing.regular,
          vertical: theme.spacing.semiBig,
        ),
        padding: EdgeInsets.symmetric(horizontal: theme.spacing.regular),
        constraints: height != null
            ? BoxConstraints(
                maxHeight: height,
              )
            : null,
        decoration: BoxDecoration(
          color: backgroundColor ?? theme.colors.primary,
          borderRadius: theme.radius.asBorderRadius().big,
          boxShadow: [
            theme.shadow.base,
            theme.shadow.small,
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
                        FontAwesomeIcons.xmark,
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
