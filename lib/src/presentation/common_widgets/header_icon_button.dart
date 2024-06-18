import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sql_app/src/presentation/index.dart';

class HeaderIconButton extends StatelessWidget {
  final String svgIconPath;
  final VoidCallback onTap;

  const HeaderIconButton({
    required this.svgIconPath,
    required this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(10),
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: SqlAppColors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              blurRadius: 8,
              color: Colors.black.withOpacity(0.08),
            )
          ],
        ),
        child: SvgPicture.asset(
          svgIconPath,
          width: 24,
          height: 24,
        ),
      ),
    );
  }
}
