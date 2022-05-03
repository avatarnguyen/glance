part of '../pages/create_page.dart';

class _TitleEditFieldWidget extends HookWidget {
  const _TitleEditFieldWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _textController = useTextEditingController();
    final theme = AppTheme.of(context);

    return TextField(
      controller: _textController,
      autofocus: true,
      style: theme.typography.title1.copyWith(
        color: theme.colors.primary,
      ),
      cursorColor: theme.colors.accent,
      minLines: 2,
      maxLines: 3,
      textAlign: TextAlign.center,
      textAlignVertical: TextAlignVertical.center,
      decoration: InputDecoration(
        hintText: 'New Task',
        hintStyle: theme.typography.title1.copyWith(
          color: theme.colors.accent,
        ),
        border: InputBorder.none,
      ),
      onChanged: (text) {},
    );
  }
}
