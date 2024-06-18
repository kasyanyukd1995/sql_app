import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:sql_app/src/presentation/index.dart';
import 'package:sql_app/src/shared/extensions/context_extensions.dart';

class TariffTile extends StatelessWidget {
  final String primaryText;
  final String secondaryText;
  final String? additionalText;
  final String? markLabel;
  final bool isSelected;
  final VoidCallback onTap;

  const TariffTile({
    required this.isSelected,
    required this.onTap,
    required this.primaryText,
    required this.secondaryText,
    this.additionalText,
    this.markLabel,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(16),
      child: Stack(
        children: [
          Container(
            padding: const EdgeInsets.all(16),
            foregroundDecoration: BoxDecoration(
              border: isSelected ? Border.all(color: SqlAppColors.main, width: 2) : null,
              borderRadius: BorderRadius.circular(16),
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: SqlAppColors.bgGrey,
            ),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      if (primaryText.isNotEmpty)
                        Text(
                          primaryText,
                          style: context.textTheme.paragraphMRegular,
                        ),
                      const Gap(2),
                      RichText(
                        text: TextSpan(
                          children: [
                            if (secondaryText.isNotEmpty)
                              TextSpan(
                                text: secondaryText,
                                style: context.textTheme.paragraphLStrong,
                              ),
                            if (additionalText != null)
                              TextSpan(
                                text: ' $additionalText',
                                style: context.textTheme.paragraphMRegular,
                              ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                if (isSelected) ...[
                  const Gap(6),
                  Container(
                    height: 18,
                    width: 18,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: SqlAppColors.main,
                      ),
                    ),
                    child: Container(
                      height: 10,
                      width: 10,
                      decoration: const BoxDecoration(
                        color: SqlAppColors.main,
                        shape: BoxShape.circle,
                      ),
                    ),
                  )
                ] else
                  const Gap(24),
              ],
            ),
          ),
          if (markLabel != null && markLabel?.isNotEmpty == true)
            Positioned(
              right: 0,
              child: Container(
                height: 22,
                padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 12),
                decoration: const BoxDecoration(
                  color: SqlAppColors.accent,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(16),
                    bottomLeft: Radius.circular(16),
                  ),
                ),
                child: Text(
                  markLabel!,
                  style: context.textTheme.paragraphSStrong.copyWith(
                    color: SqlAppColors.bgWhite,
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
