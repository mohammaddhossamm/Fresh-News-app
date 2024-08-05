import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/features/onboarding/presentation/view_model/onbording_cubit/onbording_cubit.dart';

import 'widget/onboarding_view_body.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => OnbordingCubit(),
      child: const Scaffold(
        body: OnBoardingViewBody(),
      ),
    );
  }
}
