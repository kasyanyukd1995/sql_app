import 'package:animated_toggle/animated_toggle.dart';
import 'package:flutter/material.dart';
import 'package:sql_app/src/presentation/index.dart';
import 'package:sql_app/src/shared/extensions/context_extensions.dart';

class HorizontalToggle<T> extends StatelessWidget {
  final List<T> values;
  final T? initialValue;
  final String Function(T) valueToTitle;
  final void Function(T) onValueChanged;

  const HorizontalToggle({
    required this.values,
    required this.onValueChanged,
    required this.valueToTitle,
    required this.initialValue,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final initialIndex = values.indexWhere((e) => e == initialValue);

    return LayoutBuilder(
      builder: (context, boxConstraints) {
        return AnimatedHorizontalToggle(
          taps: values.map((e) => valueToTitle(e)).toList(),
          activeBoxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.12),
              blurRadius: 8.0,
            ),
          ],
          width: boxConstraints.maxWidth,
          height: 50,
          duration: const Duration(milliseconds: 50),
          initialIndex: initialIndex,
          background: SqlAppColors.bgGrey,
          activeColor: SqlAppColors.white,
          activeTextStyle: context.textTheme.paragraphMStrong,
          inActiveTextStyle: context.textTheme.paragraphMRegular,
          horizontalPadding: 4,
          verticalPadding: 4,
          activeHorizontalPadding: 4,
          activeVerticalPadding: 4,
          radius: 16,
          activeButtonRadius: 14,
          onChange: (int currentIndex, int targetIndex) {
            onValueChanged(values[currentIndex]);
          },
          showActiveButtonColor: true,
        );
      },
    );
  }
}
