import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:news_app/core/utils/colors.dart';
import 'package:news_app/core/utils/styles.dart';
import 'package:news_app/generated/l10n.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          splashColor: AppColors.primary,
          onPressed: () {
            GoRouter.of(context).pop();
          },
          icon: const Icon(
            Icons.clear_rounded,
          ),
        ),
        const SizedBox(
          width: 20,
        ),
        Text(
          S.of(context).aboutUs,
          style: Styles.textStyleBold16,
        ),
      ],
    );
  }
}
