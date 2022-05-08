import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:glance/core/glance_core.dart';
import 'package:glance/features/create/presentation/logic/create_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class TitleEditFieldWidget extends HookConsumerWidget {
  const TitleEditFieldWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _textController = useTextEditingController();
    final theme = AppTheme.of(context);
    final _hintTextStyle = theme.typography.title2.copyWith(
      color: theme.colors.secondary,
    );
    const _hintText = 'New Task';

    return PlatformTextField(
      controller: _textController,
      autofocus: true,
      style: theme.typography.title2.copyWith(
        color: theme.colors.accent,
      ),
      cursorColor: theme.colors.secondary,
      minLines: 1,
      maxLines: 2,
      textAlign: TextAlign.center,
      textAlignVertical: TextAlignVertical.center,
      material: (_, __) {
        return MaterialTextFieldData(
          decoration: InputDecoration(
            hintText: _hintText,
            hintStyle: _hintTextStyle,
            border: OutlineInputBorder(
              borderSide: BorderSide(color: theme.colors.secondary),
              borderRadius: BorderRadius.circular(theme.radius.small.x),
            ),
          ),
        );
      },
      cupertino: (_, __) => CupertinoTextFieldData(
        padding: EdgeInsets.all(theme.spacing.semiSmall),
        placeholder: _hintText,
        placeholderStyle: _hintTextStyle,
        decoration: BoxDecoration(
          border: Border.all(color: theme.colors.secondary),
          borderRadius: BorderRadius.circular(theme.radius.small.x),
        ),
      ),
      onChanged: (text) {
        ref.read(createNotifierProvider.notifier).changeTitle(text);
      },
      onSubmitted: (text) {
        ref.read(createNotifierProvider.notifier).submit();
      },
    );
  }
}
