import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/core/shared/constants.dart';
import 'package:news_app/features/home/presentation/view/widget/sub_category_list_fun.dart';
import 'package:news_app/core/shared/app_management_cubit/app_management_cubit.dart';
import 'package:news_app/core/shared/widgets/custom_button.dart';
import 'package:news_app/core/utils/colors.dart';
import 'package:news_app/features/home/presentation/view_models/category_cubit/category_cubit.dart';
import 'package:news_app/features/home/presentation/view_models/category_index_cubit/category_index_cubit.dart';
import 'package:news_app/features/home/presentation/view_models/category_index_cubit/category_index_states.dart';
import 'package:news_app/features/home/presentation/view_models/sub_category_cubit/sub_category_cubit.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoryIndexCubit, CategoryIndexStates>(
      builder: (context, state) {
        var appCubit= AppManagementCubit.get(context);
        var indexCubit= CategoryIndexCubit.get(context);
        var categorycubitFromCategoryCubit = CategoryCubit.get(context);
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: SizedBox(
            height: 40,
            child: ListView.separated(
              separatorBuilder: (context, index) => const SizedBox(
                width: 8,
              ),
              itemBuilder: (context, index) {
                return CustomButton(
                  textButton: categoryText(context)[index],
                  buttonColor: indexCubit.categoryIndex == index
                      ? AppColors.primary
                      : appCubit.isDark
                          ? AppColors.navBarColor
                          : AppColors.grey_400,
                  onPressed: () async {
                    indexCubit.selectFromCategory(index);
                    categoryForCategoryCubit(
                      context,
                      categoryCubit: categorycubitFromCategoryCubit,
                      homeCubit: appCubit,
                      indexCubit: indexCubit,
                    );
                    categoryForSubCategoryCubit(
                      context,
                      homeCubit: appCubit,
                      subCategoryCubit: SubCategoryCubit.get(context),
                      indexCubit: indexCubit,
                    );
                  },
                );
              },
              itemCount: categoryText(context).length,
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              shrinkWrap: true,
            ),
          ),
        );
      },
    );
  }
}

void categoryForCategoryCubit(
  context, {
  required CategoryCubit categoryCubit,
  required AppManagementCubit homeCubit,
  required CategoryIndexCubit indexCubit
}) async {
  await categoryCubit.getCategoryImageNews(
    category: categoryList[indexCubit.categoryIndex],
    language: homeCubit.language,
    context: context,
  );
}

void categoryForSubCategoryCubit(
  context, {
  required SubCategoryCubit subCategoryCubit,
  required AppManagementCubit homeCubit,
   required CategoryIndexCubit indexCubit,
}) async {
  await subCategoryCubit.getSubCategoryNews(
    category: categoryList[indexCubit.categoryIndex],
    subCategory: '',
    language: homeCubit.language,
    context: context,
  );
}
