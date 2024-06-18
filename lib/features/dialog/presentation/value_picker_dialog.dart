import 'package:flutter/cupertino.dart';
import 'package:gap/gap.dart';
import 'package:sql_app/src/presentation/index.dart';
import 'package:sql_app/src/shared/extensions/context_extensions.dart';

class ValuePickerDialog<T> extends StatefulWidget {
  final List<T> items;
  final String? title;
  final String Function(T item) toTitle;

  const ValuePickerDialog({
    required this.items,
    this.title,
    required this.toTitle,
    super.key,
  });

  @override
  State<ValuePickerDialog> createState() => _ValuePickerDialogState();
}

class _ValuePickerDialogState<T> extends State<ValuePickerDialog> {
  late final initIndex = widget.items.length ~/ 2;
  late T selectedValue = widget.items[initIndex];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (widget.title != null)
              Padding(
                padding: const EdgeInsets.only(
                  left: 16,
                  top: 16,
                ),
                child: Text(
                  widget.title ?? '',
                  style: context.textTheme.paragraphMStrong,
                ),
              ),
            const Gap(8),
            Expanded(
              child: CupertinoPicker.builder(
                itemExtent: 25,
                useMagnifier: true,
                offAxisFraction: 0,
                squeeze: 1,
                magnification: 2,
                scrollController: FixedExtentScrollController(initialItem: initIndex),
                backgroundColor: SqlAppColors.bgWhite,
                childCount: widget.items.length,
                onSelectedItemChanged: (index) => setState(() {
                  selectedValue = widget.items[index];
                }),
                itemBuilder: (context, index) {
                  return Text(
                    widget.toTitle(widget.items[index]),
                    style: context.textTheme.paragraphLRegular,
                  );
                },
              ),
            ),
            const Gap(8),
            SqlAppButton.primary(
              label: context.s.sendButton,
              onPressed: () => Navigator.of(context).pop(selectedValue),
            ),
          ],
        ),
      ),
    );
  }
}
