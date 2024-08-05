import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/core/shared/app_management_cubit/app_management_cubit.dart';
import 'package:news_app/core/shared/constants.dart';
import 'package:news_app/core/utils/locator.dart';
import 'package:news_app/features/home/data/repo/home_repo_imp.dart';
import 'package:news_app/features/home/presentation/view_models/category_cubit/category_cubit.dart';
import 'package:news_app/features/home/presentation/view_models/category_index_cubit/category_index_cubit.dart';
import 'package:news_app/features/home/presentation/view_models/sub_category_cubit/sub_category_cubit.dart';
import 'package:news_app/features/layout/presentation/manager/layout_cubit/layout_cubit.dart';
import 'package:news_app/features/layout/presentation/manager/layout_cubit/layout_states.dart';
import 'widget/custom_nav_bar.dart';

class HomeLayout extends StatelessWidget {
  const HomeLayout({super.key});
  @override
  Widget build(BuildContext context) {
    var homeViewCubit = AppManagementCubit.get(context);
    return MultiBlocProvider( 
      providers: [
        BlocProvider(
      create: (context) => CategoryIndexCubit(),
     
    ),
        BlocProvider(
          create: (context) => LayoutCubit(),
        ),
        BlocProvider(
          create: (context) => CategoryCubit(getIt.get<HomeRepoImp>())
            ..getCategoryImageNews(
              category: categoryList[0],
              language: homeViewCubit.language,
              context: context,
            ),
        ),
        BlocProvider(
          create: (context) => SubCategoryCubit(
            getIt.get<HomeRepoImp>(),
          )..getSubCategoryNews(
              category: categoryList[0],
              subCategory: '',
              language: homeViewCubit.language,
              context: context,
            ),
        ),
      ],
      child: BlocBuilder<LayoutCubit, LayoutStates>(
        builder: (context, state) {
          var layoutCubit = LayoutCubit.get(context);
          return Scaffold(
            bottomNavigationBar: const CustomNavBar(),
            body: layoutCubit.screens[layoutCubit.currentIndex],
          );
        },
      ),
    );
  }
}
