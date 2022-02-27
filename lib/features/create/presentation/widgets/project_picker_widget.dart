import 'package:flutter/material.dart';
import 'package:glance/core/glance_core.dart';

class ProjectPickerWidget extends StatelessWidget {
  const ProjectPickerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppFilledButton.big(
      padding: EdgeInsets.zero,
      child: const Text('Project AB'),
      onPressed: () {
        showAppBottomSheet(
          context,
          // title: 'Projects',
          child: ListView(
            children: const [
              ListTile(
                title: AppText.title4('Project AB'),
              ),
              ListTile(
                title: AppText.title4('Getting things done'),
              ),
              ListTile(
                title: AppText.title4('Project 123 ABC'),
              ),
              ListTile(
                title: AppText.title4('Project 123 ABC'),
              ),
              ListTile(
                title: AppText.title4('Project 123 ABC'),
              ),
              ListTile(
                title: AppText.title4('Project 123 ABC'),
              ),
              ListTile(
                title: AppText.title4('Project 123 ABC'),
              ),
              ListTile(
                title: AppText.title4('Project 123 ABC'),
              ),
              ListTile(
                title: AppText.title4('Project 123 ABC'),
              ),
              ListTile(
                title: AppText.title4('Project 123 ABC'),
              ),
              ListTile(
                title: AppText.title4('Project 123 ABC'),
              ),
              ListTile(
                title: AppText.title4('Project 123 ABC'),
              ),
              ListTile(
                title: AppText.title4('Project 123 ABC'),
              ),
              ListTile(
                title: AppText.title4('Project 123 ABC'),
              ),
            ],
          ),
        );
      },
    );
  }
}
