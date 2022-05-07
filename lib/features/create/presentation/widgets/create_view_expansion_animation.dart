import 'package:dartx/dartx.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:glance/core/glance_core.dart';
import 'package:glance/features/create/presentation/logic/create_provider.dart';
import 'package:glance/features/create/presentation/widgets/create_popup_widget.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

const createViewHeight = 204.0;

class CreateViewExpansionAnimationWidget extends HookConsumerWidget {
  const CreateViewExpansionAnimationWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _placeHolderCurrentHeight = useState<double>(0.0);
    final _shouldShowCreateView = useState<bool>(false);
    ref.listen<bool>(
      openCreateViewProvider,
      (_, value) {
        if (value) {
          _placeHolderCurrentHeight.value = createViewHeight;
        } else {
          _shouldShowCreateView.value = false;
          _placeHolderCurrentHeight.value = 0.0;
        }
      },
    );
    final theme = AppTheme.of(context);
    return AnimatedContainer(
      margin: EdgeInsets.only(
        bottom: theme.spacing.medium,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          theme.shadow.base,
          theme.shadow.medium,
        ],
        borderRadius: theme.radius.asBorderRadius().medium,
      ),
      width: screenWidth(context) - (2 * theme.spacing.medium),
      height: _placeHolderCurrentHeight.value,
      padding: EdgeInsets.all(theme.spacing.regular),
      duration: 700.milliseconds,
      curve: Curves.easeInOut,
      onEnd: () {
        if (_placeHolderCurrentHeight.value >= createViewHeight) {
          _shouldShowCreateView.value = true;
        }
      },
      child: _shouldShowCreateView.value
          ? AnimatedOpacity(
              duration: 1.seconds,
              opacity: _shouldShowCreateView.value ? 1.0 : 0.5,
              child: const CreatePopUpViewWidget(),
            )
          : const SizedBox.shrink(),
    );
  }
}
