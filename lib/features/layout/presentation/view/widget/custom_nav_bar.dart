import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:news_app/core/shared/app_management_cubit/app_management_cubit.dart';
import 'package:news_app/core/shared/app_management_cubit/app_management_states.dart';
import 'package:news_app/core/utils/colors.dart';
import 'package:news_app/features/layout/presentation/manager/layout_cubit/layout_cubit.dart';
import 'package:news_app/features/layout/presentation/manager/layout_cubit/layout_states.dart';
import 'package:news_app/generated/l10n.dart';

class CustomNavBar extends StatelessWidget {
  const CustomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    var customNavBarCubit = AppManagementCubit.get(context);
    return BlocBuilder<AppManagementCubit, AppManagementStates>(
      builder: (context, state) {
        
         return BlocBuilder<LayoutCubit, LayoutStates>(
      builder: (context, state) {
        var layoutCubit=LayoutCubit.get(context);
        return Container(
          decoration: BoxDecoration(
            color: 
                customNavBarCubit.isDark ? AppColors.navBarColor : Colors.white,
            boxShadow: [
              BoxShadow(
                blurRadius: 20,
                color: Colors.black.withOpacity(0.1),
              )
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: GNav(
              activeColor: Colors.white,
              tabBackgroundColor: AppColors.primary,
              padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 12),
              duration: const Duration(milliseconds: 400),
              gap: 7,
              tabs: [
                GButton(
                  icon: Icons.home_rounded,
                  text: S.of(context).discoverNavBar,
                ),
                GButton(
                  icon: Icons.search_rounded,
                  text: S.of(context).exploreNavBar,
                ),
                GButton(
                  icon: Icons.settings_rounded,
                  text: S.of(context).settingsTitle,
                ),
              ],
              onTabChange: (value) {
                layoutCubit.changeBottomNavBarIndex(value);
              },
              selectedIndex: layoutCubit.currentIndex,
            ),
          ),
        );
      },
    );},);
  }
}
