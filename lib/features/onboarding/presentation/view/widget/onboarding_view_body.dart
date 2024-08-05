import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/features/onboarding/presentation/view/widget/skip_button.dart';
import 'package:news_app/features/onboarding/presentation/view_model/onbording_cubit/onbording_cubit.dart';
import 'package:news_app/features/onboarding/presentation/view_model/onbording_cubit/onbording_states.dart';
import 'custom_floating_button.dart';
import 'custom_page_indicator.dart';
import 'custom_page_view.dart';

class OnBoardingViewBody extends StatelessWidget {
  const OnBoardingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OnbordingCubit, OnbordingStates>(
      builder: (context, state) {
        return const Padding(
          padding: EdgeInsets.all(30.0),
          child: Column(
            children: [
              Align(
                alignment: AlignmentDirectional.centerStart,
                child: SkipButton(),
              ),
              Expanded(
                child: CustomPageView(),
              ),
              SizedBox(
                height: 20,
              ),
              CustomPageIndicator(),
              SizedBox(
                height: 20,
              ),
              Align(
                alignment: AlignmentDirectional.centerEnd,
                child: CustomFloatingActionButton(),
              ),
            ],
          ),
        );
      },
    );
  }
}
