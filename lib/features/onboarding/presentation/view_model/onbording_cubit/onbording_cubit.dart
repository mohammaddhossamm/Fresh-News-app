import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/features/onboarding/presentation/view_model/onbording_cubit/onbording_states.dart';

class OnbordingCubit extends Cubit<OnbordingStates> {
  OnbordingCubit() : super(OnbordingInIt());
  PageController boardingController = PageController();
  bool isLast = false;
  static OnbordingCubit get(context) => BlocProvider.of(context);
  void onBordingFinished(bool isLast) {
    this.isLast=isLast;
    emit(ChangeOnBoardingState());
  }
}
