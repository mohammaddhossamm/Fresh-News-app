import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/core/shared/app_management_cubit/app_management_cubit.dart';
import 'package:news_app/core/shared/constants.dart';
import 'package:news_app/core/shared/widgets/custom_loading_indecator.dart';
import 'package:news_app/core/shared/widgets/custom_server_error_widget.dart';
import 'package:news_app/core/utils/colors.dart';
import 'package:news_app/features/home/presentation/view/widget/lastes_news_listview_item.dart';
import 'package:news_app/features/home/presentation/view/widget/sub_category_list_fun.dart';
import 'package:news_app/features/home/presentation/view/widget/when_empty_list.dart';
import 'package:news_app/features/home/presentation/view_models/category_cubit/category_cubit.dart';
import 'package:news_app/features/home/presentation/view_models/category_index_cubit/category_index_cubit.dart';
import 'package:news_app/features/home/presentation/view_models/sub_category_cubit/sub_category_cubit.dart';
import 'package:news_app/features/home/presentation/view_models/sub_category_cubit/sub_category_state.dart';
import 'package:news_app/generated/l10n.dart';

class LastesNewsListview extends StatelessWidget {
  const LastesNewsListview({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SubCategoryCubit, SubCategoryState>(
        builder: (context, state) {
      var categoryCubit = CategoryCubit.get(context);
      var managementCubit = AppManagementCubit.get(context);
      var indexCubit = CategoryIndexCubit.get(context);
      var subCategory = SubCategoryCubit.get(context);
      if (state is SubCategorySuccessState) {
        if (state.news[0].results!.isEmpty) {
          return   WhenEmptyList(text:S.of(context).homeListEmpty);
        } else {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: ListView.separated(
              itemBuilder: (context, index) {
                return LastesNewsListviewItem(
                  index: index,
                  newsModel: state.news[0],
                );
              },
              separatorBuilder: (context, index) => const SizedBox(
                height: 10,
              ),
              itemCount: state.news[0].results?.length ?? 0,
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
            ),
          );
        }
      } else if (state is SubCategoryErrorState) {
        return Column(
          children: [
            CustomServerErrorWidget(errorMessage: state.error),
            IconButton(
              onPressed: () {
                categoryCubit.getCategoryImageNews(
                  category: categoryList[indexCubit.categoryIndex],
                  language: managementCubit.language,
                  context: context,
                );
                subCategory.getSubCategoryNews(
                  category: categoryList[indexCubit.categoryIndex],
                  subCategory: indexCubit.subCategoryIndex == 0
                      ? ""
                      : "qInMeta=${subCategoryText(context)[indexCubit.categoryIndex][indexCubit.subCategoryIndex]}",
                  language: managementCubit.language,
                  context: context,
                );
              },
              icon: const Icon(Icons.refresh_rounded),
              color: AppColors.primary,
            ),
          ],
        );
      } else {
        return const CustomLoadingIndecator();
      }
    });
  }
}
