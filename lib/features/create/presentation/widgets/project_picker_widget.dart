import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:glance/core/glance_core.dart';
import 'package:glance/features/calendar/presentation/widgets/details/dot_painter.dart';

class ProjectPickerWidget extends StatelessWidget {
  const ProjectPickerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);
    return AppFilledButton.big(
      padding: EdgeInsets.zero,
      child: const Text('Project AB'),
      onPressed: () {
        showAppBottomSheet(
          context,
          fullscreen: true,
          height: screenHeightPercentage(
            context,
            percentage: 0.75,
          ),
          backgroundColor: theme.colors.accent,
          foregroundColor: theme.colors.accent,
          title: 'Projects',
          leading: AppIconButton.semiSmall(
            FontAwesomeIcons.plus,
            color: theme.colors.accent,
            onPressed: () {},
          ),
          child: Material(
            borderOnForeground: false,
            color: Colors.transparent,
            shape: RoundedRectangleBorder(
              borderRadius: theme.radius.asBorderRadius().big,
            ),
            child: const _ProjectListWidget(),
          ),
        );
      },
    );
  }
}

class _ProjectListWidget extends HookWidget {
  const _ProjectListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _selectedIndex = useState(0);
    final theme = AppTheme.of(context);
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return buildListTile(
          theme,
          index: index,
          selectedIndex: _selectedIndex,
          text: 'Getting things done',
        );
      },
    );
  }

  ListTile buildListTile(
    AppThemeData theme, {
    required ValueNotifier<int> selectedIndex,
    required String text,
    required int index,
  }) {
    return ListTile(
      dense: false,
      selectedTileColor: theme.colors.primary.withOpacity(0.4),
      selected: selectedIndex.value == index,
      shape: RoundedRectangleBorder(
        borderRadius: theme.radius.asBorderRadius().big,
      ),
      onTap: () {
        selectedIndex.value = index;
      },
      title: Row(
        children: [
          const AppGap.regular(),
          CustomPaint(
            painter: DotPainter(Colors.blue, radius: 8.0),
          ),
          const AppGap.semiBig(),
          AppText.title4(
            text,
            color: theme.colors.accent,
          ),
        ],
      ),
    );
  }
}
