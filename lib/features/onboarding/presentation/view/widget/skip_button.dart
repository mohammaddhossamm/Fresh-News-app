import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:news_app/core/shared/constants.dart';
import 'package:news_app/core/shared/settings_services.dart';
import 'package:news_app/core/utils/app_routes.dart';
import 'package:news_app/core/utils/colors.dart';
import 'package:news_app/core/utils/styles.dart';
import 'package:news_app/generated/l10n.dart';

class SkipButton extends StatelessWidget {
  const SkipButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        SettingsService.saveSettings(key: isOnBordingFinishedKey, value: true)
            .then(
          (value) => GoRouter.of(context).go(AppRouter.homeLayout),
        );
      },
      style: TextButton.styleFrom(
        shape: const StadiumBorder(), 
        foregroundColor: AppColors.primary,
      ),
      child: Text(
        S.of(context).skip,
        style: Styles.textStyleBold14.copyWith(
          color: AppColors.primary,
        ),
      ),
    );
  }
}
