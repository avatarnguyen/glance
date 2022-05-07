import 'package:flutter/material.dart';
import 'package:glance/core/glance_core.dart';
import 'package:glance/features/create/presentation/widgets/edit_date_widget.dart';
import 'package:glance/features/create/presentation/widgets/project_picker_widget.dart';
import 'package:glance/features/create/presentation/widgets/title_editfield_widget.dart';
import 'package:glance/features/create/presentation/widgets/type_edit_widget.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CreatePopUpViewWidget extends ConsumerWidget {
  const CreatePopUpViewWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = AppTheme.of(context);
    return AppPadding(
      padding: const AppEdgeInsets.only(
        bottom: AppGapSize.medium,
      ),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            theme.shadow.base,
            theme.shadow.medium,
          ],
          borderRadius: theme.radius.asBorderRadius().medium,
        ),
        width: screenWidth(context) - (2 * theme.spacing.medium),
        // height: 160,
        padding: EdgeInsets.all(theme.spacing.regular),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const AppGap.small(),
            Row(
              children: [
                const TypeEditWidget().expanded(),
                const AppGap.regular(),
                const ProjectPickerWidget().expanded(),
              ],
            ),
            const AppGap.regular(),
            const TitleEditFieldWidget(),
            const AppGap.medium(),
            Row(
              children: [
                const EditDateWidget().expanded(),
              ],
            ),
          ],
        ),
      ),
    ).safeArea();
  }
}
