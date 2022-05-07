import 'package:flutter/material.dart';
import 'package:glance/core/glance_core.dart';

class CustomErrorWidget extends StatelessWidget {
  final String? message;

  const CustomErrorWidget({
    Key? key,
    this.message,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: context.gColor.primary,
      child: AppText.title3(message ?? 'Error'),
    );
  }
}
