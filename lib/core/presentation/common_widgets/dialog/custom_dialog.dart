import 'package:flutter/material.dart';
import 'package:glance/core/glance_core.dart';
import 'package:glance/core/styles/widgets/buttons/base_button.dart';

typedef DialogOptionBuilder<T> = Map<String, T> Function();

/// `optionBuilder` expects a Map with String as title and T as return type
/// if optionTitle == 'Cancel' --> A textbutton will be render instead of a
/// ActionButton Widget
Future<T?> showAppDialog<T>(
  BuildContext context, {
  required String title,
  required String content,
  required DialogOptionBuilder optionBuilder,
}) {
  final options = optionBuilder();
  final theme = AppTheme.of(context);
  return showDialog<T>(
    context: context,
    builder: (context) {
      return AlertDialog(
        title: Text(
          title,
          textAlign: TextAlign.center,
        ),
        content: Text(
          content,
          textAlign: TextAlign.center,
        ),
        titleTextStyle: theme.typography.title3,
        contentTextStyle: theme.typography.paragraph1,
        shape: RoundedRectangleBorder(
          borderRadius: theme.radius.asBorderRadius().regular,
        ),
        actionsAlignment: MainAxisAlignment.center,
        actionsPadding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        actions: [
          Column(
            mainAxisSize: MainAxisSize.min,
            children: options.keys.map((optionTitle) {
              final T value = options[optionTitle];
              return optionTitle.trim() == 'Cancel'
                  ? AppButton.filled(
                      onPressed: () => Navigator.of(context).pop(value),
                      child: AppText.paragraph1(optionTitle),
                    )
                  : Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: theme.spacing.small),
                          child: AppOutlinedButton.regular(
                            onPressed: () => Navigator.of(context).pop(value),
                            data: optionTitle,
                          ).expanded(),
                        ),
                      ],
                    );
            }).toList(),
          ),
        ],
      );
    },
  );
}
