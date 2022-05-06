import 'package:flutter/material.dart';
import 'package:glance/core/glance_core.dart';

class AppBarCustom extends StatelessWidget implements PreferredSizeWidget {
  const AppBarCustom({
    Key? key,
    this.actions,
    this.leading,
    this.titleText,
    this.automaticallyImplyLeading = true,
    this.centerTitle = true,
  }) : super(key: key);

  final List<Widget>? actions;
  final String? titleText;
  final Widget? leading;
  final bool automaticallyImplyLeading;
  final bool centerTitle;

  @override
  Widget build(BuildContext context) {
    final _titleWidget = titleText != null
        ? AppText.title1(
            titleText!,
            fontSize: 26,
            maxLines: 1,
          )
        : null;
    return PlatformAppBar(
      automaticallyImplyLeading: automaticallyImplyLeading,
      trailingActions: actions,
      material: (_, __) => MaterialAppBarData(
        title: _titleWidget,
        backgroundColor: context.gColor.primary,
        foregroundColor: context.gColor.secondary,
        centerTitle: centerTitle,
        elevation: 0.0,
      ),
      cupertino: (_, __) => CupertinoNavigationBarData(
        title: _titleWidget != null
            ? Padding(
                padding: EdgeInsets.only(top: centerTitle ? 0.0 : 8.0),
                child: centerTitle
                    ? _titleWidget
                    : Row(
                        children: [_titleWidget.flexible()],
                      ),
              )
            : null,
        backgroundColor: context.gColor.primary.withAlpha(254),
        border: const Border(bottom: BorderSide.none),
        leading: leading != null
            ? Align(
                widthFactor: 1.0,
                alignment: Alignment.center,
                child: leading,
              )
            : null,
        automaticallyImplyMiddle: centerTitle,
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
