import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:news_app/core/shared/constants.dart';
import 'package:news_app/core/shared/settings_services.dart';
import 'package:news_app/core/utils/app_routes.dart';
import 'package:news_app/core/utils/assets.dart';
import 'package:news_app/core/utils/colors.dart';
import 'package:news_app/core/utils/styles.dart';
import 'package:news_app/generated/l10n.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    super.initState();
    delayAndRoute();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            AssetsData.logo,
            height: 120,
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            S.of(context).slogan,
            style: Styles.textStyleBold14,
          ),
          const SizedBox(
            height: 10,
          ),
          LoadingAnimationWidget.fourRotatingDots(
            color: AppColors.primary,
            size: 35,
          )
        ],
      ),
    );
  }

  void delayAndRoute() {
    Future.delayed(
      const Duration(seconds: 2),
    ).then(
      (value) =>
          SettingsService.isOnBordingFinished(key: isOnBordingFinishedKey)
              ? GoRouter.of(context).go(AppRouter.homeLayout)
              : GoRouter.of(context).go(AppRouter.onBoardingView),
    );
  }
}
