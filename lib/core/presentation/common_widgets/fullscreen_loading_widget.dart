import 'package:flutter/material.dart';
import 'package:glance/core/glance_core.dart';

class FullScreenLoadingWidget extends StatelessWidget {
  const FullScreenLoadingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: context.gColor.secondary,
      child: const Center(
        child: kProgressIndicator,
      ),
    );
  }
}
