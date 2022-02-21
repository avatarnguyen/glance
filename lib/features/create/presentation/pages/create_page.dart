import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:glance/core/glance_core.dart';
import 'package:glance/core/utils/custom_date_format.dart';
import 'package:glance/features/create/presentation/widgets/line_painter.dart';

part '../widgets/edit_date_widget.dart';
part '../widgets/title_editfield_widget.dart';
part '../widgets/additional_action_widget.dart';
part '../widgets/project_selection_widget.dart';
part '../widgets/type_edit_widget.dart';

const kCreateHeroTag = "create_page_hero";

class CreatePage extends StatelessWidget {
  const CreatePage({Key? key}) : super(key: key);

  static String heroTag() => kCreateHeroTag;

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);

    return CupertinoPageScaffold(
      key: const Key('Createpage'),
      backgroundColor: theme.colors.lighBackground,
      navigationBar: CupertinoNavigationBar(
        border: null,
        leading: null,
        automaticallyImplyLeading: false,
        backgroundColor: theme.colors.lighBackground,
        trailing: CupertinoButton(
          onPressed: context.pop,
          child: AppIcon.regular(
            Icons.close,
            color: theme.colors.primary1,
          ),
        ),
      ),
      child: Material(
        type: MaterialType.transparency,
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: theme.spacing.semiBig),
          children: [
            const AppGap.big(),
            const _TitleEditFieldWidget(),
            const AppGap.big(),
            const _EditDateWidget(),
            const AppGap.semiBig(),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                const _ProjectSelectionWidget().expanded(),
                const AppGap.regular(),
                const _TypeEditWidget().expanded(),
              ],
            ),
            const AppGap.massive(),
            const _AdditionalActionWidget(),
            const AppGap.large(),
          ],
        ).safeArea(),
      ),
    );
  }
}
