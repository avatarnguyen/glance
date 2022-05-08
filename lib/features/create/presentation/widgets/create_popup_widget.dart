import 'package:flutter/material.dart';
import 'package:glance/core/glance_core.dart';
import 'package:glance/features/create/presentation/widgets/edit_date_widget.dart';
import 'package:glance/features/create/presentation/widgets/project_picker_widget.dart';
import 'package:glance/features/create/presentation/widgets/title_editfield_widget.dart';
import 'package:glance/features/create/presentation/widgets/type_edit_widget.dart';

class CreatePopUpViewWidget extends StatelessWidget {
  const CreatePopUpViewWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final theme = AppTheme.of(context);
    return Column(
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
    ).safeArea();
  }
}
