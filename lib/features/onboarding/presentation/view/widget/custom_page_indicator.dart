import 'package:flutter/material.dart';
import 'package:news_app/core/utils/colors.dart';
import 'package:news_app/features/onboarding/presentation/view_model/onbording_cubit/onbording_cubit.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'onboarding_list_of_models.dart';

class CustomPageIndicator extends StatelessWidget {
  const CustomPageIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
      controller: OnbordingCubit.get(context).boardingController,
      count: onBoardingList(context).length,
      effect: const ExpandingDotsEffect(
        activeDotColor: AppColors.primary,
        dotColor: AppColors.grey,
        dotHeight: 10,
        dotWidth: 10,
        expansionFactor: 3,
        spacing: 5,
      ),
    );
  }
}
