import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:glance/core/glance_core.dart';

class DrawerMenuWidget extends HookWidget {
  const DrawerMenuWidget({
    Key? key,
    this.onItemSelected,
  }) : super(key: key);

  final void Function(int index)? onItemSelected;

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);
    final _selectedItem = useState(0);

    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _MenuItemWidget(
            text: 'Dashboard',
            isActive: _selectedItem.value == 0,
            onItemSelected: () {
              onItemSelected?.call(0);
              _selectedItem.value = 0;
            },
          ),
          _MenuItemWidget(
            text: 'Project',
            isActive: _selectedItem.value == 1,
            onItemSelected: () {
              onItemSelected?.call(1);
              _selectedItem.value = 1;
            },
          ),
          _MenuItemWidget(
            text: 'Import',
            isActive: _selectedItem.value == 2,
            onItemSelected: () {
              onItemSelected?.call(2);
              _selectedItem.value = 2;
            },
          ),
          _MenuItemWidget(
            text: 'Setting',
            isActive: _selectedItem.value == 3,
            onItemSelected: () {
              context.pushNamed(kRouteSetting);
              // onItemSelected?.call(3);
              // _selectedItem.value = 3;
            },
          ),
        ],
      ).padding(right: theme.spacing.semiSmall),
    );
  }
}

class _MenuItemWidget extends StatelessWidget {
  const _MenuItemWidget({
    Key? key,
    required this.text,
    required this.onItemSelected,
    required this.isActive,
  }) : super(key: key);

  final void Function()? onItemSelected;
  final String text;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);

    return InkWell(
      onTap: onItemSelected,
      borderRadius: theme.radius.asBorderRadius().medium,
      child: Container(
        height: kSizeDrawerItemHeight,
        alignment: Alignment.center,
        margin: theme.spacing.asInsets().semiSmall,
        decoration: BoxDecoration(
          color: isActive ? theme.colors.primary1.withOpacity(0.1) : null,
          borderRadius: theme.radius.asBorderRadius().medium,
        ),
        child: AppText.title2(
          text,
          color: theme.colors.accent1,
        ),
      ),
    );
  }
}
