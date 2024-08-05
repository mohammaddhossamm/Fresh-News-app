import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/core/shared/constants.dart';
import 'package:news_app/features/home/presentation/view/widget/sub_category_list_fun.dart';
import 'package:news_app/core/shared/app_management_cubit/app_management_cubit.dart';
import 'package:news_app/core/utils/assets.dart';
import 'package:news_app/core/utils/colors.dart';
import 'package:news_app/features/home/presentation/view/widget/sub_category_listwiew_item.dart';
import 'package:news_app/features/home/presentation/view_models/category_index_cubit/category_index_cubit.dart';
import 'package:news_app/features/home/presentation/view_models/category_index_cubit/category_index_states.dart';
import 'package:news_app/features/home/presentation/view_models/sub_category_cubit/sub_category_cubit.dart';

class SubCategoryListwiew extends StatelessWidget {
  const SubCategoryListwiew({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoryIndexCubit, CategoryIndexStates>(
      builder: (context, state) {
        var appCubit=AppManagementCubit.get(context);
        var subCategoryCubit = CategoryIndexCubit.get(context);
        var subCubit = SubCategoryCubit.get(context);
        return SizedBox(
          height: 100,
          child: ListView.builder(
            itemBuilder: (context, index) {
              return SubCategoryListViewItem(
                imagePath: AssetsData
                    .subCategoryIcons[subCategoryCubit.categoryIndex][index],
                text: subCategoryText(context)[subCategoryCubit.categoryIndex]
                    [index],
                boarderColor: subCategoryCubit.subCategoryIndex == index
                    ? AppColors.primary
                    : null,
                onPressed: () async {
                  subCategoryCubit.selectFromSubCategory(index);
                  await subCubit.getSubCategoryNews(
                    category: categoryList[subCategoryCubit.categoryIndex],
                    subCategory: index == 0
                        ? ""
                        : "qInMeta=${subCategoryText(context)[subCategoryCubit.categoryIndex][index]}",
                    language: appCubit.language,
                    context: context,
                  );
                },
                backgroundColor: appCubit.isDark
                    ? AppColors.navBarColor
                    : AppColors.grey_400,
              );
            },
            itemCount: AssetsData
                .subCategoryIcons[subCategoryCubit.categoryIndex].length,
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
          ),
        );
      },
    );
  }
}
