import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:news_app/core/shared/constants.dart';
import 'package:news_app/core/shared/settings_services.dart';
import 'package:news_app/core/utils/app_routes.dart';
import 'package:news_app/core/utils/colors.dart';
import 'package:news_app/features/onboarding/presentation/view_model/onbording_cubit/onbording_cubit.dart';

class CustomFloatingActionButton extends StatelessWidget {
  const CustomFloatingActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: AppColors.primary,
      onPressed: () {
        if (OnbordingCubit.get(context).isLast) {
          SettingsService.saveSettings(key: isOnBordingFinishedKey, value: true)
              .then(
            (value) => GoRouter.of(context).go(AppRouter.homeLayout),
          );
        } else {
          OnbordingCubit.get(context).boardingController.nextPage(
            duration: const Duration(milliseconds: 700),
            curve: Curves.fastEaseInToSlowEaseOut, 
          );
        }
      },
      child: const Icon(
        Icons.chevron_right,
        color: Colors.white,
      ),
    );
  }
}
