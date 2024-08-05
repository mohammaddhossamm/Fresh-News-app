import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/features/explore/presentation/view/explore_view.dart';
import 'package:news_app/features/home/presentation/view/home_view.dart';
import 'package:news_app/features/layout/presentation/manager/layout_cubit/layout_states.dart';
import 'package:news_app/features/settings/presentation/view/settings_view.dart';

class LayoutCubit extends Cubit<LayoutStates> {
  LayoutCubit() : super(LayoutInItState());
  static LayoutCubit get(context) => BlocProvider.of(context);
  List<Widget> screens = const [HomeView(), ExploreView(), SettingsView()];
  int currentIndex = 0;
  
  void changeBottomNavBarIndex(int index) {
    currentIndex = index;
    emit(ChangeViewsBottomNavState());
  }
}
