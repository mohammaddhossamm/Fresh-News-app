import 'package:flutter/material.dart';
import 'package:news_app/features/onboarding/presentation/view/widget/onboarding_item.dart';
import 'package:news_app/features/onboarding/presentation/view/widget/onboarding_list_of_models.dart';
import 'package:news_app/features/onboarding/presentation/view_model/onbording_cubit/onbording_cubit.dart';

class CustomPageView extends StatelessWidget {
  const CustomPageView({super.key});

  @override
  Widget build(BuildContext context) {
    var onBordingCubit = OnbordingCubit.get(context);
    return PageView.builder(
      controller: onBordingCubit.boardingController,
      physics: const BouncingScrollPhysics(),
      itemBuilder: (context, index) => OnBoardingViewItem(
        boardingModel: onBoardingList(
          context,
        )[index],
      ),
      itemCount: onBoardingList(
        context,
      ).length,
      onPageChanged: (index) {
        if (index ==
            onBoardingList(
                  context,
                ).length -
                1) {
          onBordingCubit.onBordingFinished(true);
        } else {
          onBordingCubit.onBordingFinished(false);
        }
      },
    );
  }
}
