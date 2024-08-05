import 'package:flutter/material.dart';
import 'package:news_app/core/utils/colors.dart';
import 'package:news_app/core/utils/styles.dart';
import 'package:news_app/generated/l10n.dart';

class CustomImageError extends StatelessWidget {
  const CustomImageError({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          S.of(context).errorImage,
          style: Styles.textStyleBold12,
        ),
        const SizedBox(
          height: 10,
        ),
        const Icon(
          Icons.error,
          color: AppColors.primary,
        ),
      ],
    );
  }
}
