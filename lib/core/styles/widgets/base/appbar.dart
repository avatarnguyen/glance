import 'package:flutter/material.dart';
import 'package:glance/core/glance_core.dart';

class AppBarCustom extends StatelessWidget implements PreferredSizeWidget {
  const AppBarCustom({
    Key? key,
    this.actions,
    this.title,
    this.titleText,
    this.automaticallyImplyLeading = true,
    this.centerTitle = true,
  }) : super(key: key);

  final List<Widget>? actions;
  final String? titleText;
  final Widget? title;
  final bool automaticallyImplyLeading;
  final bool centerTitle;

  @override
  Widget build(BuildContext context) {
    final _titleWidget = titleText != null ? AppText.title1(titleText!) : null;
    return AppBar(
      backgroundColor: context.gColor.primary1,
      foregroundColor: context.gColor.secondary,
      elevation: 0.0,
      automaticallyImplyLeading: automaticallyImplyLeading,
      centerTitle: centerTitle,
      title: title ?? _titleWidget,
      actions: actions,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
