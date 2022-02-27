import 'package:flutter/material.dart';
import 'package:glance/core/glance_core.dart';

class ProjectPickerWidget extends StatelessWidget {
  const ProjectPickerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppFilledButton.big(
      padding: EdgeInsets.zero,
      child: const Text('Project AB'),
      onPressed: () {},
    );
  }
}
