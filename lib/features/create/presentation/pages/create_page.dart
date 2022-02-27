import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:glance/core/glance_core.dart';
import 'package:glance/core/utils/custom_date_format.dart';
import 'package:glance/features/create/presentation/widgets/dotted_tab_indicator.dart';
import 'package:glance/features/create/presentation/widgets/line_painter.dart';
import 'package:glance/features/create/presentation/widgets/project_picker_widget.dart';

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

    Color getOverlayColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
        MaterialState.selected,
      };
      if (states.any(interactiveStates.contains)) {
        return Platform.isIOS ? Colors.transparent : theme.colors.accent4;
      }
      return Colors.transparent;
    }

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        key: const Key('Createpage'),
        backgroundColor: theme.colors.lighBackground,
        appBar: AppBar(
          elevation: 0.0,
          automaticallyImplyLeading: false,
          backgroundColor: theme.colors.lighBackground,
          centerTitle: true,
          bottom: null,
          leading: null,
          actions: [
            CupertinoButton(
              onPressed: context.pop,
              child: AppIcon.regular(
                Icons.close,
                color: theme.colors.primary1,
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton.small(
          onPressed: () {},
          child: const AppIcon.regular(
            FontAwesomeIcons.check,
          ),
        ),
        body: Material(
          type: MaterialType.transparency,
          child: ListView(
            padding: EdgeInsets.symmetric(horizontal: theme.spacing.semiBig),
            children: [
              TabBar(
                indicatorColor: theme.colors.accent2,
                indicator: DottedTabIndicator(
                  color: theme.colors.accent2,
                  radius: 4.0,
                ),
                overlayColor: MaterialStateProperty.resolveWith(getOverlayColor),
                enableFeedback: true,
                onTap: (index) {},
                tabs: const [
                  Tab(
                    child: AppText.title3('Task'),
                  ),
                  Tab(
                    child: AppText.title3('Event'),
                  ),
                ],
              ),
              const AppGap.semiBig(),
              const ProjectPickerWidget(),
              const AppGap.semiBig(),
              const _TitleEditFieldWidget(),
              const _EditDateWidget(),
              const AppGap.large(),
              const _AdditionalActionWidget(),
              const AppGap.large(),
            ],
          ).safeArea(),
        ),
      ),
    );
  }
}
